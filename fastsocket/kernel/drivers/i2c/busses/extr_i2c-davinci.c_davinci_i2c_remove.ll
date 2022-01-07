; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_davinci_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.davinci_i2c_dev = type { i32*, i32 }
%struct.resource = type { i32 }

@DAVINCI_I2C_MDR_REG = common dso_local global i32 0, align 4
@IRQ_I2C = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.davinci_i2c_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.davinci_i2c_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.davinci_i2c_dev* %6, %struct.davinci_i2c_dev** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call i32 @platform_set_drvdata(%struct.platform_device* %7, i32* null)
  %9 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %9, i32 0, i32 1
  %11 = call i32 @i2c_del_adapter(i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @put_device(i32* %13)
  %15 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @clk_disable(i32* %17)
  %19 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %20 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @clk_put(i32* %21)
  %23 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %24 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %26 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %27 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %25, i32 %26, i32 0)
  %28 = load i32, i32* @IRQ_I2C, align 4
  %29 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.davinci_i2c_dev* %29)
  %31 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %32 = call i32 @kfree(%struct.davinci_i2c_dev* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %4, align 8
  %36 = load %struct.resource*, %struct.resource** %4, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = call i32 @resource_size(%struct.resource* %39)
  %41 = call i32 @release_mem_region(i32 %38, i32 %40)
  ret i32 0
}

declare dso_local %struct.davinci_i2c_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @clk_disable(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.davinci_i2c_dev*) #1

declare dso_local i32 @kfree(%struct.davinci_i2c_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
