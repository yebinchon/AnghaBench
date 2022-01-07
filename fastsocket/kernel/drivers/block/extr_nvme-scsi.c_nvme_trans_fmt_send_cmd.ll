; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fmt_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fmt_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i64, i32, i64, %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ns = type { i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nvme_command = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@nvme_admin_format_nvm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64)* @nvme_trans_fmt_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_fmt_send_cmd(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nvme_id_ns*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.nvme_command, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %21 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %20, i32 0, i32 3
  %22 = load %struct.nvme_dev*, %struct.nvme_dev** %21, align 8
  store %struct.nvme_dev* %22, %struct.nvme_dev** %9, align 8
  store i64 255, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %24 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dma_alloc_coherent(i32* %26, i32 32, i32* %10, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %157

34:                                               ; preds = %3
  %35 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %36 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @nvme_identify(%struct.nvme_dev* %35, i64 %38, i32 0, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %149

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %7, align 4
  br label %149

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i8* %53 to %struct.nvme_id_ns*
  store %struct.nvme_id_ns* %54, %struct.nvme_id_ns** %12, align 8
  %55 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %12, align 8
  %56 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 15
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %14, align 8
  %60 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %12, align 8
  %61 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %63

63:                                               ; preds = %83, %52
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %69 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %12, align 8
  %72 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = icmp eq i32 %70, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i64, i64* %13, align 8
  store i64 %81, i64* %16, align 8
  br label %86

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %13, align 8
  br label %63

86:                                               ; preds = %80, %63
  %87 = load i64, i64* %16, align 8
  %88 = icmp ugt i64 %87, 15
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %91 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %92 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %93 = load i32, i32* @SCSI_ASC_INVALID_PARAMETER, align 4
  %94 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %95 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %89, %86
  %97 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %98 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %12, align 8
  %101 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @le64_to_cpu(i32 %102)
  %104 = icmp ne i64 %99, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %107 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %108 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %109 = load i32, i32* @SCSI_ASC_INVALID_PARAMETER, align 4
  %110 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %111 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %106, i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %105, %96
  %113 = load i64, i64* %6, align 8
  %114 = shl i64 %113, 5
  %115 = load i64, i64* %17, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %17, align 8
  %117 = load i64, i64* %16, align 8
  %118 = and i64 %117, 15
  %119 = load i64, i64* %17, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %17, align 8
  %121 = call i32 @memset(%struct.nvme_command* %18, i32 0, i32 24)
  %122 = load i32, i32* @nvme_admin_format_nvm, align 4
  %123 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %18, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %126 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i8* @cpu_to_le32(i64 %127)
  %129 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %18, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i64, i64* %17, align 8
  %132 = call i8* @cpu_to_le32(i64 %131)
  %133 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %18, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %136 = call i32 @nvme_submit_admin_cmd(%struct.nvme_dev* %135, %struct.nvme_command* %18, i32* null)
  store i32 %136, i32* %8, align 4
  %137 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %137, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %112
  br label %149

143:                                              ; preds = %112
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %146, %143
  br label %149

149:                                              ; preds = %148, %142, %50, %46
  %150 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %151 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @dma_free_coherent(i32* %153, i32 32, i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %149, %31
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i64, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @nvme_submit_admin_cmd(%struct.nvme_dev*, %struct.nvme_command*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
