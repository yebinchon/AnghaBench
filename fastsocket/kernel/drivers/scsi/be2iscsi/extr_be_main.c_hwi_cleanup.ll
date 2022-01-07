; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i64, %struct.TYPE_3__, %struct.hwi_controller*, %struct.be_ctrl_info }
%struct.TYPE_3__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.hwi_async_pdu_context*, %struct.TYPE_4__*, %struct.be_queue_info*, %struct.be_queue_info, %struct.be_queue_info, %struct.be_queue_info* }
%struct.hwi_async_pdu_context = type { %struct.be_queue_info* }
%struct.TYPE_4__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i64 }
%struct.be_ctrl_info = type { i32 }

@QTYPE_WRBQ = common dso_local global i32 0, align 4
@QTYPE_DPDUQ = common dso_local global i32 0, align 4
@QTYPE_SGL = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@QTYPE_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @hwi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_cleanup(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.hwi_controller*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca %struct.hwi_async_pdu_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 4
  store %struct.be_ctrl_info* %11, %struct.be_ctrl_info** %4, align 8
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 3
  %14 = load %struct.hwi_controller*, %struct.hwi_controller** %13, align 8
  store %struct.hwi_controller* %14, %struct.hwi_controller** %5, align 8
  %15 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %16 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %15, i32 0, i32 0
  %17 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %16, align 8
  store %struct.hwi_context_memory* %17, %struct.hwi_context_memory** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %42, %1
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %21 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %27 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %26, i32 0, i32 5
  %28 = load %struct.be_queue_info*, %struct.be_queue_info** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %28, i64 %30
  store %struct.be_queue_info* %31, %struct.be_queue_info** %3, align 8
  %32 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %33 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %38 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %39 = load i32, i32* @QTYPE_WRBQ, align 4
  %40 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %37, %struct.be_queue_info* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %47 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %46, i32 0, i32 5
  %48 = load %struct.be_queue_info*, %struct.be_queue_info** %47, align 8
  %49 = call i32 @kfree(%struct.be_queue_info* %48)
  %50 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %51 = call i32 @free_wrb_handles(%struct.beiscsi_hba* %50)
  %52 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %53 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %52, i32 0, i32 4
  store %struct.be_queue_info* %53, %struct.be_queue_info** %3, align 8
  %54 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %55 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %60 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %61 = load i32, i32* @QTYPE_DPDUQ, align 4
  %62 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %59, %struct.be_queue_info* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %45
  %64 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %65 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %64, i32 0, i32 3
  store %struct.be_queue_info* %65, %struct.be_queue_info** %3, align 8
  %66 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %67 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %72 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %73 = load i32, i32* @QTYPE_DPDUQ, align 4
  %74 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %71, %struct.be_queue_info* %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %77 = load i32, i32* @QTYPE_SGL, align 4
  %78 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %76, %struct.be_queue_info* null, i32 %77)
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %102, %75
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %82 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %87 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %86, i32 0, i32 2
  %88 = load %struct.be_queue_info*, %struct.be_queue_info** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %88, i64 %90
  store %struct.be_queue_info* %91, %struct.be_queue_info** %3, align 8
  %92 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %93 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %85
  %97 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %98 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %99 = load i32, i32* @QTYPE_CQ, align 4
  %100 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %97, %struct.be_queue_info* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %79

105:                                              ; preds = %79
  %106 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %107 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %112

111:                                              ; preds = %105
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %110
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %139, %112
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %116 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %113
  %122 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %123 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store %struct.be_queue_info* %128, %struct.be_queue_info** %3, align 8
  %129 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %130 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %135 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %136 = load i32, i32* @QTYPE_EQ, align 4
  %137 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %134, %struct.be_queue_info* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %121
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %113

142:                                              ; preds = %113
  %143 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %144 = call i32 @be_mcc_queues_destroy(%struct.beiscsi_hba* %143)
  %145 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %146 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %145, i32 0, i32 0
  %147 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %146, align 8
  %148 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %147, i32 0, i32 0
  %149 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %148, align 8
  store %struct.hwi_async_pdu_context* %149, %struct.hwi_async_pdu_context** %7, align 8
  %150 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %7, align 8
  %151 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %150, i32 0, i32 0
  %152 = load %struct.be_queue_info*, %struct.be_queue_info** %151, align 8
  %153 = call i32 @kfree(%struct.be_queue_info* %152)
  %154 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %155 = call i32 @be_cmd_fw_uninit(%struct.be_ctrl_info* %154)
  ret void
}

declare dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info*, %struct.be_queue_info*, i32) #1

declare dso_local i32 @kfree(%struct.be_queue_info*) #1

declare dso_local i32 @free_wrb_handles(%struct.beiscsi_hba*) #1

declare dso_local i32 @be_mcc_queues_destroy(%struct.beiscsi_hba*) #1

declare dso_local i32 @be_cmd_fw_uninit(%struct.be_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
