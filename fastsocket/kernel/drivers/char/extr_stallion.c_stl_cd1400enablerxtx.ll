; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400enablerxtx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400enablerxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"stl_cd1400enablerxtx(portp=%p,rx=%d,tx=%d)\0A\00", align 1
@CCR_TXDISABLE = common dso_local global i8 0, align 1
@CCR_TXENABLE = common dso_local global i8 0, align 1
@CCR_RXDISABLE = common dso_local global i8 0, align 1
@CCR_RXENABLE = common dso_local global i8 0, align 1
@brd_lock = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, i32, i32)* @stl_cd1400enablerxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400enablerxtx(%struct.stlport* %0, i32 %1, i32 %2) #0 {
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
  store i8 0, i8* %7, align 1
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i8, i8* @CCR_TXDISABLE, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8, i8* @CCR_TXENABLE, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %7, align 1
  br label %32

32:                                               ; preds = %25, %22
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8, i8* @CCR_RXDISABLE, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %7, align 1
  br label %54

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i8, i8* @CCR_RXENABLE, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %7, align 1
  br label %53

53:                                               ; preds = %46, %43
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %55)
  %57 = load %struct.stlport*, %struct.stlport** %4, align 8
  %58 = getelementptr inbounds %struct.stlport, %struct.stlport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.stlport*, %struct.stlport** %4, align 8
  %61 = getelementptr inbounds %struct.stlport, %struct.stlport* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @BRDENABLE(i32 %59, i32 %62)
  %64 = load %struct.stlport*, %struct.stlport** %4, align 8
  %65 = load i32, i32* @CAR, align 4
  %66 = load %struct.stlport*, %struct.stlport** %4, align 8
  %67 = getelementptr inbounds %struct.stlport, %struct.stlport* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 3
  %70 = trunc i32 %69 to i8
  %71 = call i32 @stl_cd1400setreg(%struct.stlport* %64, i32 %65, i8 zeroext %70)
  %72 = load %struct.stlport*, %struct.stlport** %4, align 8
  %73 = call i32 @stl_cd1400ccrwait(%struct.stlport* %72)
  %74 = load %struct.stlport*, %struct.stlport** %4, align 8
  %75 = load i32, i32* @CCR, align 4
  %76 = load i8, i8* %7, align 1
  %77 = call i32 @stl_cd1400setreg(%struct.stlport* %74, i32 %75, i8 zeroext %76)
  %78 = load %struct.stlport*, %struct.stlport** %4, align 8
  %79 = call i32 @stl_cd1400ccrwait(%struct.stlport* %78)
  %80 = load %struct.stlport*, %struct.stlport** %4, align 8
  %81 = getelementptr inbounds %struct.stlport, %struct.stlport* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BRDDISABLE(i32 %82)
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %84)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.stlport*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i32, i32) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @stl_cd1400ccrwait(%struct.stlport*) #1

declare dso_local i32 @BRDDISABLE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
