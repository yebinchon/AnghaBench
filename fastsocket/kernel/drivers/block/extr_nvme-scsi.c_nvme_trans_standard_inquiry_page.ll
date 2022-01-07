; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_standard_inquiry_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_standard_inquiry_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ns = type { i64 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STANDARD_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@VERSION_SPC_4 = common dso_local global i32 0, align 4
@ADDITIONAL_STD_INQ_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"NVMe    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* @nvme_trans_standard_inquiry_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_standard_inquiry_page(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.sg_io_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nvme_id_ns*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %19, i32 0, i32 1
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %20, align 8
  store %struct.nvme_dev* %21, %struct.nvme_dev** %9, align 8
  %22 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %22, i32* %13, align 4
  store i32 2, i32* %16, align 4
  store i32 2, i32* %18, align 4
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %24 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dma_alloc_coherent(i32* %26, i32 8, i32* %10, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  br label %111

34:                                               ; preds = %4
  %35 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %36 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %37 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @nvme_identify(%struct.nvme_dev* %35, i32 %38, i32 0, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %103

47:                                               ; preds = %34
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %13, align 4
  br label %103

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i8* %53 to %struct.nvme_id_ns*
  store %struct.nvme_id_ns* %54, %struct.nvme_id_ns** %12, align 8
  %55 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %12, align 8
  %56 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %17, align 4
  br label %61

60:                                               ; preds = %52
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi i32 [ 1, %59 ], [ 0, %60 ]
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %65 = call i32 @memset(i32* %63, i32 0, i32 %64)
  %66 = load i32, i32* @VERSION_SPC_4, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ADDITIONAL_STD_INQ_LENGTH, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = call i32 @strncpy(i32* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 16
  %86 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %87 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strncpy(i32* %85, i8* %88, i32 16)
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 32
  %92 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %93 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strncpy(i32* %91, i8* %94, i32 4)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %98 = call i32 @min(i32 %96, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %99, i32* %100, i32 %101)
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %61, %50, %46
  %104 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %105 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @dma_free_coherent(i32* %107, i32 8, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %31
  %112 = load i32, i32* %13, align 4
  ret i32 %112
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
