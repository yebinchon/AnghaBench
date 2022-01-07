; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@rx_page = common dso_local global i64 0, align 8
@RESET = common dso_local global i32 0, align 4
@STOP_RESET = common dso_local global i32 0, align 4
@DE600_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de600_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de600_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = call i32 (...) @select_nic()
  store i64 0, i64* @rx_page, align 8
  %4 = load i32, i32* @RESET, align 4
  %5 = call i32 @de600_put_command(i32 %4)
  %6 = load i32, i32* @STOP_RESET, align 4
  %7 = call i32 @de600_put_command(i32 %6)
  %8 = call i32 @de600_put_command(i32 0)
  %9 = call i32 (...) @select_prn()
  %10 = load i32, i32* @DE600_IRQ, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.net_device* %11)
  ret i32 0
}

declare dso_local i32 @select_nic(...) #1

declare dso_local i32 @de600_put_command(i32) #1

declare dso_local i32 @select_prn(...) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
