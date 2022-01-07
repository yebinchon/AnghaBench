; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32, i32, i64, i32 }

@STOP_TRIES = common dso_local global i32 0, align 4
@REG_MAC_RX_CFG = common dso_local global i64 0, align 8
@MAC_RX_CFG_EN = common dso_local global i32 0, align 4
@MAC_RX_CFG_PROMISC_EN = common dso_local global i32 0, align 4
@MAC_RX_CFG_HASH_FILTER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cas_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.cas* @netdev_priv(%struct.net_device* %8)
  store %struct.cas* %9, %struct.cas** %3, align 8
  %10 = load i32, i32* @STOP_TRIES, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.cas*, %struct.cas** %3, align 8
  %12 = getelementptr inbounds %struct.cas, %struct.cas* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.cas*, %struct.cas** %3, align 8
  %18 = getelementptr inbounds %struct.cas, %struct.cas* %17, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.cas*, %struct.cas** %3, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MAC_RX_CFG_EN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load %struct.cas*, %struct.cas** %3, align 8
  %32 = getelementptr inbounds %struct.cas, %struct.cas* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %52, %16
  %38 = load %struct.cas*, %struct.cas** %3, align 8
  %39 = getelementptr inbounds %struct.cas, %struct.cas* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  %44 = load i32, i32* @MAC_RX_CFG_EN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  %53 = call i32 @udelay(i32 10)
  br label %37

54:                                               ; preds = %51, %37
  %55 = load i32, i32* @STOP_TRIES, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @MAC_RX_CFG_PROMISC_EN, align 4
  %57 = load i32, i32* @MAC_RX_CFG_HASH_FILTER_EN, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MAC_RX_CFG_EN, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load %struct.cas*, %struct.cas** %3, align 8
  %67 = getelementptr inbounds %struct.cas, %struct.cas* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %87, %54
  %73 = load %struct.cas*, %struct.cas** %3, align 8
  %74 = getelementptr inbounds %struct.cas, %struct.cas* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  %79 = load i32, i32* @MAC_RX_CFG_HASH_FILTER_EN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %7, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %89

87:                                               ; preds = %82
  %88 = call i32 @udelay(i32 10)
  br label %72

89:                                               ; preds = %86, %72
  %90 = load %struct.cas*, %struct.cas** %3, align 8
  %91 = call i32 @cas_setup_multicast(%struct.cas* %90)
  store i32 %91, i32* %5, align 4
  %92 = load %struct.cas*, %struct.cas** %3, align 8
  %93 = getelementptr inbounds %struct.cas, %struct.cas* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.cas*, %struct.cas** %3, align 8
  %99 = getelementptr inbounds %struct.cas, %struct.cas* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.cas*, %struct.cas** %3, align 8
  %105 = getelementptr inbounds %struct.cas, %struct.cas* %104, i32 0, i32 1
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %89, %15
  ret void
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cas_setup_multicast(%struct.cas*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
