; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_map_area_linear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_map_area_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_dma_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_dma_region*, i64, i64, i32*, i32)* @dma_sb_map_area_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_sb_map_area_linear(%struct.ps3_dma_region* %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.ps3_dma_region*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ps3_dma_region* %0, %struct.ps3_dma_region** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @is_kernel_addr(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @__pa(i64 %16)
  br label %20

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i64 [ %17, %15 ], [ %19, %18 ]
  store i64 %21, i64* %11, align 8
  %22 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @ps3_mm_phys_to_lpar(i64 %23)
  %25 = call i32 @dma_sb_lpar_to_bus(%struct.ps3_dma_region* %22, i32 %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  ret i32 0
}

declare dso_local i64 @is_kernel_addr(i64) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @dma_sb_lpar_to_bus(%struct.ps3_dma_region*, i32) #1

declare dso_local i32 @ps3_mm_phys_to_lpar(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
