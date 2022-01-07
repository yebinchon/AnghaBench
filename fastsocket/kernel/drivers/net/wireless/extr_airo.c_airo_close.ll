; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.airo_info* }
%struct.airo_info = type { i32, i32, i32, %struct.net_device* }

@JOB_DIE = common dso_local global i32 0, align 4
@FLAG_RADIO_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @airo_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airo_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.airo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 1
  %6 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  store %struct.airo_info* %6, %struct.airo_info** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %10 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = icmp ne %struct.net_device* %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %16 = call i32 @disable_interrupts(%struct.airo_info* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.net_device* %20)
  %22 = load i32, i32* @JOB_DIE, align 4
  %23 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %24 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %23, i32 0, i32 1
  %25 = call i32 @set_bit(i32 %22, i32* %24)
  %26 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %27 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kthread_stop(i32 %28)
  br label %30

30:                                               ; preds = %14, %1
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @disable_interrupts(%struct.airo_info*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
