; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mxcmci_host = type { %struct.TYPE_5__*, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32*, %struct.mmc_host*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxcmci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mxcmci_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mmc_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.mxcmci_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.mxcmci_host* %8, %struct.mxcmci_host** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call i32 @platform_set_drvdata(%struct.platform_device* %9, i32* null)
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call i32 @mmc_remove_host(%struct.mmc_host* %11)
  %13 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %14 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %19 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (i32*, %struct.mmc_host*)*, i32 (i32*, %struct.mmc_host*)** %21, align 8
  %23 = icmp ne i32 (i32*, %struct.mmc_host*)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %26 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i32*, %struct.mmc_host*)*, i32 (i32*, %struct.mmc_host*)** %28, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = call i32 %29(i32* %31, %struct.mmc_host* %32)
  br label %34

34:                                               ; preds = %24, %17, %1
  %35 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %36 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %39 = call i32 @free_irq(i32 %37, %struct.mxcmci_host* %38)
  %40 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %41 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @iounmap(i32 %42)
  %44 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %45 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clk_disable(i32 %46)
  %48 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %49 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_put(i32 %50)
  %52 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %53 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %58 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call i32 @resource_size(%struct.TYPE_5__* %59)
  %61 = call i32 @release_mem_region(i32 %56, i32 %60)
  %62 = load %struct.mxcmci_host*, %struct.mxcmci_host** %4, align 8
  %63 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @release_resource(%struct.TYPE_5__* %64)
  %66 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %67 = call i32 @mmc_free_host(%struct.mmc_host* %66)
  ret i32 0
}

declare dso_local %struct.mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mxcmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @free_irq(i32, %struct.mxcmci_host*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_5__*) #1

declare dso_local i32 @release_resource(%struct.TYPE_5__*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
