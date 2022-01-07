; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_format_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_format_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@FORMAT_UNIT_CDB_FORMAT_PROT_INFO_OFFSET = common dso_local global i32 0, align 4
@FORMAT_UNIT_CDB_LONG_LIST_OFFSET = common dso_local global i32 0, align 4
@FORMAT_UNIT_CDB_FORMAT_DATA_OFFSET = common dso_local global i32 0, align 4
@FORMAT_UNIT_CDB_FORMAT_PROT_INFO_MASK = common dso_local global i64 0, align 8
@FORMAT_UNIT_CDB_FORMAT_PROT_INFO_SHIFT = common dso_local global i64 0, align 8
@FORMAT_UNIT_CDB_LONG_LIST_MASK = common dso_local global i64 0, align 8
@FORMAT_UNIT_CDB_FORMAT_DATA_MASK = common dso_local global i64 0, align 8
@FORMAT_UNIT_SHORT_PARM_LIST_LEN = common dso_local global i64 0, align 8
@FORMAT_UNIT_LONG_PARM_LIST_LEN = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@nvme_admin_activate_fw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64*)* @nvme_trans_format_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_format_unit(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i32, i32* @FORMAT_UNIT_CDB_FORMAT_PROT_INFO_OFFSET, align 4
  %16 = call i64 @GET_U8_FROM_CDB(i64* %14, i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i32, i32* @FORMAT_UNIT_CDB_LONG_LIST_OFFSET, align 4
  %19 = call i64 @GET_U8_FROM_CDB(i64* %17, i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i32, i32* @FORMAT_UNIT_CDB_FORMAT_DATA_OFFSET, align 4
  %22 = call i64 @GET_U8_FROM_CDB(i64* %20, i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @FORMAT_UNIT_CDB_FORMAT_PROT_INFO_MASK, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* @FORMAT_UNIT_CDB_FORMAT_PROT_INFO_SHIFT, align 8
  %27 = ashr i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @FORMAT_UNIT_CDB_LONG_LIST_MASK, align 8
  %29 = load i64, i64* %11, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* @FORMAT_UNIT_CDB_FORMAT_DATA_MASK, align 8
  %32 = load i64, i64* %12, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %3
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @FORMAT_UNIT_SHORT_PARM_LIST_LEN, align 8
  store i64 %43, i64* %8, align 8
  br label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @FORMAT_UNIT_LONG_PARM_LIST_LEN, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %36
  br label %62

48:                                               ; preds = %3
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %56 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %57 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %58 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %59 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %60 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %92

61:                                               ; preds = %51, %48
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i64, i64* %8, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @nvme_trans_fmt_get_parm_header(%struct.sg_io_hdr* %66, i64 %67, i64 %68, i64* %9)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %92

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %62
  %76 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %77 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %78 = load i32, i32* @nvme_admin_activate_fw, align 4
  %79 = call i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns* %76, %struct.sg_io_hdr* %77, i32 %78, i32 0, i32 0, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %81 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %82 = call i32 @nvme_trans_fmt_set_blk_size_count(%struct.nvme_ns* %80, %struct.sg_io_hdr* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %92

87:                                               ; preds = %75
  %88 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %89 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @nvme_trans_fmt_send_cmd(%struct.nvme_ns* %88, %struct.sg_io_hdr* %89, i64 %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %86, %73, %54
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i64 @GET_U8_FROM_CDB(i64*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_fmt_get_parm_header(%struct.sg_io_hdr*, i64, i64, i64*) #1

declare dso_local i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns*, %struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_fmt_set_blk_size_count(%struct.nvme_ns*, %struct.sg_io_hdr*) #1

declare dso_local i32 @nvme_trans_fmt_send_cmd(%struct.nvme_ns*, %struct.sg_io_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
