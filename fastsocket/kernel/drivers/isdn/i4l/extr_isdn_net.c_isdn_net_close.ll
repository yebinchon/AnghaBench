; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @isdn_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i32 @netif_stop_queue(%struct.net_device* %4)
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.net_device* @MASTER_TO_SLAVE(%struct.net_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %14, %10
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @isdn_net_hangup(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.net_device* @MASTER_TO_SLAVE(%struct.net_device* %17)
  store %struct.net_device* %18, %struct.net_device** %3, align 8
  br label %11

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @isdn_net_hangup(%struct.net_device* %21)
  %23 = call i32 (...) @isdn_unlock_drivers()
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local %struct.net_device* @MASTER_TO_SLAVE(%struct.net_device*) #1

declare dso_local i32 @isdn_net_hangup(%struct.net_device*) #1

declare dso_local i32 @isdn_unlock_drivers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
