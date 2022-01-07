; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_send_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_send_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_dev* }
%struct.nvme_dev = type { i32 }
%struct.sg_io_hdr = type { i64, i64 }
%struct.nvme_command = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8**, i64 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.nvme_iod = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@nvme_admin_download_fw = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BYTES_TO_DWORDS = common dso_local global i32 0, align 4
@nvme_admin_activate_fw = common dso_local global i64 0, align 8
@NVME_FWACT_REPL_ACTV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64, i32, i32, i64)* @nvme_trans_send_fw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_send_fw_cmd(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.nvme_ns*, align 8
  %8 = alloca %struct.sg_io_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvme_dev*, align 8
  %16 = alloca %struct.nvme_command, align 8
  %17 = alloca %struct.nvme_iod*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %7, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %20 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %22 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %21, i32 0, i32 0
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %22, align 8
  store %struct.nvme_dev* %23, %struct.nvme_dev** %15, align 8
  store %struct.nvme_iod* null, %struct.nvme_iod** %17, align 8
  %24 = call i32 @memset(%struct.nvme_command* %16, i32 0, i32 32)
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @nvme_admin_download_fw, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %84

31:                                               ; preds = %6
  %32 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %38 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %39 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %40 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %41 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %42 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  br label %128

43:                                               ; preds = %31
  %44 = load %struct.nvme_dev*, %struct.nvme_dev** %15, align 8
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.nvme_iod* @nvme_map_user_pages(%struct.nvme_dev* %44, i32 %45, i64 %48, i32 %49)
  store %struct.nvme_iod* %50, %struct.nvme_iod** %17, align 8
  %51 = load %struct.nvme_iod*, %struct.nvme_iod** %17, align 8
  %52 = call i64 @IS_ERR(%struct.nvme_iod* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load %struct.nvme_iod*, %struct.nvme_iod** %17, align 8
  %56 = call i32 @PTR_ERR(%struct.nvme_iod* %55)
  store i32 %56, i32* %13, align 4
  br label %128

57:                                               ; preds = %43
  %58 = load %struct.nvme_dev*, %struct.nvme_dev** %15, align 8
  %59 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i32 0, i32 0
  %60 = load %struct.nvme_iod*, %struct.nvme_iod** %17, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @nvme_setup_prps(%struct.nvme_dev* %58, %struct.TYPE_4__* %59, %struct.nvme_iod* %60, i32 %61, i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %115

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @BYTES_TO_DWORDS, align 4
  %73 = udiv i32 %71, %72
  %74 = sub i32 %73, 1
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @BYTES_TO_DWORDS, align 4
  %80 = udiv i32 %78, %79
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %100

84:                                               ; preds = %6
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @nvme_admin_activate_fw, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @NVME_FWACT_REPL_ACTV, align 8
  %91 = or i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  store i8* %94, i8** %98, align 8
  br label %99

99:                                               ; preds = %88, %84
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.nvme_dev*, %struct.nvme_dev** %15, align 8
  %102 = call i32 @nvme_submit_admin_cmd(%struct.nvme_dev* %101, %struct.nvme_command* %16, i32* null)
  store i32 %102, i32* %14, align 4
  %103 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %115

109:                                              ; preds = %100
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %112, %109
  br label %115

115:                                              ; preds = %114, %108, %67
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @nvme_admin_download_fw, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.nvme_dev*, %struct.nvme_dev** %15, align 8
  %121 = load i32, i32* @DMA_TO_DEVICE, align 4
  %122 = load %struct.nvme_iod*, %struct.nvme_iod** %17, align 8
  %123 = call i32 @nvme_unmap_user_pages(%struct.nvme_dev* %120, i32 %121, %struct.nvme_iod* %122)
  %124 = load %struct.nvme_dev*, %struct.nvme_dev** %15, align 8
  %125 = load %struct.nvme_iod*, %struct.nvme_iod** %17, align 8
  %126 = call i32 @nvme_free_iod(%struct.nvme_dev* %124, %struct.nvme_iod* %125)
  br label %127

127:                                              ; preds = %119, %115
  br label %128

128:                                              ; preds = %127, %54, %36
  %129 = load i32, i32* %13, align 4
  ret i32 %129
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local %struct.nvme_iod* @nvme_map_user_pages(%struct.nvme_dev*, i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.nvme_iod*) #1

declare dso_local i32 @PTR_ERR(%struct.nvme_iod*) #1

declare dso_local i32 @nvme_setup_prps(%struct.nvme_dev*, %struct.TYPE_4__*, %struct.nvme_iod*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @nvme_submit_admin_cmd(%struct.nvme_dev*, %struct.nvme_command*, i32*) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @nvme_unmap_user_pages(%struct.nvme_dev*, i32, %struct.nvme_iod*) #1

declare dso_local i32 @nvme_free_iod(%struct.nvme_dev*, %struct.nvme_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
