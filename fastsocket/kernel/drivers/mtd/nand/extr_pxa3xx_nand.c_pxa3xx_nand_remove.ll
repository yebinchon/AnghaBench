; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtd_info = type { %struct.pxa3xx_nand_info* }
%struct.pxa3xx_nand_info = type { i32, i32, %struct.mtd_info*, i32, i32, i32 }
%struct.resource = type { i32 }

@IRQ_NAND = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa3xx_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.pxa3xx_nand_info*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.mtd_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %3, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %9, align 8
  store %struct.pxa3xx_nand_info* %10, %struct.pxa3xx_nand_info** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @platform_set_drvdata(%struct.platform_device* %11, i32* null)
  %13 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %14 = call i32 @del_mtd_device(%struct.mtd_info* %13)
  %15 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %16 = call i32 @del_mtd_partitions(%struct.mtd_info* %15)
  %17 = load i32, i32* @IRQ_NAND, align 4
  %18 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.pxa3xx_nand_info* %18)
  %20 = load i64, i64* @use_dma, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %24 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pxa_free_dma(i32 %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %30 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %33 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %32, i32 0, i32 2
  %34 = load %struct.mtd_info*, %struct.mtd_info** %33, align 8
  %35 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %36 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_writecombine(i32* %28, i32 %31, %struct.mtd_info* %34, i32 %37)
  br label %44

39:                                               ; preds = %1
  %40 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %41 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %40, i32 0, i32 2
  %42 = load %struct.mtd_info*, %struct.mtd_info** %41, align 8
  %43 = call i32 @kfree(%struct.mtd_info* %42)
  br label %44

44:                                               ; preds = %39, %22
  %45 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %46 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iounmap(i32 %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %5, align 8
  %52 = load %struct.resource*, %struct.resource** %5, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = call i32 @resource_size(%struct.resource* %55)
  %57 = call i32 @release_mem_region(i32 %54, i32 %56)
  %58 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %59 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @clk_disable(i32 %60)
  %62 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %63 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_put(i32 %64)
  %66 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %67 = call i32 @kfree(%struct.mtd_info* %66)
  ret i32 0
}

declare dso_local %struct.mtd_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @del_mtd_device(%struct.mtd_info*) #1

declare dso_local i32 @del_mtd_partitions(%struct.mtd_info*) #1

declare dso_local i32 @free_irq(i32, %struct.pxa3xx_nand_info*) #1

declare dso_local i32 @pxa_free_dma(i32) #1

declare dso_local i32 @dma_free_writecombine(i32*, i32, %struct.mtd_info*, i32) #1

declare dso_local i32 @kfree(%struct.mtd_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
