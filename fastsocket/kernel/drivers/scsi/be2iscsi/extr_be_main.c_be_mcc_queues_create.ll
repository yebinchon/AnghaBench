; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, %struct.be_ctrl_info, i64 }
%struct.be_ctrl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.hwi_context_memory = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MCC_CQ_LEN = common dso_local global i32 0, align 4
@MCC_Q_LEN = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*, %struct.hwi_context_memory*)* @be_mcc_queues_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_queues_create(%struct.beiscsi_hba* %0, %struct.hwi_context_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.hwi_context_memory*, align 8
  %6 = alloca %struct.be_queue_info*, align 8
  %7 = alloca %struct.be_queue_info*, align 8
  %8 = alloca %struct.be_ctrl_info*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.hwi_context_memory* %1, %struct.hwi_context_memory** %5, align 8
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 1
  store %struct.be_ctrl_info* %10, %struct.be_ctrl_info** %8, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.be_queue_info* %14, %struct.be_queue_info** %7, align 8
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %16 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %17 = load i32, i32* @MCC_CQ_LEN, align 4
  %18 = call i64 @be_queue_alloc(%struct.beiscsi_hba* %15, %struct.be_queue_info* %16, i32 %17, i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %85

21:                                               ; preds = %2
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %28 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %29 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %30 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i64 @beiscsi_cmd_cq_create(%struct.be_ctrl_info* %27, %struct.be_queue_info* %28, i32* %36, i32 0, i32 1, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %81

40:                                               ; preds = %26
  br label %53

41:                                               ; preds = %21
  %42 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %43 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %44 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %45 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i64 @beiscsi_cmd_cq_create(%struct.be_ctrl_info* %42, %struct.be_queue_info* %43, i32* %48, i32 0, i32 1, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %81

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %55 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.be_queue_info* %57, %struct.be_queue_info** %6, align 8
  %58 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %59 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %60 = load i32, i32* @MCC_Q_LEN, align 4
  %61 = call i64 @be_queue_alloc(%struct.beiscsi_hba* %58, %struct.be_queue_info* %59, i32 %60, i32 4)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %76

64:                                               ; preds = %53
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %66 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %67 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %68 = call i64 @beiscsi_cmd_mccq_create(%struct.beiscsi_hba* %65, %struct.be_queue_info* %66, %struct.be_queue_info* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %72

71:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %88

72:                                               ; preds = %70
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %74 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %75 = call i32 @be_queue_free(%struct.beiscsi_hba* %73, %struct.be_queue_info* %74)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %78 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %79 = load i32, i32* @QTYPE_CQ, align 4
  %80 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %77, %struct.be_queue_info* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %51, %39
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %83 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %84 = call i32 @be_queue_free(%struct.beiscsi_hba* %82, %struct.be_queue_info* %83)
  br label %85

85:                                               ; preds = %81, %20
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %71
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @be_queue_alloc(%struct.beiscsi_hba*, %struct.be_queue_info*, i32, i32) #1

declare dso_local i64 @beiscsi_cmd_cq_create(%struct.be_ctrl_info*, %struct.be_queue_info*, i32*, i32, i32, i32) #1

declare dso_local i64 @beiscsi_cmd_mccq_create(%struct.beiscsi_hba*, %struct.be_queue_info*, %struct.be_queue_info*) #1

declare dso_local i32 @be_queue_free(%struct.beiscsi_hba*, %struct.be_queue_info*) #1

declare dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info*, %struct.be_queue_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
