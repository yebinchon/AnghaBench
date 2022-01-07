; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_process_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_process_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32 }
%struct.ehca_eqe = type { i32 }
%struct.ehca_cq = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"eqe_value=%llx\00", align 1
@EQE_COMPLETION_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Got completion event\00", align 1
@EQE_CQ_TOKEN = common dso_local global i32 0, align 4
@ehca_cq_idr_lock = common dso_local global i32 0, align 4
@ehca_cq_idr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid eqe for non-existing cq token=%x\00", align 1
@ehca_scaling_code = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Got non completion event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_shca*, %struct.ehca_eqe*)* @process_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_eqe(%struct.ehca_shca* %0, %struct.ehca_eqe* %1) #0 {
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca %struct.ehca_eqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ehca_cq*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store %struct.ehca_eqe* %1, %struct.ehca_eqe** %4, align 8
  %8 = load %struct.ehca_eqe*, %struct.ehca_eqe** %4, align 8
  %9 = getelementptr inbounds %struct.ehca_eqe, %struct.ehca_eqe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %12 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EQE_COMPLETION_EVENT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @EHCA_BMASK_GET(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %2
  %20 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %21 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EQE_CQ_TOKEN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @EHCA_BMASK_GET(i32 %23, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = call i32 @read_lock(i32* @ehca_cq_idr_lock)
  %27 = load i64, i64* %6, align 8
  %28 = call %struct.ehca_cq* @idr_find(i32* @ehca_cq_idr, i64 %27)
  store %struct.ehca_cq* %28, %struct.ehca_cq** %7, align 8
  %29 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %30 = icmp ne %struct.ehca_cq* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %33 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %32, i32 0, i32 1
  %34 = call i32 @atomic_inc(i32* %33)
  br label %35

35:                                               ; preds = %31, %19
  %36 = call i32 @read_unlock(i32* @ehca_cq_idr_lock)
  %37 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %38 = icmp eq %struct.ehca_cq* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %41 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @ehca_err(i32* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  br label %72

44:                                               ; preds = %35
  %45 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %46 = call i32 @reset_eq_pending(%struct.ehca_cq* %45)
  %47 = load i64, i64* @ehca_scaling_code, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %51 = call i32 @queue_comp_task(%struct.ehca_cq* %50)
  br label %64

52:                                               ; preds = %44
  %53 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %54 = call i32 @comp_event_callback(%struct.ehca_cq* %53)
  %55 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %56 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %55, i32 0, i32 1
  %57 = call i64 @atomic_dec_and_test(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.ehca_cq*, %struct.ehca_cq** %7, align 8
  %61 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %60, i32 0, i32 0
  %62 = call i32 @wake_up(i32* %61)
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %49
  br label %72

65:                                               ; preds = %2
  %66 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %67 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @ehca_dbg(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.ehca_shca*, %struct.ehca_shca** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @parse_identifier(%struct.ehca_shca* %69, i32 %70)
  br label %72

72:                                               ; preds = %39, %65, %64
  ret void
}

declare dso_local i32 @ehca_dbg(i32*, i8*, ...) #1

declare dso_local i64 @EHCA_BMASK_GET(i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ehca_cq* @idr_find(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @ehca_err(i32*, i8*, i64) #1

declare dso_local i32 @reset_eq_pending(%struct.ehca_cq*) #1

declare dso_local i32 @queue_comp_task(%struct.ehca_cq*) #1

declare dso_local i32 @comp_event_callback(%struct.ehca_cq*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @parse_identifier(%struct.ehca_shca*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
