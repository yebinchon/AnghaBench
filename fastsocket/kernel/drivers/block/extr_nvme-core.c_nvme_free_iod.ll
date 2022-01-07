; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_free_iod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_free_iod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32 }
%struct.nvme_iod = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_free_iod(%struct.nvme_dev* %0, %struct.nvme_iod* %1) #0 {
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca %struct.nvme_iod*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  store %struct.nvme_iod* %1, %struct.nvme_iod** %4, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sdiv i32 %11, 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load %struct.nvme_iod*, %struct.nvme_iod** %4, align 8
  %15 = call i32** @iod_list(%struct.nvme_iod* %14)
  store i32** %15, i32*** %7, align 8
  %16 = load %struct.nvme_iod*, %struct.nvme_iod** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nvme_iod*, %struct.nvme_iod** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32**, i32*** %7, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dma_pool_free(i32 %26, i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.nvme_iod*, %struct.nvme_iod** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le64_to_cpu(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dma_pool_free(i32 %53, i32* %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %39
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %33

61:                                               ; preds = %33
  %62 = load %struct.nvme_iod*, %struct.nvme_iod** %4, align 8
  %63 = call i32 @kfree(%struct.nvme_iod* %62)
  ret void
}

declare dso_local i32** @iod_list(%struct.nvme_iod*) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.nvme_iod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
