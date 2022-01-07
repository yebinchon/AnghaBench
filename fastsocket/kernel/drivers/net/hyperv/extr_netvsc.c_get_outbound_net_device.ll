; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_get_outbound_net_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc.c_get_outbound_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i64 }
%struct.hv_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netvsc_device* (%struct.hv_device*)* @get_outbound_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netvsc_device* @get_outbound_net_device(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.netvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %4 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %5 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %4)
  store %struct.netvsc_device* %5, %struct.netvsc_device** %3, align 8
  %6 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %7 = icmp ne %struct.netvsc_device* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %10 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store %struct.netvsc_device* null, %struct.netvsc_device** %3, align 8
  br label %14

14:                                               ; preds = %13, %8, %1
  %15 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  ret %struct.netvsc_device* %15
}

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
