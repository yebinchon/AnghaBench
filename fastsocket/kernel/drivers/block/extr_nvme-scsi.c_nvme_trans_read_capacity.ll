; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_read_capacity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ns = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@READ_CAP_10_RESP_SIZE = common dso_local global i32 0, align 4
@READ_CAP_16_RESP_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64*)* @nvme_trans_read_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_read_capacity(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.nvme_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.nvme_id_ns*, align 8
  %17 = alloca i64*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i64* %2, i64** %6, align 8
  %18 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @READ_CAP_10_RESP_SIZE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @READ_CAP_10_RESP_SIZE, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %21, i32 0, i32 1
  %23 = load %struct.nvme_dev*, %struct.nvme_dev** %22, align 8
  store %struct.nvme_dev* %23, %struct.nvme_dev** %13, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = call i64 @IS_READ_CAP_16(i64* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i64*, i64** %6, align 8
  %30 = call i32 @GET_READ_CAP_16_ALLOC_LENGTH(i64* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @READ_CAP_16_RESP_SIZE, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  %34 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @dma_alloc_coherent(i32* %36, i32 4, i32* %14, i32 %37)
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %95

44:                                               ; preds = %32
  %45 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  %46 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %47 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @nvme_identify(%struct.nvme_dev* %45, i32 %48, i32 0, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %87

57:                                               ; preds = %44
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %7, align 4
  br label %87

62:                                               ; preds = %57
  %63 = load i8*, i8** %15, align 8
  %64 = bitcast i8* %63 to %struct.nvme_id_ns*
  store %struct.nvme_id_ns* %64, %struct.nvme_id_ns** %16, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i64* @kzalloc(i32 %65, i32 %66)
  store i64* %67, i64** %17, align 8
  %68 = load i64*, i64** %17, align 8
  %69 = icmp eq i64* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %87

73:                                               ; preds = %62
  %74 = load i64*, i64** %17, align 8
  %75 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %16, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @nvme_trans_fill_read_cap(i64* %74, %struct.nvme_id_ns* %75, i64 %76)
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @min(i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %82 = load i64*, i64** %17, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %81, i64* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i64*, i64** %17, align 8
  %86 = call i32 @kfree(i64* %85)
  br label %87

87:                                               ; preds = %73, %70, %60, %56
  %88 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  %89 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @dma_free_coherent(i32* %91, i32 4, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %87, %41
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i64 @IS_READ_CAP_16(i64*) #1

declare dso_local i32 @GET_READ_CAP_16_ALLOC_LENGTH(i64*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @nvme_trans_fill_read_cap(i64*, %struct.nvme_id_ns*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
