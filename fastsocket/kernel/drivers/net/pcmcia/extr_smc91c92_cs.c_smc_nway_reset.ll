; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_nway_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smc_private = type { i32, i32 }

@CFG_MII_SELECT = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smc_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.smc_private* @netdev_priv(%struct.net_device* %8)
  store %struct.smc_private* %9, %struct.smc_private** %4, align 8
  %10 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %11 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CFG_MII_SELECT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* @BANK_SELECT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inw(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = call i32 @SMC_SELECT_BANK(i32 3)
  %26 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %27 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %26, i32 0, i32 1
  %28 = call i32 @mii_nway_restart(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SMC_SELECT_BANK(i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @mii_nway_restart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
