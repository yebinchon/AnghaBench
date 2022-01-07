; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_temperature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_temperature.c"
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
@LOG_TEMP_PAGE_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_admin_get_log_page = common dso_local global i32 0, align 4
@BYTES_TO_DWORDS = common dso_local global i32 0, align 4
@NVME_GET_SMART_LOG_PAGE = common dso_local global i32 0, align 4
@NVME_SC_SUCCESS = common dso_local global i32 0, align 4
@LOG_TEMP_UNKNOWN = common dso_local global i32 0, align 4
@KELVIN_TEMP_FACTOR = common dso_local global i32 0, align 4
@NVME_FEAT_TEMP_THRESH = common dso_local global i32 0, align 4
@LOG_PAGE_TEMPERATURE_PAGE = common dso_local global i32 0, align 4
@REMAINING_TEMP_PAGE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32)* @nvme_trans_log_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_log_temperature(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32 %2) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %21 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %20, i32 0, i32 0
  %22 = load %struct.nvme_dev*, %struct.nvme_dev** %21, align 8
  store %struct.nvme_dev* %22, %struct.nvme_dev** %11, align 8
  %23 = load i32, i32* @LOG_TEMP_PAGE_LENGTH, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 %23, i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %147

31:                                               ; preds = %3
  %32 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %33 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @dma_alloc_coherent(i32* %35, i32 8, i32* %13, i32 %36)
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %144

43:                                               ; preds = %31
  %44 = call i32 @memset(%struct.nvme_command* %10, i32 0, i32 32)
  %45 = load i32, i32* @nvme_admin_get_log_page, align 4
  %46 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = call i8* @cpu_to_le32(i32 -1)
  %49 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @cpu_to_le64(i32 %51)
  %53 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @BYTES_TO_DWORDS, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 8, %56
  %58 = shl i64 %57, 16
  %59 = load i32, i32* @NVME_GET_SMART_LOG_PAGE, align 4
  %60 = sext i32 %59 to i64
  %61 = or i64 %58, %60
  %62 = trunc i64 %61 to i32
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %63, i8** %67, align 8
  %68 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %69 = call i32 @nvme_submit_admin_cmd(%struct.nvme_dev* %68, %struct.nvme_command* %10, i32* null)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @NVME_SC_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %43
  %74 = load i32, i32* @LOG_TEMP_UNKNOWN, align 4
  store i32 %74, i32* %16, align 4
  br label %93

75:                                               ; preds = %43
  %76 = load i8*, i8** %14, align 8
  %77 = bitcast i8* %76 to %struct.nvme_smart_log*
  store %struct.nvme_smart_log* %77, %struct.nvme_smart_log** %12, align 8
  %78 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %12, align 8
  %79 = getelementptr inbounds %struct.nvme_smart_log, %struct.nvme_smart_log* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load %struct.nvme_smart_log*, %struct.nvme_smart_log** %12, align 8
  %85 = getelementptr inbounds %struct.nvme_smart_log, %struct.nvme_smart_log* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %83, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @KELVIN_TEMP_FACTOR, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %75, %73
  %94 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %95 = load i32, i32* @NVME_FEAT_TEMP_THRESH, align 4
  %96 = call i32 @nvme_get_features(%struct.nvme_dev* %94, i32 %95, i32 0, i32 0, i32* %15)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @NVME_SC_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @LOG_TEMP_UNKNOWN, align 4
  store i32 %101, i32* %17, align 4
  br label %107

102:                                              ; preds = %93
  %103 = load i32, i32* %15, align 4
  %104 = and i32 %103, 65535
  %105 = load i32, i32* @KELVIN_TEMP_FACTOR, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %102, %100
  %108 = load i32, i32* @LOG_PAGE_TEMPERATURE_PAGE, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @REMAINING_TEMP_PAGE_LENGTH, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 6
  store i32 1, i32* %115, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 7
  store i32 2, i32* %117, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 9
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 11
  store i32 1, i32* %122, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 12
  store i32 1, i32* %124, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 13
  store i32 2, i32* %126, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 15
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @LOG_TEMP_PAGE_LENGTH, align 4
  %132 = call i32 @min(i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %133, i32* %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load %struct.nvme_dev*, %struct.nvme_dev** %11, align 8
  %138 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i8*, i8** %14, align 8
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @dma_free_coherent(i32* %140, i32 8, i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %107, %40
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @kfree(i32* %145)
  br label %147

147:                                              ; preds = %144, %28
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nvme_submit_admin_cmd(%struct.nvme_dev*, %struct.nvme_command*, i32*) #1

declare dso_local i32 @nvme_get_features(%struct.nvme_dev*, i32, i32, i32, i32*) #1

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
