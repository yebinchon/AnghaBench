; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_process_mcc_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_process_mcc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.be_queue_info }
%struct.TYPE_4__ = type { i32 }
%struct.be_queue_info = type { i32 }
%struct.be_mcc_compl = type { i32 }
%struct.be_async_event_link_state = type { i32 }

@CQE_FLAGS_VALID_MASK = common dso_local global i32 0, align 4
@CQE_FLAGS_ASYNC_MASK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BM_%d :  Unsupported Async Event, flags = 0x%08x\0A\00", align 1
@CQE_FLAGS_COMPLETED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_process_mcc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_process_mcc_isr(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_mcc_compl*, align 8
  %5 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %7 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store %struct.be_queue_info* %9, %struct.be_queue_info** %3, align 8
  %10 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %11 = call %struct.be_mcc_compl* @queue_tail_node(%struct.be_queue_info* %10)
  store %struct.be_mcc_compl* %11, %struct.be_mcc_compl** %4, align 8
  %12 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %13 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le32_to_cpu(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %18 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %82, %1
  %20 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %21 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CQE_FLAGS_VALID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp uge i32 %27, 32
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %31 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %32 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @hwi_ring_cq_db(%struct.beiscsi_hba* %30, i32 %33, i32 %34, i32 0, i32 0)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %38 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CQE_FLAGS_ASYNC_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %45 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @is_link_state_evt(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %51 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %52 = bitcast %struct.be_mcc_compl* %51 to %struct.be_async_event_link_state*
  %53 = call i32 @beiscsi_async_link_state_process(%struct.beiscsi_hba* %50, %struct.be_async_event_link_state* %52)
  br label %62

54:                                               ; preds = %43
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %58 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %59 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @beiscsi_log(%struct.beiscsi_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %49
  br label %82

63:                                               ; preds = %36
  %64 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %65 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CQE_FLAGS_COMPLETED_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %72 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %71, i32 0, i32 0
  %73 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %74 = call i32 @be_mcc_compl_process_isr(%struct.TYPE_6__* %72, %struct.be_mcc_compl* %73)
  %75 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %76 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @atomic_dec(i32* %79)
  br label %81

81:                                               ; preds = %70, %63
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %84 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %86 = call i32 @queue_tail_inc(%struct.be_queue_info* %85)
  %87 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %88 = call %struct.be_mcc_compl* @queue_tail_node(%struct.be_queue_info* %87)
  store %struct.be_mcc_compl* %88, %struct.be_mcc_compl** %4, align 8
  %89 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %90 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @le32_to_cpu(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.be_mcc_compl*, %struct.be_mcc_compl** %4, align 8
  %95 = getelementptr inbounds %struct.be_mcc_compl, %struct.be_mcc_compl* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %19

98:                                               ; preds = %19
  %99 = load i32, i32* %5, align 4
  %100 = icmp ugt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %103 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %104 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @hwi_ring_cq_db(%struct.beiscsi_hba* %102, i32 %105, i32 %106, i32 1, i32 0)
  br label %108

108:                                              ; preds = %101, %98
  ret void
}

declare dso_local %struct.be_mcc_compl* @queue_tail_node(%struct.be_queue_info*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @hwi_ring_cq_db(%struct.beiscsi_hba*, i32, i32, i32, i32) #1

declare dso_local i64 @is_link_state_evt(i32) #1

declare dso_local i32 @beiscsi_async_link_state_process(%struct.beiscsi_hba*, %struct.be_async_event_link_state*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @be_mcc_compl_process_isr(%struct.TYPE_6__*, %struct.be_mcc_compl*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @queue_tail_inc(%struct.be_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
