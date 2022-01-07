; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4003_init_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4003_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.falcon_board = type { i32, i64 }

@SFE4003_RED_LED_GPIO = common dso_local global i32 0, align 4
@TXC_GPIO_DIR_OUTPUT = common dso_local global i32 0, align 4
@SFE4003_LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @sfe4003_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe4003_init_phy(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_board*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = call %struct.falcon_board* @falcon_board(%struct.efx_nic* %4)
  store %struct.falcon_board* %5, %struct.falcon_board** %3, align 8
  %6 = load %struct.falcon_board*, %struct.falcon_board** %3, align 8
  %7 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.falcon_board*, %struct.falcon_board** %3, align 8
  %12 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %25

16:                                               ; preds = %10, %1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = load i32, i32* @SFE4003_RED_LED_GPIO, align 4
  %19 = load i32, i32* @TXC_GPIO_DIR_OUTPUT, align 4
  %20 = call i32 @falcon_txc_set_gpio_dir(%struct.efx_nic* %17, i32 %18, i32 %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = load i32, i32* @SFE4003_RED_LED_GPIO, align 4
  %23 = load i32, i32* @SFE4003_LED_OFF, align 4
  %24 = call i32 @falcon_txc_set_gpio_val(%struct.efx_nic* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.falcon_board* @falcon_board(%struct.efx_nic*) #1

declare dso_local i32 @falcon_txc_set_gpio_dir(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @falcon_txc_set_gpio_val(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
