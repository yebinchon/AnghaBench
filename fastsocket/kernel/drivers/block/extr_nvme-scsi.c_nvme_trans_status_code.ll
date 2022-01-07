; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_status_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_status_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@MEDIUM_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_TASK_ABORTED = common dso_local global i32 0, align 4
@ABORTED_COMMAND = common dso_local global i32 0, align 4
@SCSI_ASC_WARNING = common dso_local global i32 0, align 4
@SCSI_ASCQ_POWER_LOSS_EXPECTED = common dso_local global i32 0, align 4
@HARDWARE_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_INTERNAL_TARGET_FAILURE = common dso_local global i32 0, align 4
@SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_LUN_ID = common dso_local global i32 0, align 4
@SCSI_ASC_ILLEGAL_BLOCK = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_LUN_NOT_READY = common dso_local global i32 0, align 4
@SCSI_ASC_FORMAT_COMMAND_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_FORMAT_COMMAND_FAILED = common dso_local global i32 0, align 4
@SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT = common dso_local global i32 0, align 4
@SCSI_ASC_UNRECOVERED_READ_ERROR = common dso_local global i32 0, align 4
@SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED = common dso_local global i32 0, align 4
@MISCOMPARE = common dso_local global i32 0, align 4
@SCSI_ASC_MISCOMPARE_DURING_VERIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sg_io_hdr*, i32)* @nvme_trans_status_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_status_code(%struct.sg_io_hdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sg_io_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sg_io_hdr* %0, %struct.sg_io_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %149

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 2047
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %136 [
    i32 129, label %20
    i32 138, label %25
    i32 142, label %30
    i32 149, label %35
    i32 134, label %40
    i32 143, label %45
    i32 159, label %50
    i32 160, label %55
    i32 146, label %60
    i32 145, label %65
    i32 139, label %70
    i32 136, label %75
    i32 154, label %80
    i32 135, label %85
    i32 141, label %90
    i32 155, label %95
    i32 128, label %100
    i32 131, label %105
    i32 144, label %110
    i32 157, label %115
    i32 130, label %120
    i32 151, label %125
    i32 158, label %130
    i32 153, label %135
    i32 152, label %135
    i32 150, label %135
    i32 133, label %135
    i32 132, label %135
    i32 162, label %135
    i32 161, label %135
    i32 156, label %135
    i32 147, label %135
    i32 148, label %135
    i32 137, label %135
    i32 140, label %135
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @SAM_STAT_GOOD, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @NO_SENSE, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %24, i32* %9, align 4
  br label %141

25:                                               ; preds = %16
  %26 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @SCSI_ASC_ILLEGAL_COMMAND, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %29, i32* %9, align 4
  br label %141

30:                                               ; preds = %16
  %31 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %34, i32* %9, align 4
  br label %141

35:                                               ; preds = %16
  %36 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @MEDIUM_ERROR, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %39, i32* %9, align 4
  br label %141

40:                                               ; preds = %16
  %41 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @ABORTED_COMMAND, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @SCSI_ASC_WARNING, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @SCSI_ASCQ_POWER_LOSS_EXPECTED, align 4
  store i32 %44, i32* %9, align 4
  br label %141

45:                                               ; preds = %16
  %46 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @HARDWARE_ERROR, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @SCSI_ASC_INTERNAL_TARGET_FAILURE, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %49, i32* %9, align 4
  br label %141

50:                                               ; preds = %16
  %51 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @ABORTED_COMMAND, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %54, i32* %9, align 4
  br label %141

55:                                               ; preds = %16
  %56 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @ABORTED_COMMAND, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %59, i32* %9, align 4
  br label %141

60:                                               ; preds = %16
  %61 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @ABORTED_COMMAND, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %64, i32* %9, align 4
  br label %141

65:                                               ; preds = %16
  %66 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @ABORTED_COMMAND, align 4
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %69, i32* %9, align 4
  br label %141

70:                                               ; preds = %16
  %71 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID, align 4
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @SCSI_ASCQ_INVALID_LUN_ID, align 4
  store i32 %74, i32* %9, align 4
  br label %141

75:                                               ; preds = %16
  %76 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @SCSI_ASC_ILLEGAL_BLOCK, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %79, i32* %9, align 4
  br label %141

80:                                               ; preds = %16
  %81 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @MEDIUM_ERROR, align 4
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %84, i32* %9, align 4
  br label %141

85:                                               ; preds = %16
  %86 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @NOT_READY, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @SCSI_ASC_LUN_NOT_READY, align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %89, i32* %9, align 4
  br label %141

90:                                               ; preds = %16
  %91 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @SCSI_ASC_FORMAT_COMMAND_FAILED, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @SCSI_ASCQ_FORMAT_COMMAND_FAILED, align 4
  store i32 %94, i32* %9, align 4
  br label %141

95:                                               ; preds = %16
  %96 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %99, i32* %9, align 4
  br label %141

100:                                              ; preds = %16
  %101 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @MEDIUM_ERROR, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @SCSI_ASC_PERIPHERAL_DEV_WRITE_FAULT, align 4
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %104, i32* %9, align 4
  br label %141

105:                                              ; preds = %16
  %106 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @MEDIUM_ERROR, align 4
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @SCSI_ASC_UNRECOVERED_READ_ERROR, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %109, i32* %9, align 4
  br label %141

110:                                              ; preds = %16
  %111 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @MEDIUM_ERROR, align 4
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @SCSI_ASC_LOG_BLOCK_GUARD_CHECK_FAILED, align 4
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* @SCSI_ASCQ_LOG_BLOCK_GUARD_CHECK_FAILED, align 4
  store i32 %114, i32* %9, align 4
  br label %141

115:                                              ; preds = %16
  %116 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* @MEDIUM_ERROR, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* @SCSI_ASC_LOG_BLOCK_APPTAG_CHECK_FAILED, align 4
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* @SCSI_ASCQ_LOG_BLOCK_APPTAG_CHECK_FAILED, align 4
  store i32 %119, i32* %9, align 4
  br label %141

120:                                              ; preds = %16
  %121 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* @MEDIUM_ERROR, align 4
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* @SCSI_ASC_LOG_BLOCK_REFTAG_CHECK_FAILED, align 4
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @SCSI_ASCQ_LOG_BLOCK_REFTAG_CHECK_FAILED, align 4
  store i32 %124, i32* %9, align 4
  br label %141

125:                                              ; preds = %16
  %126 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* @MISCOMPARE, align 4
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @SCSI_ASC_MISCOMPARE_DURING_VERIFY, align 4
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %129, i32* %9, align 4
  br label %141

130:                                              ; preds = %16
  %131 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* @SCSI_ASC_ACCESS_DENIED_INVALID_LUN_ID, align 4
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* @SCSI_ASCQ_INVALID_LUN_ID, align 4
  store i32 %134, i32* %9, align 4
  br label %141

135:                                              ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  br label %136

136:                                              ; preds = %16, %135
  %137 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* @ILLEGAL_REQUEST, align 4
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %136, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20
  %142 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %142, i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %141, %14
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
