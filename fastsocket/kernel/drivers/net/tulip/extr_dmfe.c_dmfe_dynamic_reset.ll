; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_dynamic_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_dmfe.c_dmfe_dynamic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DEVICE = type { i64 }
%struct.dmfe_board_info = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"dmfe_dynamic_reset()\00", align 1
@CR6_RXSC = common dso_local global i32 0, align 4
@CR6_TXSC = common dso_local global i32 0, align 4
@DCR7 = common dso_local global i64 0, align 8
@DCR5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.DEVICE*)* @dmfe_dynamic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmfe_dynamic_reset(%struct.DEVICE* %0) #0 {
  %2 = alloca %struct.DEVICE*, align 8
  %3 = alloca %struct.dmfe_board_info*, align 8
  store %struct.DEVICE* %0, %struct.DEVICE** %2, align 8
  %4 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %5 = call %struct.dmfe_board_info* @netdev_priv(%struct.DEVICE* %4)
  store %struct.dmfe_board_info* %5, %struct.dmfe_board_info** %3, align 8
  %6 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = load i32, i32* @CR6_RXSC, align 4
  %8 = load i32, i32* @CR6_TXSC, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %12 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %16 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %19 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @update_cr6(i32 %17, i64 %20)
  %22 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %23 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DCR7, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outl(i32 0, i64 %26)
  %28 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %29 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DCR5, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inl(i64 %32)
  %34 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %35 = getelementptr inbounds %struct.DEVICE, %struct.DEVICE* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DCR5, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outl(i32 %33, i64 %38)
  %40 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %41 = call i32 @netif_stop_queue(%struct.DEVICE* %40)
  %42 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %43 = call i32 @dmfe_free_rxbuffer(%struct.dmfe_board_info* %42)
  %44 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %45 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %47 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %49 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %51 = call i32 @netif_carrier_off(%struct.DEVICE* %50)
  %52 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %3, align 8
  %53 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %55 = call i32 @dmfe_init_dm910x(%struct.DEVICE* %54)
  %56 = load %struct.DEVICE*, %struct.DEVICE** %2, align 8
  %57 = call i32 @netif_wake_queue(%struct.DEVICE* %56)
  ret void
}

declare dso_local %struct.dmfe_board_info* @netdev_priv(%struct.DEVICE*) #1

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @update_cr6(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.DEVICE*) #1

declare dso_local i32 @dmfe_free_rxbuffer(%struct.dmfe_board_info*) #1

declare dso_local i32 @netif_carrier_off(%struct.DEVICE*) #1

declare dso_local i32 @dmfe_init_dm910x(%struct.DEVICE*) #1

declare dso_local i32 @netif_wake_queue(%struct.DEVICE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
