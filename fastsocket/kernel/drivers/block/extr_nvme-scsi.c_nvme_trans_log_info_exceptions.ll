; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_info_exceptions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_info_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_command = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8**, i32, i8*, i32 }
%struct.nvme_smart_log = type { i32* }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@LOG_INFO_EXCP_PAGE_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_admin_get_log_page = common dso_local global i32 0, align 4
@BYTES_TO_DWORDS = common dso_local global i32 0, align 4
@NVME_GET_SMART_LOG_PAGE = common dso_local global i32 0, align 4
@NVME_SC_SUCCESS = common dso_local global i32 0, align 4
@LOG_TEMP_UNKNOWN = common dso_local global i32 0, align 4
@KELVIN_TEMP_FACTOR = common dso_local global i32 0, align 4
@LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE = common dso_local global i32 0, align 4
@REMAINING_INFO_EXCP_PAGE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32)* @nvme_trans_log_info_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_log_info_exceptions(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvme_command, align 8
  %11 = alloca %struct.nvme_dev*, align 8
  %12 = alloca %struct.nvme_smart_log*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %19 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %18, i32 0, i32 0
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %19, align 8
  store %struct.nvme_dev* %20, %struct.nvme_dev** %11, align 8
  %21 = load i32, i32* @LOG_INFO_EXCP_PAGE_LENGTH, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kzalloc(i32 %21, i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %122

29:                                               ; preds = %3
  %30 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %31 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @dma_alloc_coherent(i32* %33, i32 8, i32* %13, i32 %34)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %119

41:                                               ; preds = %29
  %42 = call i32 @memset(%struct.nvme_command* %10, i32 0, i32 32)
  %43 = load i32, i32* @nvme_admin_get_log_page, align 4
  %44 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = call i8* @cpu_to_le32(i32 -1)
  %47 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @cpu_to_le64(i32 %49)
  %51 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @BYTES_TO_DWORDS, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 8, %54
  %56 = shl i64 %55, 16
  %57 = load i32, i32* @NVME_GET_SMART_LOG_PAGE, align 4
  %58 = sext i32 %57 to i64
  %59 = or i64 %56, %58
  %60 = trunc i64 %59 to i32
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  store i8* %61, i8** %65, align 8
  %66 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %67 = call i32 @nvme_submit_admin_cmd(%struct.nvme_dev* %66, %struct.nvme_command* %10, i32* null)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @NVME_SC_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %41
  %72 = load i32, i32* @LOG_TEMP_UNKNOWN, align 4
  store i32 %72, i32* %15, align 4
  br label %91

73:                                               ; preds = %41
  %74 = load i8*, i8** %14, align 8
  %75 = bitcast i8* %74 to %struct.nvme_smart_log*
  store %struct.nvme_smart_log* %75, %struct.nvme_smart_log** %12, align 8
  %76 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %12, align 8
  %77 = getelementptr inbounds %struct.nvme_smart_log, %struct.nvme_smart_log* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %12, align 8
  %83 = getelementptr inbounds %struct.nvme_smart_log, %struct.nvme_smart_log* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %81, %86
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @KELVIN_TEMP_FACTOR, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %73, %71
  %92 = load i32, i32* @LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @REMAINING_INFO_EXCP_PAGE_LENGTH, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  store i32 35, i32* %99, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 7
  store i32 4, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 10
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @LOG_INFO_EXCP_PAGE_LENGTH, align 4
  %107 = call i32 @min(i32 %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %108, i32* %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %113 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @dma_free_coherent(i32* %115, i32 8, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %91, %38
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @kfree(i32* %120)
  br label %122

122:                                              ; preds = %119, %26
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nvme_submit_admin_cmd(%struct.nvme_dev*, %struct.nvme_command*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
