; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_uli526x_reset_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_uli526x.c_uli526x_reset_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.uli526x_board_info = type { i32, i32, i32, i64, i64, i64 }

@CR6_RXSC = common dso_local global i32 0, align 4
@CR6_TXSC = common dso_local global i32 0, align 4
@DCR7 = common dso_local global i64 0, align 8
@DCR5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @uli526x_reset_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_reset_prepare(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.uli526x_board_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.uli526x_board_info* @netdev_priv(%struct.net_device* %4)
  store %struct.uli526x_board_info* %5, %struct.uli526x_board_info** %3, align 8
  %6 = load i32, i32* @CR6_RXSC, align 4
  %7 = load i32, i32* @CR6_TXSC, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %11 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %15 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @update_cr6(i32 %16, i64 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DCR7, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outl(i32 0, i64 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DCR5, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inl(i64 %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DCR5, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outl(i32 %32, i64 %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @netif_stop_queue(%struct.net_device* %39)
  %41 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %42 = call i32 @uli526x_free_rxbuffer(%struct.uli526x_board_info* %41)
  %43 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %44 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %46 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %48 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %50 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %3, align 8
  %52 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  ret void
}

declare dso_local %struct.uli526x_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @update_cr6(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @uli526x_free_rxbuffer(%struct.uli526x_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
