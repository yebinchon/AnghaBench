; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gmch_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gmch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32*, %struct.TYPE_6__* }
%struct.pci_dev = type { i64, i32 }
%struct.agp_bridge_data = type { %struct.pci_dev*, %struct.TYPE_8__*, i32* }

@intel_private = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@intel_gtt_chipsets = common dso_local global %struct.TYPE_9__* null, align 8
@intel_fake_agp_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Intel %s Chipset\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"set gfx device dma mask %d-bit failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gmch_probe(%struct.pci_dev* %0, %struct.pci_dev* %1, %struct.agp_bridge_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.agp_bridge_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.agp_bridge_data* %2, %struct.agp_bridge_data** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 1), align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 3), align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 3), align 8
  store i32 1, i32* %4, align 4
  br label %123

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %67, %15
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @intel_gtt_chipsets, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %70

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @intel_gtt_chipsets, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %40 = call i8* @pci_dev_get(%struct.pci_dev* %39)
  %41 = bitcast i8* %40 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 0), align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @intel_gtt_chipsets, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 1), align 8
  br label %70

48:                                               ; preds = %27
  br label %66

49:                                               ; preds = %24
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @intel_gtt_chipsets, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @find_gmch(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @intel_gtt_chipsets, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 1), align 8
  br label %70

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %16

70:                                               ; preds = %58, %38, %16
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 1), align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %123

74:                                               ; preds = %70
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 3), align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 3), align 8
  %77 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %78 = icmp ne %struct.agp_bridge_data* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %81 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %80, i32 0, i32 2
  store i32* @intel_fake_agp_driver, i32** %81, align 8
  %82 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %83 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %82, i32 0, i32 1
  store %struct.TYPE_8__* @intel_private, %struct.TYPE_8__** %83, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %7, align 8
  %86 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %85, i32 0, i32 0
  store %struct.pci_dev* %84, %struct.pci_dev** %86, align 8
  br label %87

87:                                               ; preds = %79, %74
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = call i8* @pci_dev_get(%struct.pci_dev* %88)
  store i8* %89, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 2), align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @intel_gtt_chipsets, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 1), align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 0), align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @DMA_BIT_MASK(i32 %103)
  %105 = call i64 @pci_set_dma_mask(%struct.TYPE_7__* %102, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %87
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 0), align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %117

112:                                              ; preds = %87
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_private, i32 0, i32 0), align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @DMA_BIT_MASK(i32 %114)
  %116 = call i32 @pci_set_consistent_dma_mask(%struct.TYPE_7__* %113, i32 %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = call i64 (...) @intel_gtt_init()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 (...) @intel_gmch_remove()
  store i32 0, i32* %4, align 4
  br label %123

122:                                              ; preds = %117
  store i32 1, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %120, %73, %12
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i8* @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i64 @find_gmch(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i64 @pci_set_dma_mask(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @intel_gtt_init(...) #1

declare dso_local i32 @intel_gmch_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
