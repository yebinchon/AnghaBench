; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iopgtable_clear_entry_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iopgtable_clear_entry_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }

@IOPGD_TABLE = common dso_local global i32 0, align 4
@IOPTE_SIZE = common dso_local global i64 0, align 8
@IOPTE_LARGE = common dso_local global i32 0, align 4
@IOLARGE_MASK = common dso_local global i32 0, align 4
@PTRS_PER_IOPTE = common dso_local global i32 0, align 4
@IOPGD_SIZE = common dso_local global i64 0, align 8
@IOPGD_SUPER = common dso_local global i32 0, align 4
@IOSUPER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu*, i32)* @iopgtable_clear_entry_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iopgtable_clear_entry_core(%struct.iommu* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.iommu* %0, %struct.iommu** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iommu*, %struct.iommu** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @iopgd_offset(%struct.iommu* %11, i32 %12)
  store i32* %13, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %122

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IOPGD_TABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %18
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @iopte_offset(i32* %25, i32 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i64, i64* @IOPTE_SIZE, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IOPTE_LARGE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 16
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = load i32, i32* @IOLARGE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %10, align 8
  br label %43

43:                                               ; preds = %34, %24
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = mul i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(i32* %48, i32 0, i32 %52)
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = call i32 @flush_iopte_range(i32* %54, i32* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32* @iopte_offset(i32* %62, i32 0)
  store i32* %63, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %77, %43
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @PTRS_PER_IOPTE, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %120

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %64

80:                                               ; preds = %64
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @iopte_free(i32* %81)
  store i32 1, i32* %8, align 4
  br label %105

83:                                               ; preds = %18
  %84 = load i64, i64* @IOPGD_SIZE, align 8
  store i64 %84, i64* %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IOPGD_SUPER, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @IOPGD_SUPER, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 16
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = ptrtoint i32* %94 to i32
  %96 = load i32, i32* @IOSUPER_MASK, align 4
  %97 = and i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %7, align 8
  br label %100

100:                                              ; preds = %91, %83
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8
  %104 = mul i64 %103, %102
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %100, %80
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i32* %106, i32 0, i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = call i32 @flush_iopgd_range(i32* %112, i32* %118)
  br label %120

120:                                              ; preds = %105, %75
  %121 = load i64, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %120, %17
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i32* @iopgd_offset(%struct.iommu*, i32) #1

declare dso_local i32* @iopte_offset(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @flush_iopte_range(i32*, i32*) #1

declare dso_local i32 @iopte_free(i32*) #1

declare dso_local i32 @flush_iopgd_range(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
