; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198enablerxtx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198enablerxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i8, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"stl_sc26198enablerxtx(portp=%p,rx=%d,tx=%d)\0A\00", align 1
@CR_TXENABLE = common dso_local global i8 0, align 1
@CR_RXENABLE = common dso_local global i8 0, align 1
@brd_lock = common dso_local global i32 0, align 4
@SCCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32, i32)* @stl_sc26198enablerxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198enablerxtx(%struct.stlport* %0, i32 %1, i32 %2) #0 {
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
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.stlport* %9, i32 %10, i32 %11)
  %13 = load %struct.stlport*, %struct.stlport** %4, align 8
  %14 = getelementptr inbounds %struct.stlport, %struct.stlport* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 4
  store i8 %15, i8* %7, align 1
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i8, i8* @CR_TXENABLE, align 1
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
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8, i8* @CR_TXENABLE, align 1
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
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i8, i8* @CR_RXENABLE, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, -1
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  br label %59

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8, i8* @CR_RXENABLE, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, %53
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %7, align 1
  br label %58

58:                                               ; preds = %51, %48
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %60)
  %62 = load %struct.stlport*, %struct.stlport** %4, align 8
  %63 = getelementptr inbounds %struct.stlport, %struct.stlport* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.stlport*, %struct.stlport** %4, align 8
  %66 = getelementptr inbounds %struct.stlport, %struct.stlport* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BRDENABLE(i32 %64, i32 %67)
  %69 = load %struct.stlport*, %struct.stlport** %4, align 8
  %70 = load i32, i32* @SCCR, align 4
  %71 = load i8, i8* %7, align 1
  %72 = call i32 @stl_sc26198setreg(%struct.stlport* %69, i32 %70, i8 zeroext %71)
  %73 = load %struct.stlport*, %struct.stlport** %4, align 8
  %74 = getelementptr inbounds %struct.stlport, %struct.stlport* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @BRDDISABLE(i32 %75)
  %77 = load i8, i8* %7, align 1
  %78 = load %struct.stlport*, %struct.stlport** %4, align 8
  %79 = getelementptr inbounds %struct.stlport, %struct.stlport* %78, i32 0, i32 0
  store i8 %77, i8* %79, align 4
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %80)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
