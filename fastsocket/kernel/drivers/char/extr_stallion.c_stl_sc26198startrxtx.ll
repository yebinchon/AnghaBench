; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198startrxtx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198startrxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i8, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"stl_sc26198startrxtx(portp=%p,rx=%d,tx=%d)\0A\00", align 1
@IR_TXRDY = common dso_local global i8 0, align 1
@IR_RXRDY = common dso_local global i8 0, align 1
@IR_RXBREAK = common dso_local global i8 0, align 1
@IR_RXWATCHDOG = common dso_local global i8 0, align 1
@brd_lock = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@ASYI_TXBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32, i32)* @stl_sc26198startrxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198startrxtx(%struct.stlport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stlport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store %struct.stlport* %0, %struct.stlport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stlport*, %struct.stlport** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.stlport* %9, i32 %10, i32 %11)
  %13 = load %struct.stlport*, %struct.stlport** %4, align 8
  %14 = getelementptr inbounds %struct.stlport, %struct.stlport* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 4
  store i8 %15, i8* %7, align 1
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i8, i8* @IR_TXRDY, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  br label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8, i8* @IR_TXRDY, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %7, align 1
  br label %36

36:                                               ; preds = %29, %26
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i8, i8* @IR_RXRDY, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @IR_RXBREAK, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = load i8, i8* @IR_RXWATCHDOG, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %45, %47
  %49 = xor i32 %48, -1
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  br label %71

54:                                               ; preds = %37
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i8, i8* @IR_RXRDY, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @IR_RXBREAK, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %59, %61
  %63 = load i8, i8* @IR_RXWATCHDOG, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %7, align 1
  br label %70

70:                                               ; preds = %57, %54
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %72)
  %74 = load %struct.stlport*, %struct.stlport** %4, align 8
  %75 = getelementptr inbounds %struct.stlport, %struct.stlport* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.stlport*, %struct.stlport** %4, align 8
  %78 = getelementptr inbounds %struct.stlport, %struct.stlport* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BRDENABLE(i32 %76, i32 %79)
  %81 = load %struct.stlport*, %struct.stlport** %4, align 8
  %82 = load i32, i32* @IMR, align 4
  %83 = load i8, i8* %7, align 1
  %84 = call i32 @stl_sc26198setreg(%struct.stlport* %81, i32 %82, i8 zeroext %83)
  %85 = load %struct.stlport*, %struct.stlport** %4, align 8
  %86 = getelementptr inbounds %struct.stlport, %struct.stlport* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BRDDISABLE(i32 %87)
  %89 = load i8, i8* %7, align 1
  %90 = load %struct.stlport*, %struct.stlport** %4, align 8
  %91 = getelementptr inbounds %struct.stlport, %struct.stlport* %90, i32 0, i32 0
  store i8 %89, i8* %91, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %71
  %95 = load i32, i32* @ASYI_TXBUSY, align 4
  %96 = load %struct.stlport*, %struct.stlport** %4, align 8
  %97 = getelementptr inbounds %struct.stlport, %struct.stlport* %96, i32 0, i32 1
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %94, %71
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %100)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
