; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_led_blink_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_led_blink_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, i32, %struct.pcnet32_access }
%struct.pcnet32_access = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@PCNET32_BLINK_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pcnet32_led_blink_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_led_blink_callback(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet32_private*, align 8
  %4 = alloca %struct.pcnet32_access*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %8)
  store %struct.pcnet32_private* %9, %struct.pcnet32_private** %3, align 8
  %10 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %11 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %10, i32 0, i32 2
  store %struct.pcnet32_access* %11, %struct.pcnet32_access** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %16 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 4, i32* %7, align 4
  br label %19

19:                                               ; preds = %36, %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.pcnet32_access*, %struct.pcnet32_access** %4, align 8
  %24 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %23, i32 0, i32 1
  %25 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.pcnet32_access*, %struct.pcnet32_access** %4, align 8
  %29 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %28, i32 0, i32 0
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 %30(i32 %31, i32 %32)
  %34 = xor i32 %33, 16384
  %35 = call i32 %25(i32 %26, i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %41 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %40, i32 0, i32 1
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %45 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %44, i32 0, i32 0
  %46 = load i32, i32* @PCNET32_BLINK_TIMEOUT, align 4
  %47 = call i32 @mod_timer(i32* %45, i32 %46)
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
