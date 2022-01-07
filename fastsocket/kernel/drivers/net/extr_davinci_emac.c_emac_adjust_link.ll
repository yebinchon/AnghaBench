; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_priv = type { i64, i32, i32, %struct.phy_device*, i32 }
%struct.phy_device = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.emac_priv* %8, %struct.emac_priv** %3, align 8
  %9 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %10 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %9, i32 0, i32 3
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %12, i32 0, i32 2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %1
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %25 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %33 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %39 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %47 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %34
  %49 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %50 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  %54 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %55 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %70

57:                                               ; preds = %1
  %58 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %59 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  %63 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %64 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  %65 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %66 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %68 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %67, i32 0, i32 4
  store i32 -1, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %57
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %75 = call i32 @emac_update_phystatus(%struct.emac_priv* %74)
  %76 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %77 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %76, i32 0, i32 3
  %78 = load %struct.phy_device*, %struct.phy_device** %77, align 8
  %79 = call i32 @phy_print_status(%struct.phy_device* %78)
  br label %80

80:                                               ; preds = %73, %70
  %81 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %82 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  ret void
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @emac_update_phystatus(%struct.emac_priv*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
