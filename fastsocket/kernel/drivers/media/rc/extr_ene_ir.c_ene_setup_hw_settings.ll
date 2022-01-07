; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_setup_hw_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_setup_hw_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ene_device*)* @ene_setup_hw_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_setup_hw_settings(%struct.ene_device* %0) #0 {
  %2 = alloca %struct.ene_device*, align 8
  store %struct.ene_device* %0, %struct.ene_device** %2, align 8
  %3 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %4 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %9 = call i32 @ene_tx_set_carrier(%struct.ene_device* %8)
  %10 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %11 = call i32 @ene_tx_set_transmitters(%struct.ene_device* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.ene_device*, %struct.ene_device** %2, align 8
  %14 = call i32 @ene_rx_setup(%struct.ene_device* %13)
  ret void
}

declare dso_local i32 @ene_tx_set_carrier(%struct.ene_device*) #1

declare dso_local i32 @ene_tx_set_transmitters(%struct.ene_device*) #1

declare dso_local i32 @ene_rx_setup(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
