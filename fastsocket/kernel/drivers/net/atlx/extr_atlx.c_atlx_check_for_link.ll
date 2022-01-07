; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_check_for_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_check_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atlx_adapter = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s link is down\0A\00", align 1
@SPEED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atlx_adapter*)* @atlx_check_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atlx_check_for_link(%struct.atlx_adapter* %0) #0 {
  %2 = alloca %struct.atlx_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.atlx_adapter* %0, %struct.atlx_adapter** %2, align 8
  %5 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %5, i32 0, i32 6
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %8, i32 0, i32 4
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %13, i32 0, i32 5
  %15 = load i32, i32* @MII_BMSR, align 4
  %16 = call i32 @atlx_read_phy_reg(i32* %14, i32 %15, i32* %4)
  %17 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %17, i32 0, i32 5
  %19 = load i32, i32* @MII_BMSR, align 4
  %20 = call i32 @atlx_read_phy_reg(i32* %18, i32 %19, i32* %4)
  %21 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %21, i32 0, i32 4
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BMSR_LSTATUS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i64 @netif_carrier_ok(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @SPEED_0, align 4
  %42 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netif_carrier_off(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %32, %28
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.atlx_adapter*, %struct.atlx_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %48, i32 0, i32 1
  %50 = call i32 @schedule_work(i32* %49)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atlx_read_phy_reg(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
