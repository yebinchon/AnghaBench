; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_switch_to_nonpacking_if_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_switch_to_nonpacking_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i64, %struct.qeth_qdio_out_buffer**, i64, %struct.TYPE_6__*, i32 }
%struct.qeth_qdio_out_buffer = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@QETH_LOW_WATERMARK_PACK = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pack->np\00", align 1
@QETH_QDIO_BUF_EMPTY = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_PRIMED = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_q*)* @qeth_switch_to_nonpacking_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q* %0) #0 {
  %2 = alloca %struct.qeth_qdio_out_q*, align 8
  %3 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %6 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %72

9:                                                ; preds = %1
  %10 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %11 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %10, i32 0, i32 4
  %12 = call i64 @atomic_read(i32* %11)
  %13 = load i64, i64* @QETH_LOW_WATERMARK_PACK, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %9
  %16 = load i32, i32* @TRACE, align 4
  %17 = call i32 @QETH_DBF_TEXT(i32 %16, i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %19 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %18, i32 0, i32 3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %27 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %25, %15
  %34 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %35 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %37 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %36, i32 0, i32 1
  %38 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %37, align 8
  %39 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %40 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %38, i64 %41
  %43 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %42, align 8
  store %struct.qeth_qdio_out_buffer* %43, %struct.qeth_qdio_out_buffer** %3, align 8
  %44 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %44, i32 0, i32 1
  %46 = call i64 @atomic_read(i32* %45)
  %47 = load i64, i64* @QETH_QDIO_BUF_EMPTY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %33
  %50 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %3, align 8
  %56 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %55, i32 0, i32 1
  %57 = load i32, i32* @QETH_QDIO_BUF_PRIMED, align 4
  %58 = call i32 @atomic_set(i32* %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %62 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  %65 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %66 = sext i32 %65 to i64
  %67 = urem i64 %64, %66
  %68 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %69 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %54, %49, %33
  br label %71

71:                                               ; preds = %70, %9
  br label %72

72:                                               ; preds = %71, %1
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
