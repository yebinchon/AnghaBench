; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_bio_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_bio_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_completion = type { i32 }
%struct.nvme_iod = type { i32, i64, i32, %struct.bio* }
%struct.bio = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*, i8*, %struct.nvme_completion*)* @bio_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_completion(%struct.nvme_dev* %0, i8* %1, %struct.nvme_completion* %2) #0 {
  %4 = alloca %struct.nvme_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvme_completion*, align 8
  %7 = alloca %struct.nvme_iod*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nvme_completion* %2, %struct.nvme_completion** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nvme_iod*
  store %struct.nvme_iod* %11, %struct.nvme_iod** %7, align 8
  %12 = load %struct.nvme_iod*, %struct.nvme_iod** %7, align 8
  %13 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %12, i32 0, i32 3
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %14, %struct.bio** %8, align 8
  %15 = load %struct.nvme_completion*, %struct.nvme_completion** %6, align 8
  %16 = getelementptr inbounds %struct.nvme_completion, %struct.nvme_completion* %15, i32 0, i32 0
  %17 = call i32 @le16_to_cpup(i32* %16)
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nvme_iod*, %struct.nvme_iod** %7, align 8
  %20 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %3
  %24 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.nvme_iod*, %struct.nvme_iod** %7, align 8
  %29 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nvme_iod*, %struct.nvme_iod** %7, align 8
  %32 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %8, align 8
  %35 = call i64 @bio_data_dir(%struct.bio* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @dma_unmap_sg(i32* %27, i32 %30, i64 %33, i32 %42)
  %44 = load %struct.bio*, %struct.bio** %8, align 8
  %45 = load %struct.nvme_iod*, %struct.nvme_iod** %7, align 8
  %46 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @nvme_end_io_acct(%struct.bio* %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %3
  %50 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %51 = load %struct.nvme_iod*, %struct.nvme_iod** %7, align 8
  %52 = call i32 @nvme_free_iod(%struct.nvme_dev* %50, %struct.nvme_iod* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.bio*, %struct.bio** %8, align 8
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @bio_endio(%struct.bio* %56, i32 %58)
  br label %63

60:                                               ; preds = %49
  %61 = load %struct.bio*, %struct.bio** %8, align 8
  %62 = call i32 @bio_endio(%struct.bio* %61, i32 0)
  br label %63

63:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @nvme_end_io_acct(%struct.bio*, i32) #1

declare dso_local i32 @nvme_free_iod(%struct.nvme_dev*, %struct.nvme_iod*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
