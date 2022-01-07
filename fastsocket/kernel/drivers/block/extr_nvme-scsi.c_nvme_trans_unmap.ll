; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.scsi_unmap_parm_list = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nvme_dsm_range = type { i64, i8*, i8* }
%struct.nvme_queue = type { i32 }
%struct.nvme_command = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@UNMAP_CDB_PARAM_LIST_LENGTH_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@nvme_cmd_dsm = common dso_local global i32 0, align 4
@NVME_DSMGMT_AD = common dso_local global i32 0, align 4
@NVME_IO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*)* @nvme_trans_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_unmap(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.sg_io_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvme_dev*, align 8
  %9 = alloca %struct.scsi_unmap_parm_list*, align 8
  %10 = alloca %struct.nvme_dsm_range*, align 8
  %11 = alloca %struct.nvme_queue*, align 8
  %12 = alloca %struct.nvme_command, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %19, i32 0, i32 1
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %20, align 8
  store %struct.nvme_dev* %21, %struct.nvme_dev** %8, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @UNMAP_CDB_PARAM_LIST_LENGTH_OFFSET, align 4
  %26 = call i32 @GET_U16_FROM_CDB(i32* %24, i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %171

32:                                               ; preds = %3
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.scsi_unmap_parm_list* @kmalloc(i32 %33, i32 %34)
  store %struct.scsi_unmap_parm_list* %35, %struct.scsi_unmap_parm_list** %9, align 8
  %36 = load %struct.scsi_unmap_parm_list*, %struct.scsi_unmap_parm_list** %9, align 8
  %37 = icmp ne %struct.scsi_unmap_parm_list* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %171

41:                                               ; preds = %32
  %42 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %43 = load %struct.scsi_unmap_parm_list*, %struct.scsi_unmap_parm_list** %9, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @nvme_trans_copy_from_user(%struct.sg_io_hdr* %42, %struct.scsi_unmap_parm_list* %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %167

50:                                               ; preds = %41
  %51 = load %struct.scsi_unmap_parm_list*, %struct.scsi_unmap_parm_list** %9, align 8
  %52 = getelementptr inbounds %struct.scsi_unmap_parm_list, %struct.scsi_unmap_parm_list* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @be16_to_cpu(i32 %53)
  %55 = ashr i32 %54, 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %16, align 4
  %60 = icmp sgt i32 %59, 256
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %15, align 4
  br label %167

64:                                               ; preds = %58
  %65 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %66 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 24
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.nvme_dsm_range* @dma_alloc_coherent(i32* %68, i32 %72, i32* %18, i32 %73)
  store %struct.nvme_dsm_range* %74, %struct.nvme_dsm_range** %10, align 8
  %75 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %10, align 8
  %76 = icmp ne %struct.nvme_dsm_range* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  br label %167

78:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %119, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %79
  %84 = load %struct.scsi_unmap_parm_list*, %struct.scsi_unmap_parm_list** %9, align 8
  %85 = getelementptr inbounds %struct.scsi_unmap_parm_list, %struct.scsi_unmap_parm_list* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %94, i64 %96
  %98 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %97, i32 0, i32 2
  store i8* %93, i8** %98, align 8
  %99 = load %struct.scsi_unmap_parm_list*, %struct.scsi_unmap_parm_list** %9, align 8
  %100 = getelementptr inbounds %struct.scsi_unmap_parm_list, %struct.scsi_unmap_parm_list* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @be64_to_cpu(i32 %106)
  %108 = call i8* @cpu_to_le64(i32 %107)
  %109 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %109, i64 %111
  %113 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %112, i32 0, i32 1
  store i8* %108, i8** %113, align 8
  %114 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %114, i64 %116
  %118 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %83
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %79

122:                                              ; preds = %79
  %123 = call i32 @memset(%struct.nvme_command* %12, i32 0, i32 40)
  %124 = load i32, i32* @nvme_cmd_dsm, align 4
  %125 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %128 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @cpu_to_le32(i32 %129)
  %131 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i8* @cpu_to_le64(i32 %133)
  %135 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sub nsw i32 %137, 1
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @NVME_DSMGMT_AD, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %12, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  %146 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %147 = call %struct.nvme_queue* @get_nvmeq(%struct.nvme_dev* %146)
  store %struct.nvme_queue* %147, %struct.nvme_queue** %11, align 8
  %148 = load %struct.nvme_queue*, %struct.nvme_queue** %11, align 8
  %149 = call i32 @put_nvmeq(%struct.nvme_queue* %148)
  %150 = load %struct.nvme_queue*, %struct.nvme_queue** %11, align 8
  %151 = load i32, i32* @NVME_IO_TIMEOUT, align 4
  %152 = call i32 @nvme_submit_sync_cmd(%struct.nvme_queue* %150, %struct.nvme_command* %12, i32* null, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %153, i32 %154)
  store i32 %155, i32* %15, align 4
  %156 = load %struct.nvme_dev*, %struct.nvme_dev** %8, align 8
  %157 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 24
  %163 = trunc i64 %162 to i32
  %164 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %10, align 8
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @dma_free_coherent(i32* %159, i32 %163, %struct.nvme_dsm_range* %164, i32 %165)
  br label %167

167:                                              ; preds = %122, %77, %61, %49
  %168 = load %struct.scsi_unmap_parm_list*, %struct.scsi_unmap_parm_list** %9, align 8
  %169 = call i32 @kfree(%struct.scsi_unmap_parm_list* %168)
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %38, %29
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @GET_U16_FROM_CDB(i32*, i32) #1

declare dso_local %struct.scsi_unmap_parm_list* @kmalloc(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_from_user(%struct.sg_io_hdr*, %struct.scsi_unmap_parm_list*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.nvme_dsm_range* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local %struct.nvme_queue* @get_nvmeq(%struct.nvme_dev*) #1

declare dso_local i32 @put_nvmeq(%struct.nvme_queue*) #1

declare dso_local i32 @nvme_submit_sync_cmd(%struct.nvme_queue*, %struct.nvme_command*, i32*, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.nvme_dsm_range*, i32) #1

declare dso_local i32 @kfree(%struct.scsi_unmap_parm_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
