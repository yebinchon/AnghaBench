; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fmt_set_blk_size_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fmt_set_blk_size_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, i32, i32, %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ns = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*)* @nvme_trans_fmt_set_blk_size_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_fmt_set_blk_size_count(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1) #0 {
  %3 = alloca %struct.nvme_ns*, align 8
  %4 = alloca %struct.sg_io_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nvme_id_ns*, align 8
  %11 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %3, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %4, align 8
  %12 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %13, i32 0, i32 3
  %15 = load %struct.nvme_dev*, %struct.nvme_dev** %14, align 8
  store %struct.nvme_dev* %15, %struct.nvme_dev** %7, align 8
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %99

25:                                               ; preds = %20, %2
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @dma_alloc_coherent(i32* %29, i32 24, i32* %8, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %100

37:                                               ; preds = %25
  %38 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %39 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @nvme_identify(%struct.nvme_dev* %38, i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %91

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %5, align 4
  br label %91

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = bitcast i8* %56 to %struct.nvme_id_ns*
  store %struct.nvme_id_ns* %57, %struct.nvme_id_ns** %10, align 8
  %58 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %59 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %10, align 8
  %64 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le64_to_cpu(i32 %65)
  %67 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %68 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %71 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %10, align 8
  %76 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 15
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %11, align 8
  %80 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %10, align 8
  %81 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 1, %86
  %88 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %89 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %74, %69
  br label %91

91:                                               ; preds = %90, %53, %49
  %92 = load %struct.nvme_dev*, %struct.nvme_dev** %7, align 8
  %93 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @dma_free_coherent(i32* %95, i32 24, i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %20
  br label %100

100:                                              ; preds = %99, %34
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
