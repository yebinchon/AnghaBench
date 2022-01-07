; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gtt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_gtt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__*, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_4__ = type { i32 }

@intel_private = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@I810_PGETBL_CTL = common dso_local global i64 0, align 8
@I810_PGETBL_ENABLED = common dso_local global i32 0, align 4
@HAS_PGTBL_EN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"detected gtt size: %dK total, %dK mappable\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USE_PCI_DMA_API = common dso_local global i64 0, align 8
@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@I810_GMADDR = common dso_local global i32 0, align 4
@I915_GMADDR = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_gtt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gtt_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 8), align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32 (...)*, i32 (...)** %6, align 8
  %8 = call i32 (...) %7()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %1, align 4
  br label %96

13:                                               ; preds = %0
  %14 = call i32 (...) @intel_gtt_mappable_entries()
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 0), align 8
  %15 = call i32 (...) @intel_gtt_total_entries()
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 1), align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 7), align 8
  %17 = load i64, i64* @I810_PGETBL_CTL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i32, i32* @I810_PGETBL_ENABLED, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2), align 8
  %23 = load i64, i64* @HAS_PGTBL_EN, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load i32, i32* @I810_PGETBL_ENABLED, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2), align 8
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2), align 8
  br label %29

29:                                               ; preds = %25, %13
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 11), align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 1), align 4
  %33 = mul nsw i32 %32, 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 0), align 8
  %35 = mul nsw i32 %34, 4
  %36 = call i32 @dev_info(i32* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 1), align 4
  %38 = mul nsw i32 %37, 4
  store i32 %38, i32* %3, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 9), align 8
  %39 = call i64 (...) @intel_gtt_can_wc()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 10), align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32* @ioremap_wc(i32 %42, i32 %43)
  store i32* %44, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 9), align 8
  br label %45

45:                                               ; preds = %41, %29
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 9), align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 10), align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i32* @ioremap(i32 %49, i32 %50)
  store i32* %51, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 9), align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 9), align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 8), align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32 (...)*, i32 (...)** %57, align 8
  %59 = call i32 (...) %58()
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 7), align 8
  %61 = call i32 @iounmap(i64 %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %1, align 4
  br label %96

64:                                               ; preds = %52
  %65 = call i32 (...) @global_cache_flush()
  %66 = call i32 (...) @intel_gtt_stolen_size()
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 6), align 8
  %67 = load i64, i64* @USE_PCI_DMA_API, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @INTEL_GTT_GEN, align 4
  %71 = icmp sgt i32 %70, 2
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i1 [ false, %64 ], [ %71, %69 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 3), align 4
  %75 = call i32 (...) @intel_gtt_setup_scratch_page()
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = call i32 (...) @intel_gtt_cleanup()
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %1, align 4
  br label %96

81:                                               ; preds = %72
  %82 = load i32, i32* @INTEL_GTT_GEN, align 4
  %83 = icmp sle i32 %82, 2
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 5), align 4
  %86 = load i32, i32* @I810_GMADDR, align 4
  %87 = call i32 @pci_read_config_dword(i32 %85, i32 %86, i32* %2)
  br label %92

88:                                               ; preds = %81
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 5), align 4
  %90 = load i32, i32* @I915_GMADDR, align 4
  %91 = call i32 @pci_read_config_dword(i32 %89, i32 %90, i32* %2)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 4), align 8
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %92, %78, %55, %11
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @intel_gtt_mappable_entries(...) #1

declare dso_local i32 @intel_gtt_total_entries(...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i64 @intel_gtt_can_wc(...) #1

declare dso_local i32* @ioremap_wc(i32, i32) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local i32 @intel_gtt_stolen_size(...) #1

declare dso_local i32 @intel_gtt_setup_scratch_page(...) #1

declare dso_local i32 @intel_gtt_cleanup(...) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
