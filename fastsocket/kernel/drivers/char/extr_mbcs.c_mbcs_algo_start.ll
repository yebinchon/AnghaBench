; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_algo_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_algo_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbcs_soft = type { i32, i32, i8*, %struct.algoblock }
%struct.algoblock = type { i32, i32, i32, i32, i32 }
%union.cm_control = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@MBCS_CM_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbcs_soft*)* @mbcs_algo_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbcs_algo_start(%struct.mbcs_soft* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbcs_soft*, align 8
  %4 = alloca %struct.algoblock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.cm_control, align 4
  store %struct.mbcs_soft* %0, %struct.mbcs_soft** %3, align 8
  %7 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %8 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %7, i32 0, i32 3
  store %struct.algoblock* %8, %struct.algoblock** %4, align 8
  %9 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %10 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %13 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ERESTARTSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  %20 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %21 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %20, i32 0, i32 1
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.algoblock*, %struct.algoblock** %4, align 8
  %25 = getelementptr inbounds %struct.algoblock, %struct.algoblock* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.algoblock*, %struct.algoblock** %4, align 8
  %28 = getelementptr inbounds %struct.algoblock, %struct.algoblock* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.algoblock*, %struct.algoblock** %4, align 8
  %31 = getelementptr inbounds %struct.algoblock, %struct.algoblock* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.algoblock*, %struct.algoblock** %4, align 8
  %34 = getelementptr inbounds %struct.algoblock, %struct.algoblock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.algoblock*, %struct.algoblock** %4, align 8
  %37 = getelementptr inbounds %struct.algoblock, %struct.algoblock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mbcs_algo_set(i8* %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %42 = call i32 @MBCS_MMR_GET(i8* %40, i32 %41)
  %43 = bitcast %union.cm_control* %6 to i32*
  store i32 %42, i32* %43, align 4
  %44 = bitcast %union.cm_control* %6 to i32*
  store i32 1, i32* %44, align 4
  %45 = bitcast %union.cm_control* %6 to i32*
  store i32 1, i32* %45, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %48 = bitcast %union.cm_control* %6 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MBCS_MMR_SET(i8* %46, i32 %47, i32 %49)
  %51 = load %struct.mbcs_soft*, %struct.mbcs_soft** %3, align 8
  %52 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %19, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mbcs_algo_set(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MBCS_MMR_GET(i8*, i32) #1

declare dso_local i32 @MBCS_MMR_SET(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
