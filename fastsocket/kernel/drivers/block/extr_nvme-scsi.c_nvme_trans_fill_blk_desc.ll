; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fill_blk_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fill_blk_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ns = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@MODE_PAGE_BLK_DES_LEN = common dso_local global i32 0, align 4
@SNTI_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MODE_PAGE_LLBAA_BLK_DES_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64*, i32, i64)* @nvme_trans_fill_blk_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_fill_blk_desc(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_ns*, align 8
  %8 = alloca %struct.sg_io_hdr*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvme_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nvme_id_ns*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %7, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %24 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %26 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %25, i32 0, i32 1
  %27 = load %struct.nvme_dev*, %struct.nvme_dev** %26, align 8
  store %struct.nvme_dev* %27, %struct.nvme_dev** %14, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MODE_PAGE_BLK_DES_LEN, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @SNTI_INTERNAL_ERROR, align 4
  store i32 %35, i32* %6, align 4
  br label %132

36:                                               ; preds = %30, %5
  %37 = load i64, i64* %11, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MODE_PAGE_LLBAA_BLK_DES_LEN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @SNTI_INTERNAL_ERROR, align 4
  store i32 %44, i32* %6, align 4
  br label %132

45:                                               ; preds = %39, %36
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  %48 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @dma_alloc_coherent(i32* %50, i32 16, i32* %15, i32 %51)
  store i8* %52, i8** %16, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %130

58:                                               ; preds = %46
  %59 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  %60 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %61 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @nvme_identify(%struct.nvme_dev* %59, i32 %62, i32 0, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %122

71:                                               ; preds = %58
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %12, align 4
  br label %122

76:                                               ; preds = %71
  %77 = load i8*, i8** %16, align 8
  %78 = bitcast i8* %77 to %struct.nvme_id_ns*
  store %struct.nvme_id_ns* %78, %struct.nvme_id_ns** %17, align 8
  %79 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %17, align 8
  %80 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 15
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %18, align 8
  %84 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %17, align 8
  %85 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  store i32 %91, i32* %19, align 4
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %76
  %95 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %17, align 8
  %96 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le64_to_cpu(i32 %97)
  %99 = call i32 @cpu_to_be32(i32 %98)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %19, align 4
  %101 = and i32 %100, 16777215
  %102 = call i32 @cpu_to_be32(i32 %101)
  store i32 %102, i32* %21, align 4
  %103 = load i64*, i64** %9, align 8
  %104 = call i32 @memcpy(i64* %103, i32* %20, i32 4)
  %105 = load i64*, i64** %9, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 4
  %107 = call i32 @memcpy(i64* %106, i32* %21, i32 4)
  br label %121

108:                                              ; preds = %76
  %109 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %17, align 8
  %110 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le64_to_cpu(i32 %111)
  %113 = call i32 @cpu_to_be64(i32 %112)
  store i32 %113, i32* %22, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @cpu_to_be32(i32 %114)
  store i32 %115, i32* %23, align 4
  %116 = load i64*, i64** %9, align 8
  %117 = call i32 @memcpy(i64* %116, i32* %22, i32 4)
  %118 = load i64*, i64** %9, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 12
  %120 = call i32 @memcpy(i64* %119, i32* %23, i32 4)
  br label %121

121:                                              ; preds = %108, %94
  br label %122

122:                                              ; preds = %121, %74, %70
  %123 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  %124 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i8*, i8** %16, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @dma_free_coherent(i32* %126, i32 16, i8* %127, i32 %128)
  br label %130

130:                                              ; preds = %122, %55
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %43, %34
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
