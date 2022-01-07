; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_transfer_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_transfer_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_DMA_SYNC_FRAME = common dso_local global i32 0, align 4
@OMAP_DMA_SYNC_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_transfer_params(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @CSDP(i32 %18)
  %20 = call i32 @dma_read(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = and i32 %21, -4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %15, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @CSDP(i32 %27)
  %29 = call i32 @dma_write(i32 %26, i32 %28)
  %30 = call i64 (...) @cpu_class_is_omap1()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %7
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @CCR(i32 %33)
  %35 = call i32 @dma_read(i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = and i32 %36, -33
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %16, align 4
  %43 = or i32 %42, 32
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @CCR(i32 %46)
  %48 = call i32 @dma_write(i32 %45, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @CCR2(i32 %49)
  %51 = call i32 @dma_read(i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = and i32 %52, -5
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @OMAP_DMA_SYNC_BLOCK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load i32, i32* %16, align 4
  %59 = or i32 %58, 4
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %57, %44
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @CCR2(i32 %62)
  %64 = call i32 @dma_write(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %7
  %66 = call i64 (...) @cpu_class_is_omap2()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %121

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %121

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @CCR(i32 %72)
  %74 = call i32 @dma_read(i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = and i32 %75, -1572896
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %77, -32
  %79 = shl i32 %78, 14
  %80 = load i32, i32* %17, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, 31
  %84 = load i32, i32* %17, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load i32, i32* %17, align 4
  %92 = or i32 %91, 32
  store i32 %92, i32* %17, align 4
  br label %96

93:                                               ; preds = %71
  %94 = load i32, i32* %17, align 4
  %95 = and i32 %94, -33
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @OMAP_DMA_SYNC_BLOCK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %17, align 4
  %103 = or i32 %102, 262144
  store i32 %103, i32* %17, align 4
  br label %107

104:                                              ; preds = %96
  %105 = load i32, i32* %17, align 4
  %106 = and i32 %105, -262145
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %17, align 4
  %112 = or i32 %111, 16777216
  store i32 %112, i32* %17, align 4
  br label %116

113:                                              ; preds = %107
  %114 = load i32, i32* %17, align 4
  %115 = and i32 %114, -16777217
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @CCR(i32 %118)
  %120 = call i32 @dma_write(i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %116, %68, %65
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @CEN(i32 %123)
  %125 = call i32 @dma_write(i32 %122, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @CFN(i32 %127)
  %129 = call i32 @dma_write(i32 %126, i32 %128)
  ret void
}

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CSDP(i32) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i32 @CCR2(i32) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i32 @CEN(i32) #1

declare dso_local i32 @CFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
