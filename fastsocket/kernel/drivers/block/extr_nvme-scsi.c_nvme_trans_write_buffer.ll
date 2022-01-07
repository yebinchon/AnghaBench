; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_write_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@WRITE_BUFFER_CDB_PARM_LIST_LENGTH_OFFSET = common dso_local global i32 0, align 4
@BYTES_TO_DWORDS = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@WRITE_BUFFER_CDB_BUFFER_ID_OFFSET = common dso_local global i32 0, align 4
@NVME_MAX_FIRMWARE_SLOT = common dso_local global i64 0, align 8
@WRITE_BUFFER_CDB_MODE_OFFSET = common dso_local global i32 0, align 4
@WRITE_BUFFER_CDB_MODE_MASK = common dso_local global i64 0, align 8
@WRITE_BUFFER_CDB_BUFFER_OFFSET_OFFSET = common dso_local global i32 0, align 4
@nvme_admin_download_fw = common dso_local global i32 0, align 4
@nvme_admin_activate_fw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64*)* @nvme_trans_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_write_buffer(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = load i32, i32* @WRITE_BUFFER_CDB_PARM_LIST_LENGTH_OFFSET, align 4
  %15 = call i32 @GET_U24_FROM_CDB(i64* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @BYTES_TO_DWORDS, align 4
  %18 = srem i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %22 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %23 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %24 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %25 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %26 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %95

27:                                               ; preds = %3
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* @WRITE_BUFFER_CDB_BUFFER_ID_OFFSET, align 4
  %30 = call i64 @GET_U8_FROM_CDB(i64* %28, i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @NVME_MAX_FIRMWARE_SLOT, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %36 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %37 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %38 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %39 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %40 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %95

41:                                               ; preds = %27
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* @WRITE_BUFFER_CDB_MODE_OFFSET, align 4
  %44 = call i64 @GET_U8_FROM_CDB(i64* %42, i32 %43)
  %45 = load i64, i64* @WRITE_BUFFER_CDB_MODE_MASK, align 8
  %46 = and i64 %44, %45
  store i64 %46, i64* %11, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i32, i32* @WRITE_BUFFER_CDB_BUFFER_OFFSET_OFFSET, align 4
  %49 = call i32 @GET_U24_FROM_CDB(i64* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i64, i64* %11, align 8
  switch i64 %50, label %87 [
    i64 129, label %51
    i64 128, label %71
    i64 130, label %79
  ]

51:                                               ; preds = %41
  %52 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %53 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %54 = load i32, i32* @nvme_admin_download_fw, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns* %52, %struct.sg_io_hdr* %53, i32 %54, i32 %55, i32 %56, i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %95

63:                                               ; preds = %51
  %64 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %65 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %66 = load i32, i32* @nvme_admin_activate_fw, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns* %64, %struct.sg_io_hdr* %65, i32 %66, i32 %67, i32 %68, i64 %69)
  store i32 %70, i32* %7, align 4
  br label %94

71:                                               ; preds = %41
  %72 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %73 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %74 = load i32, i32* @nvme_admin_download_fw, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns* %72, %struct.sg_io_hdr* %73, i32 %74, i32 %75, i32 %76, i64 %77)
  store i32 %78, i32* %7, align 4
  br label %94

79:                                               ; preds = %41
  %80 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %81 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %82 = load i32, i32* @nvme_admin_activate_fw, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns* %80, %struct.sg_io_hdr* %81, i32 %82, i32 %83, i32 %84, i64 %85)
  store i32 %86, i32* %7, align 4
  br label %94

87:                                               ; preds = %41
  %88 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %89 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %90 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %91 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %92 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %93 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %87, %79, %71, %63
  br label %95

95:                                               ; preds = %94, %62, %34, %20
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @GET_U24_FROM_CDB(i64*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i64 @GET_U8_FROM_CDB(i64*, i32) #1

declare dso_local i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns*, %struct.sg_io_hdr*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
