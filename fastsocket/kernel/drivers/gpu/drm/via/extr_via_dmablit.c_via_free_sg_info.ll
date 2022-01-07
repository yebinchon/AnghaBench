; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_free_sg_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dmablit.c_via_free_sg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, %struct.page**, %struct.page**, i32, i32** }
%struct.page = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@dr_via_sg_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.TYPE_4__*)* @via_free_sg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_free_sg_info(%struct.pci_dev* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %91 [
    i32 130, label %10
    i32 131, label %14
    i32 128, label %49
    i32 129, label %86
  ]

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = call i32 @via_unmap_blit_from_device(%struct.pci_dev* %11, %struct.TYPE_4__* %12)
  br label %14

14:                                               ; preds = %2, %10
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 7
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = call i32 @free_page(i64 %38)
  br label %40

40:                                               ; preds = %30, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 7
  %47 = load i32**, i32*** %46, align 8
  %48 = call i32 @kfree(i32** %47)
  br label %49

49:                                               ; preds = %2, %44
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load %struct.page**, %struct.page*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %59, i64 %61
  %63 = load %struct.page*, %struct.page** %62, align 8
  store %struct.page* %63, %struct.page** %5, align 8
  %64 = icmp ne %struct.page* null, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %56
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = call i32 @PageReserved(%struct.page* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.page*, %struct.page** %5, align 8
  %77 = call i32 @SetPageDirty(%struct.page* %76)
  br label %78

78:                                               ; preds = %75, %69, %65
  %79 = load %struct.page*, %struct.page** %5, align 8
  %80 = call i32 @page_cache_release(%struct.page* %79)
  br label %81

81:                                               ; preds = %78, %56
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %50

85:                                               ; preds = %50
  br label %86

86:                                               ; preds = %2, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  %89 = load %struct.page**, %struct.page*** %88, align 8
  %90 = call i32 @vfree(%struct.page** %89)
  br label %91

91:                                               ; preds = %2, %86
  %92 = load i32, i32* @dr_via_sg_init, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load %struct.page**, %struct.page*** %97, align 8
  %99 = call i32 @vfree(%struct.page** %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  store %struct.page** null, %struct.page*** %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  ret void
}

declare dso_local i32 @via_unmap_blit_from_device(%struct.pci_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(i32**) #1

declare dso_local i32 @PageReserved(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @vfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
