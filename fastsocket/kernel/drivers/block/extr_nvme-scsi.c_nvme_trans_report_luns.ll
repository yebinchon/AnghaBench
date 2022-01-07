; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_report_luns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ctrl = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@REPORT_LUNS_FIRST_LUN_OFFSET = common dso_local global i64 0, align 8
@REPORT_LUNS_SR_OFFSET = common dso_local global i32 0, align 4
@ALL_LUNS_RETURNED = common dso_local global i64 0, align 8
@ALL_WELL_KNOWN_LUNS_RETURNED = common dso_local global i64 0, align 8
@RESTRICTED_LUNS_RETURNED = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LUN_ENTRY_SIZE = common dso_local global i64 0, align 8
@LUN_DATA_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64*)* @nvme_trans_report_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_report_luns(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.nvme_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nvme_id_ctrl*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i64* %2, i64** %6, align 8
  %23 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %24, i32 0, i32 0
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %25, align 8
  store %struct.nvme_dev* %26, %struct.nvme_dev** %14, align 8
  %27 = load i64, i64* @REPORT_LUNS_FIRST_LUN_OFFSET, align 8
  store i64 %27, i64* %20, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = call i64 @GET_REPORT_LUNS_ALLOC_LENGTH(i64* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = load i32, i32* @REPORT_LUNS_SR_OFFSET, align 4
  %32 = call i64 @GET_U8_FROM_CDB(i64* %30, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @ALL_LUNS_RETURNED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %3
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @ALL_WELL_KNOWN_LUNS_RETURNED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @RESTRICTED_LUNS_RETURNED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %46 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %47 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %48 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %49 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %50 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %153

51:                                               ; preds = %40, %36, %3
  %52 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  %53 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @dma_alloc_coherent(i32* %55, i32 4, i32* %15, i32 %56)
  store i8* %57, i8** %16, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %153

63:                                               ; preds = %51
  %64 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @nvme_identify(%struct.nvme_dev* %64, i32 0, i32 1, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %145

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %7, align 4
  br label %145

78:                                               ; preds = %73
  %79 = load i8*, i8** %16, align 8
  %80 = bitcast i8* %79 to %struct.nvme_id_ctrl*
  store %struct.nvme_id_ctrl* %80, %struct.nvme_id_ctrl** %17, align 8
  %81 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %17, align 8
  %82 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = load i64, i64* @LUN_ENTRY_SIZE, align 8
  %86 = mul nsw i64 %84, %85
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* @LUN_DATA_HEADER_SIZE, align 8
  %89 = add nsw i64 %87, %88
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %11, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %78
  %94 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %95 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %96 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %97 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %98 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %99 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %145

100:                                              ; preds = %78
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i64* @kzalloc(i64 %101, i32 %102)
  store i64* %103, i64** %13, align 8
  %104 = load i64*, i64** %13, align 8
  %105 = icmp eq i64* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %145

109:                                              ; preds = %100
  store i64 0, i64* %19, align 8
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i64, i64* %19, align 8
  %112 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %17, align 8
  %113 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le32_to_cpu(i32 %114)
  %116 = icmp slt i64 %111, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @cpu_to_be64(i64 %118)
  store i32 %119, i32* %22, align 4
  %120 = load i64*, i64** %13, align 8
  %121 = load i64, i64* %20, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = call i32 @memcpy(i64* %122, i32* %22, i32 4)
  %124 = load i64, i64* @LUN_ENTRY_SIZE, align 8
  %125 = load i64, i64* %20, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %20, align 8
  br label %127

127:                                              ; preds = %117
  %128 = load i64, i64* %19, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %19, align 8
  br label %110

130:                                              ; preds = %110
  %131 = load i64, i64* %18, align 8
  %132 = call i32 @cpu_to_be32(i64 %131)
  store i32 %132, i32* %21, align 4
  %133 = load i64*, i64** %13, align 8
  %134 = call i32 @memcpy(i64* %133, i32* %21, i32 8)
  br label %135

135:                                              ; preds = %130
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @min(i64 %136, i64 %137)
  store i64 %138, i64* %10, align 8
  %139 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %140 = load i64*, i64** %13, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %139, i64* %140, i64 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i64*, i64** %13, align 8
  %144 = call i32 @kfree(i64* %143)
  br label %145

145:                                              ; preds = %135, %106, %93, %76, %72
  %146 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  %147 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i8*, i8** %16, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @dma_free_coherent(i32* %149, i32 4, i8* %150, i32 %151)
  br label %153

153:                                              ; preds = %145, %60, %44
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i64 @GET_REPORT_LUNS_ALLOC_LENGTH(i64*) #1

declare dso_local i64 @GET_U8_FROM_CDB(i64*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64* @kzalloc(i64, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i64*, i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
