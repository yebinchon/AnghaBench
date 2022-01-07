; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_pxaficp_ir.c_pxa_irda_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_pxaficp_ir.c_pxa_irda_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.pxa_irda = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32)*, i32 }

@STUART = common dso_local global i32 0, align 4
@FICP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_irda_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_irda_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pxa_irda*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %66

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.pxa_irda* @netdev_priv(%struct.net_device* %10)
  store %struct.pxa_irda* %11, %struct.pxa_irda** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @unregister_netdev(%struct.net_device* %12)
  %14 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %15 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @gpio_is_valid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %23 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gpio_free(i32 %26)
  br label %28

28:                                               ; preds = %21, %9
  %29 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %30 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = icmp ne i32 (i32)* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %37 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %36, i32 0, i32 5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %42 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %40(i32 %43)
  br label %45

45:                                               ; preds = %35, %28
  %46 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %47 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  %51 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %52 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kfree(i32 %54)
  %56 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %57 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_put(i32 %58)
  %60 = load %struct.pxa_irda*, %struct.pxa_irda** %4, align 8
  %61 = getelementptr inbounds %struct.pxa_irda, %struct.pxa_irda* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_put(i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @free_netdev(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %45, %1
  %67 = load i32, i32* @STUART, align 4
  %68 = call i32 @__PREG(i32 %67)
  %69 = call i32 @release_mem_region(i32 %68, i32 36)
  %70 = load i32, i32* @FICP, align 4
  %71 = call i32 @__PREG(i32 %70)
  %72 = call i32 @release_mem_region(i32 %71, i32 28)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.pxa_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @__PREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
