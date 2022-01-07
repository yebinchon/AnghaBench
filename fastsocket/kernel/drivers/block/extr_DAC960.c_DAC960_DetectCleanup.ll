; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_DetectCleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_DetectCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64*, i32, i64, i64, i64, i32, i32 }

@DAC960_MaxLogicalDrives = common dso_local global i32 0, align 4
@DAC960_Controllers = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @DAC960_DetectCleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_DetectCleanup(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 8
  %9 = call i32 @free_dma_loaf(i32 %6, i32* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %53 [
    i32 133, label %18
    i32 134, label %23
    i32 131, label %28
    i32 132, label %33
    i32 129, label %38
    i32 130, label %43
    i32 128, label %48
  ]

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DAC960_GEM_DisableInterrupts(i32 %21)
  br label %53

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DAC960_BA_DisableInterrupts(i32 %26)
  br label %53

28:                                               ; preds = %14
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DAC960_LP_DisableInterrupts(i32 %31)
  br label %53

33:                                               ; preds = %14
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DAC960_LA_DisableInterrupts(i32 %36)
  br label %53

38:                                               ; preds = %14
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @DAC960_PG_DisableInterrupts(i32 %41)
  br label %53

43:                                               ; preds = %14
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DAC960_PD_DisableInterrupts(i32 %46)
  br label %53

48:                                               ; preds = %14
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @DAC960_PD_DisableInterrupts(i32 %51)
  br label %53

53:                                               ; preds = %14, %48, %43, %38, %33, %28, %23, %18
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @iounmap(i64 %56)
  br label %58

58:                                               ; preds = %53, %1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = call i32 @free_irq(i64 %66, %struct.TYPE_5__* %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @release_region(i64 %77, i32 128)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pci_disable_device(i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %108, %79
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @DAC960_MaxLogicalDrives, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %88, %84
  %98 = phi i1 [ false, %84 ], [ %96, %88 ]
  br i1 %98, label %99, label %111

99:                                               ; preds = %97
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @put_disk(i64 %106)
  br label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %84

111:                                              ; preds = %97
  %112 = load i32**, i32*** @DAC960_Controllers, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32*, i32** %112, i64 %115
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = call i32 @kfree(%struct.TYPE_5__* %117)
  ret void
}

declare dso_local i32 @free_dma_loaf(i32, i32*) #1

declare dso_local i32 @DAC960_GEM_DisableInterrupts(i32) #1

declare dso_local i32 @DAC960_BA_DisableInterrupts(i32) #1

declare dso_local i32 @DAC960_LP_DisableInterrupts(i32) #1

declare dso_local i32 @DAC960_LA_DisableInterrupts(i32) #1

declare dso_local i32 @DAC960_PG_DisableInterrupts(i32) #1

declare dso_local i32 @DAC960_PD_DisableInterrupts(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_irq(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @put_disk(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
