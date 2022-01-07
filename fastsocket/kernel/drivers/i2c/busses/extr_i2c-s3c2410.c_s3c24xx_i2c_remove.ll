; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c24xx_i2c = type { %struct.s3c24xx_i2c*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s3c24xx_i2c*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.s3c24xx_i2c* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.s3c24xx_i2c* %5, %struct.s3c24xx_i2c** %3, align 8
  %6 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %7 = call i32 @s3c24xx_i2c_deregister_cpufreq(%struct.s3c24xx_i2c* %6)
  %8 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %8, i32 0, i32 4
  %10 = call i32 @i2c_del_adapter(i32* %9)
  %11 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.s3c24xx_i2c* %14)
  %16 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable(i32 %18)
  %20 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_put(i32 %22)
  %24 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iounmap(i32 %26)
  %28 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %28, i32 0, i32 0
  %30 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %29, align 8
  %31 = call i32 @release_resource(%struct.s3c24xx_i2c* %30)
  %32 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %32, i32 0, i32 0
  %34 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %33, align 8
  %35 = call i32 @kfree(%struct.s3c24xx_i2c* %34)
  %36 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %3, align 8
  %37 = call i32 @kfree(%struct.s3c24xx_i2c* %36)
  ret i32 0
}

declare dso_local %struct.s3c24xx_i2c* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @s3c24xx_i2c_deregister_cpufreq(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.s3c24xx_i2c*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @kfree(%struct.s3c24xx_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
