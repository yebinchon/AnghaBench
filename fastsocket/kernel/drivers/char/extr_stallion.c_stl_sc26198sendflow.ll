; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198sendflow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198sendflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"stl_sc26198sendflow(portp=%p,state=%x)\0A\00", align 1
@brd_lock = common dso_local global i32 0, align 4
@MR0 = common dso_local global i32 0, align 4
@MR0_SWFRXTX = common dso_local global i8 0, align 1
@SCCR = common dso_local global i32 0, align 4
@CR_TXSENDXON = common dso_local global i8 0, align 1
@MR0_SWFRX = common dso_local global i8 0, align 1
@CR_TXSENDXOFF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32)* @stl_sc26198sendflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198sendflow(%struct.stlport* %0, i32 %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.stlport*, %struct.stlport** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.stlport* %8, i32 %9)
  %11 = load %struct.stlport*, %struct.stlport** %3, align 8
  %12 = icmp eq %struct.stlport* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %113

14:                                               ; preds = %2
  %15 = load %struct.stlport*, %struct.stlport** %3, align 8
  %16 = getelementptr inbounds %struct.stlport, %struct.stlport* %15, i32 0, i32 3
  %17 = call %struct.tty_struct* @tty_port_tty_get(i32* %16)
  store %struct.tty_struct* %17, %struct.tty_struct** %5, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = icmp eq %struct.tty_struct* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %113

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %22)
  %24 = load %struct.stlport*, %struct.stlport** %3, align 8
  %25 = getelementptr inbounds %struct.stlport, %struct.stlport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.stlport*, %struct.stlport** %3, align 8
  %28 = getelementptr inbounds %struct.stlport, %struct.stlport* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BRDENABLE(i32 %26, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %21
  %34 = load %struct.stlport*, %struct.stlport** %3, align 8
  %35 = load i32, i32* @MR0, align 4
  %36 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %34, i32 %35)
  store i8 %36, i8* %7, align 1
  %37 = load %struct.stlport*, %struct.stlport** %3, align 8
  %38 = load i32, i32* @MR0, align 4
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @MR0_SWFRXTX, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  %45 = trunc i32 %44 to i8
  %46 = call i32 @stl_sc26198setreg(%struct.stlport* %37, i32 %38, i8 zeroext %45)
  %47 = load %struct.stlport*, %struct.stlport** %3, align 8
  %48 = load i32, i32* @SCCR, align 4
  %49 = load i8, i8* @CR_TXSENDXON, align 1
  %50 = call i32 @stl_sc26198setreg(%struct.stlport* %47, i32 %48, i8 zeroext %49)
  %51 = load i8, i8* @MR0_SWFRX, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  %57 = load %struct.stlport*, %struct.stlport** %3, align 8
  %58 = getelementptr inbounds %struct.stlport, %struct.stlport* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.stlport*, %struct.stlport** %3, align 8
  %63 = call i32 @stl_sc26198wait(%struct.stlport* %62)
  %64 = load %struct.stlport*, %struct.stlport** %3, align 8
  %65 = load i32, i32* @MR0, align 4
  %66 = load i8, i8* %7, align 1
  %67 = call i32 @stl_sc26198setreg(%struct.stlport* %64, i32 %65, i8 zeroext %66)
  br label %104

68:                                               ; preds = %21
  %69 = load %struct.stlport*, %struct.stlport** %3, align 8
  %70 = load i32, i32* @MR0, align 4
  %71 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %69, i32 %70)
  store i8 %71, i8* %7, align 1
  %72 = load %struct.stlport*, %struct.stlport** %3, align 8
  %73 = load i32, i32* @MR0, align 4
  %74 = load i8, i8* %7, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @MR0_SWFRXTX, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, -1
  %79 = and i32 %75, %78
  %80 = trunc i32 %79 to i8
  %81 = call i32 @stl_sc26198setreg(%struct.stlport* %72, i32 %73, i8 zeroext %80)
  %82 = load %struct.stlport*, %struct.stlport** %3, align 8
  %83 = load i32, i32* @SCCR, align 4
  %84 = load i8, i8* @CR_TXSENDXOFF, align 1
  %85 = call i32 @stl_sc26198setreg(%struct.stlport* %82, i32 %83, i8 zeroext %84)
  %86 = load i8, i8* @MR0_SWFRX, align 1
  %87 = zext i8 %86 to i32
  %88 = xor i32 %87, -1
  %89 = load i8, i8* %7, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, %88
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %7, align 1
  %93 = load %struct.stlport*, %struct.stlport** %3, align 8
  %94 = getelementptr inbounds %struct.stlport, %struct.stlport* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.stlport*, %struct.stlport** %3, align 8
  %99 = call i32 @stl_sc26198wait(%struct.stlport* %98)
  %100 = load %struct.stlport*, %struct.stlport** %3, align 8
  %101 = load i32, i32* @MR0, align 4
  %102 = load i8, i8* %7, align 1
  %103 = call i32 @stl_sc26198setreg(%struct.stlport* %100, i32 %101, i8 zeroext %102)
  br label %104

104:                                              ; preds = %68, %33
  %105 = load %struct.stlport*, %struct.stlport** %3, align 8
  %106 = getelementptr inbounds %struct.stlport, %struct.stlport* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BRDDISABLE(i32 %107)
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %109)
  %111 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %112 = call i32 @tty_kref_put(%struct.tty_struct* %111)
  br label %113

113:                                              ; preds = %104, %20, %13
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @stl_sc26198wait(%struct.stlport*) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
