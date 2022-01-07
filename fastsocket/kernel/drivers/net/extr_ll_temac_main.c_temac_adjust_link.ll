; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.temac_local = type { i32, i32, %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32 }

@XTE_EMCFG_OFFSET = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_MASK = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_1000 = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_100 = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_10 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @temac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.temac_local* @netdev_priv(%struct.net_device* %7)
  store %struct.temac_local* %8, %struct.temac_local** %3, align 8
  %9 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %10 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %9, i32 0, i32 2
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 1
  %19 = or i32 %14, %18
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %25 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %28 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %1
  %33 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %34 = load i32, i32* @XTE_EMCFG_OFFSET, align 4
  %35 = call i32 @temac_indirect_in32(%struct.temac_local* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @XTE_EMCFG_LINKSPD_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %55 [
    i32 128, label %43
    i32 129, label %47
    i32 130, label %51
  ]

43:                                               ; preds = %32
  %44 = load i32, i32* @XTE_EMCFG_LINKSPD_1000, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %32
  %48 = load i32, i32* @XTE_EMCFG_LINKSPD_100, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %32
  %52 = load i32, i32* @XTE_EMCFG_LINKSPD_10, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %32, %51, %47, %43
  %56 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %57 = load i32, i32* @XTE_EMCFG_OFFSET, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @temac_indirect_out32(%struct.temac_local* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %62 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %64 = call i32 @phy_print_status(%struct.phy_device* %63)
  br label %65

65:                                               ; preds = %55, %1
  %66 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %67 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temac_indirect_in32(%struct.temac_local*, i32) #1

declare dso_local i32 @temac_indirect_out32(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
