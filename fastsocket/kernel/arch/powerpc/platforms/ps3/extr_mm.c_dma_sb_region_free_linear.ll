; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_region_free_linear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/ps3/extr_mm.c_dma_sb_region_free_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ps3_dma_region = type { i64, i64 }

@map = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_dma_region*)* @dma_sb_region_free_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_sb_region_free_linear(%struct.ps3_dma_region* %0) #0 {
  %2 = alloca %struct.ps3_dma_region*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ps3_dma_region* %0, %struct.ps3_dma_region** %2, align 8
  %7 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %8 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 0), align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 1), align 8
  %14 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %15 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 0), align 8
  %19 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %20 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %25 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %30 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %28, %12
  %33 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @dma_sb_lpar_to_bus(%struct.ps3_dma_region* %33, i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @dma_sb_unmap_area(%struct.ps3_dma_region* %36, i32 %37, i64 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @BUG_ON(i32 %40)
  br label %42

42:                                               ; preds = %32, %1
  %43 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %44 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %47 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 0), align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %88

52:                                               ; preds = %42
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 1, i32 0), align 8
  store i64 %53, i64* %6, align 8
  %54 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %55 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  %57 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %58 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 0), align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %64 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 0), align 8
  %67 = sub i64 %65, %66
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %78

70:                                               ; preds = %52
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @map, i32 0, i32 0, i32 0), align 8
  %72 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %73 = getelementptr inbounds %struct.ps3_dma_region, %struct.ps3_dma_region* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %71, %74
  %76 = load i64, i64* %5, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %70, %62
  %79 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @dma_sb_lpar_to_bus(%struct.ps3_dma_region* %79, i64 %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @dma_sb_unmap_area(%struct.ps3_dma_region* %82, i32 %83, i64 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @BUG_ON(i32 %86)
  br label %88

88:                                               ; preds = %78, %42
  %89 = load %struct.ps3_dma_region*, %struct.ps3_dma_region** %2, align 8
  %90 = call i32 @dma_sb_region_free(%struct.ps3_dma_region* %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dma_sb_lpar_to_bus(%struct.ps3_dma_region*, i64) #1

declare dso_local i32 @dma_sb_unmap_area(%struct.ps3_dma_region*, i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_sb_region_free(%struct.ps3_dma_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
