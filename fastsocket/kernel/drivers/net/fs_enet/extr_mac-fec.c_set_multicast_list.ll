; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_mac-fec.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_mac-fec.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_mc_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IFF_PROMISC, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @set_multicast_start(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.dev_mc_list*, %struct.dev_mc_list** %14, align 8
  store %struct.dev_mc_list* %15, %struct.dev_mc_list** %3, align 8
  br label %16

16:                                               ; preds = %25, %10
  %17 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %18 = icmp ne %struct.dev_mc_list* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %22 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @set_multicast_one(%struct.net_device* %20, i32 %23)
  br label %25

25:                                               ; preds = %19
  %26 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %27 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %26, i32 0, i32 1
  %28 = load %struct.dev_mc_list*, %struct.dev_mc_list** %27, align 8
  store %struct.dev_mc_list* %28, %struct.dev_mc_list** %3, align 8
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @set_multicast_finish(%struct.net_device* %30)
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @set_promiscuous_mode(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @set_multicast_start(%struct.net_device*) #1

declare dso_local i32 @set_multicast_one(%struct.net_device*, i32) #1

declare dso_local i32 @set_multicast_finish(%struct.net_device*) #1

declare dso_local i32 @set_promiscuous_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
