; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_siga_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_siga_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@QDIO_SIGA_SYNC = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"siga-s:%1d\00", align 1
@siga_sync = common dso_local global i32 0, align 4
@QDIO_SIGA_QEBSM_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x SIGA-S:%2d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i32)* @qdio_siga_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_siga_sync(%struct.qdio_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qdio_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %12 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = bitcast i32* %14 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @QDIO_SIGA_SYNC, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %19 = call i32 @need_siga_sync(%struct.qdio_q* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

22:                                               ; preds = %3
  %23 = load i32, i32* @DBF_INFO, align 4
  %24 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %25 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DBF_DEV_EVENT(i32 %23, %struct.TYPE_2__* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %32 = load i32, i32* @siga_sync, align 4
  %33 = call i32 @qperf_inc(%struct.qdio_q* %31, i32 %32)
  %34 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %35 = call i64 @is_qebsm(%struct.qdio_q* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %22
  %38 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %39 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* @QDIO_SIGA_QEBSM_FLAG, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %37, %22
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @do_siga_sync(i64 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %56 = call i32 @SCH_NO(%struct.qdio_q* %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @do_siga_sync(i64, i32, i32, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, i32) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
