; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.sa1100_irda = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@Ser2HSCR2 = common dso_local global i32 0, align 4
@Ser2HSCR0 = common dso_local global i32 0, align 4
@Ser2UTCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa1100_irda_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_irda_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sa1100_irda*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %10)
  store %struct.sa1100_irda* %11, %struct.sa1100_irda** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @unregister_netdev(%struct.net_device* %12)
  %14 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %15 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kfree(i32 %17)
  %19 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %20 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @free_netdev(%struct.net_device* %24)
  br label %26

26:                                               ; preds = %9, %1
  %27 = load i32, i32* @Ser2HSCR2, align 4
  %28 = call i32 @__PREG(i32 %27)
  %29 = call i32 @release_mem_region(i32 %28, i32 4)
  %30 = load i32, i32* @Ser2HSCR0, align 4
  %31 = call i32 @__PREG(i32 %30)
  %32 = call i32 @release_mem_region(i32 %31, i32 28)
  %33 = load i32, i32* @Ser2UTCR0, align 4
  %34 = call i32 @__PREG(i32 %33)
  %35 = call i32 @release_mem_region(i32 %34, i32 36)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @__PREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
