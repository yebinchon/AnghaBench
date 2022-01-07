; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@LOG_SENSE_CDB_SP_OFFSET = common dso_local global i32 0, align 4
@LOG_SENSE_CDB_SP_NOT_ENABLED = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@LOG_SENSE_CDB_PC_OFFSET = common dso_local global i32 0, align 4
@LOG_SENSE_CDB_PAGE_CODE_MASK = common dso_local global i64 0, align 8
@LOG_SENSE_CDB_PC_MASK = common dso_local global i64 0, align 8
@LOG_SENSE_CDB_PC_SHIFT = common dso_local global i64 0, align 8
@LOG_SENSE_CDB_PC_CUMULATIVE_VALUES = common dso_local global i64 0, align 8
@LOG_SENSE_CDB_ALLOC_LENGTH_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64*)* @nvme_trans_log_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_log_sense(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = load i32, i32* @LOG_SENSE_CDB_SP_OFFSET, align 4
  %15 = call i64 @GET_U8_FROM_CDB(i64* %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @LOG_SENSE_CDB_SP_NOT_ENABLED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %21 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %22 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %23 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %24 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %25 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %76

26:                                               ; preds = %3
  %27 = load i64*, i64** %6, align 8
  %28 = load i32, i32* @LOG_SENSE_CDB_PC_OFFSET, align 4
  %29 = call i64 @GET_U8_FROM_CDB(i64* %27, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @LOG_SENSE_CDB_PAGE_CODE_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @LOG_SENSE_CDB_PC_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* @LOG_SENSE_CDB_PC_SHIFT, align 8
  %37 = ashr i64 %35, %36
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @LOG_SENSE_CDB_PC_CUMULATIVE_VALUES, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %43 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %44 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %45 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %46 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %47 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %76

48:                                               ; preds = %26
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* @LOG_SENSE_CDB_ALLOC_LENGTH_OFFSET, align 4
  %51 = call i32 @GET_U16_FROM_CDB(i64* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i64, i64* %11, align 8
  switch i64 %52, label %68 [
    i64 129, label %53
    i64 130, label %58
    i64 128, label %63
  ]

53:                                               ; preds = %48
  %54 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %55 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @nvme_trans_log_supp_pages(%struct.nvme_ns* %54, %struct.sg_io_hdr* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %75

58:                                               ; preds = %48
  %59 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %60 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @nvme_trans_log_info_exceptions(%struct.nvme_ns* %59, %struct.sg_io_hdr* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %75

63:                                               ; preds = %48
  %64 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %65 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @nvme_trans_log_temperature(%struct.nvme_ns* %64, %struct.sg_io_hdr* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %75

68:                                               ; preds = %48
  %69 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %70 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %71 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %72 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %73 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %74 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %68, %63, %58, %53
  br label %76

76:                                               ; preds = %75, %41, %19
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i64 @GET_U8_FROM_CDB(i64*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @GET_U16_FROM_CDB(i64*, i32) #1

declare dso_local i32 @nvme_trans_log_supp_pages(%struct.nvme_ns*, %struct.sg_io_hdr*, i32) #1

declare dso_local i32 @nvme_trans_log_info_exceptions(%struct.nvme_ns*, %struct.sg_io_hdr*, i32) #1

declare dso_local i32 @nvme_trans_log_temperature(%struct.nvme_ns*, %struct.sg_io_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
