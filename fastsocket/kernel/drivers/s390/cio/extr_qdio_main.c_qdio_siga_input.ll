; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_siga_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_siga_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@QDIO_SIGA_READ = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"siga-r:%1d\00", align 1
@siga_read = common dso_local global i32 0, align 4
@QDIO_SIGA_QEBSM_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%4x SIGA-R:%2d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*)* @qdio_siga_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_siga_input(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %6 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %7 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* @QDIO_SIGA_READ, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @DBF_INFO, align 4
  %14 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %15 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %18 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @DBF_DEV_EVENT(i32 %13, %struct.TYPE_2__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %22 = load i32, i32* @siga_read, align 4
  %23 = call i32 @qperf_inc(%struct.qdio_q* %21, i32 %22)
  %24 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %25 = call i64 @is_qebsm(%struct.qdio_q* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %29 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  %33 = load i32, i32* @QDIO_SIGA_QEBSM_FLAG, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %1
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %39 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @do_siga_input(i64 %37, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %47 = call i32 @SCH_NO(%struct.qdio_q* %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %36
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @do_siga_input(i64, i32, i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, i32) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
