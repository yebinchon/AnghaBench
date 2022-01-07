; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_op32_fill_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_op32_fill_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, %struct.TYPE_2__*, %struct.b43_dmadesc32* }
%struct.TYPE_2__ = type { i32 }
%struct.b43_dmadesc32 = type { i8*, i8* }
%struct.b43_dmadesc_generic = type { %struct.b43_dmadesc32 }

@B43_DMA_ADDR_LOW = common dso_local global i32 0, align 4
@B43_DMA_ADDR_EXT = common dso_local global i32 0, align 4
@B43_DMA32_DCTL_BYTECNT = common dso_local global i32 0, align 4
@B43_DMA32_DCTL_DTABLEEND = common dso_local global i32 0, align 4
@B43_DMA32_DCTL_FRAMESTART = common dso_local global i32 0, align 4
@B43_DMA32_DCTL_FRAMEEND = common dso_local global i32 0, align 4
@B43_DMA32_DCTL_IRQ = common dso_local global i32 0, align 4
@B43_DMA32_DCTL_ADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43_DMA32_DCTL_ADDREXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i32, i32, i32, i32, i32)* @op32_fill_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op32_fill_descriptor(%struct.b43_dmaring* %0, %struct.b43_dmadesc_generic* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.b43_dmaring*, align 8
  %9 = alloca %struct.b43_dmadesc_generic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.b43_dmadesc32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %8, align 8
  store %struct.b43_dmadesc_generic* %1, %struct.b43_dmadesc_generic** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %21 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %20, i32 0, i32 2
  %22 = load %struct.b43_dmadesc32*, %struct.b43_dmadesc32** %21, align 8
  store %struct.b43_dmadesc32* %22, %struct.b43_dmadesc32** %15, align 8
  %23 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %24 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %23, i32 0, i32 0
  %25 = load %struct.b43_dmadesc32*, %struct.b43_dmadesc32** %15, align 8
  %26 = ptrtoint %struct.b43_dmadesc32* %24 to i64
  %27 = ptrtoint %struct.b43_dmadesc32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 16
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %7
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %36 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br label %39

39:                                               ; preds = %33, %7
  %40 = phi i1 [ false, %7 ], [ %38, %33 ]
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @B43_WARN_ON(i32 %42)
  %44 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %45 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @B43_DMA_ADDR_LOW, align 4
  %50 = call i32 @b43_dma_address(i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %52 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @B43_DMA_ADDR_EXT, align 4
  %57 = call i32 @b43_dma_address(i32* %54, i32 %55, i32 %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @B43_DMA32_DCTL_BYTECNT, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %63 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %39
  %68 = load i32, i32* @B43_DMA32_DCTL_DTABLEEND, align 4
  %69 = load i32, i32* %17, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %67, %39
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @B43_DMA32_DCTL_FRAMESTART, align 4
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @B43_DMA32_DCTL_FRAMEEND, align 4
  %83 = load i32, i32* %17, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @B43_DMA32_DCTL_IRQ, align 4
  %90 = load i32, i32* %17, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* @B43_DMA32_DCTL_ADDREXT_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @B43_DMA32_DCTL_ADDREXT_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %17, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %103 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.b43_dmadesc32, %struct.b43_dmadesc32* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* %18, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %108 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.b43_dmadesc32, %struct.b43_dmadesc32* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_dma_address(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
