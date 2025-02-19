; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfn4112f_set_id_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfn4112f_set_id_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@QUAKE_LED_OFF = common dso_local global i32 0, align 4
@QUAKE_LED_ON = common dso_local global i32 0, align 4
@QUAKE_LED_RXLINK = common dso_local global i32 0, align 4
@QUAKE_LED_LINK_STAT = common dso_local global i32 0, align 4
@SFN4112F_LINK_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32)* @sfn4112f_set_id_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfn4112f_set_id_led(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %11 [
    i32 129, label %7
    i32 128, label %9
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @QUAKE_LED_OFF, align 4
  store i32 %8, i32* %5, align 4
  br label %15

9:                                                ; preds = %2
  %10 = load i32, i32* @QUAKE_LED_ON, align 4
  store i32 %10, i32* %5, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @QUAKE_LED_RXLINK, align 4
  %13 = load i32, i32* @QUAKE_LED_LINK_STAT, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %9, %7
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = load i32, i32* @SFN4112F_LINK_LED, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @falcon_qt202x_set_led(%struct.efx_nic* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @falcon_qt202x_set_led(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
