; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_handle_aob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_qdio_handle_aob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qaob = type { i64, i64 }
%struct.qeth_qdio_out_buffer = type { i32, i32*, i32 }

@QETH_QDIO_BUF_PRIMED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_IN_CQ = common dso_local global i32 0, align 4
@TX_NOTIFY_OK = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_PENDING = common dso_local global i64 0, align 8
@TX_NOTIFY_DELAYED_OK = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"aorc%02X\00", align 1
@QETH_QDIO_BUF_HANDLED_DELAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, i64)* @qeth_qdio_handle_aob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_qdio_handle_aob(%struct.qeth_card* %0, i64 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qaob*, align 8
  %6 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @phys_to_virt(i64 %8)
  %10 = inttoptr i64 %9 to %struct.qaob*
  store %struct.qaob* %10, %struct.qaob** %5, align 8
  %11 = load %struct.qaob*, %struct.qaob** %5, align 8
  %12 = getelementptr inbounds %struct.qaob, %struct.qaob* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.qeth_qdio_out_buffer*
  store %struct.qeth_qdio_out_buffer* %14, %struct.qeth_qdio_out_buffer** %6, align 8
  %15 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %16 = icmp eq %struct.qeth_qdio_out_buffer* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %19, i32 0, i32 2
  %21 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %22 = load i32, i32* @QETH_QDIO_BUF_IN_CQ, align 4
  %23 = call i64 @atomic_cmpxchg(i32* %20, i64 %21, i32 %22)
  %24 = load i64, i64* @QETH_QDIO_BUF_PRIMED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @TX_NOTIFY_OK, align 4
  store i32 %27, i32* %7, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %29, i32 0, i32 2
  %31 = call i64 @atomic_read(i32* %30)
  %32 = load i64, i64* @QETH_QDIO_BUF_PENDING, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %36, i32 0, i32 2
  %38 = load i32, i32* @QETH_QDIO_BUF_IN_CQ, align 4
  %39 = call i32 @atomic_set(i32* %37, i32 %38)
  %40 = load i32, i32* @TX_NOTIFY_DELAYED_OK, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %28, %26
  %42 = load %struct.qaob*, %struct.qaob** %5, align 8
  %43 = getelementptr inbounds %struct.qaob, %struct.qaob* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* @TRACE, align 4
  %48 = load %struct.qaob*, %struct.qaob** %5, align 8
  %49 = getelementptr inbounds %struct.qaob, %struct.qaob* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @QETH_DBF_TEXT_(i32 %47, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load %struct.qaob*, %struct.qaob** %5, align 8
  %53 = getelementptr inbounds %struct.qaob, %struct.qaob* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @qeth_compute_cq_notification(i64 %54, i32 1)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %46, %41
  %57 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @qeth_notify_skbs(i32 %59, %struct.qeth_qdio_out_buffer* %60, i32 %61)
  %63 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %69 = load i32, i32* @QETH_QDIO_BUF_HANDLED_DELAYED, align 4
  %70 = call i32 @qeth_clear_output_buffer(i32 %67, %struct.qeth_qdio_out_buffer* %68, i32 %69)
  %71 = load %struct.qaob*, %struct.qaob** %5, align 8
  %72 = call i32 @qdio_release_aob(%struct.qaob* %71)
  ret void
}

declare dso_local i64 @phys_to_virt(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i64) #1

declare dso_local i32 @qeth_compute_cq_notification(i64, i32) #1

declare dso_local i32 @qeth_notify_skbs(i32, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @qeth_clear_output_buffer(i32, %struct.qeth_qdio_out_buffer*, i32) #1

declare dso_local i32 @qdio_release_aob(%struct.qaob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
