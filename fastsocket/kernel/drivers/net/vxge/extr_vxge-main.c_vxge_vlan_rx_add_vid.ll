; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxgedev = type { i32, %struct.vxge_vpath* }
%struct.vxge_vpath = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @vxge_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_vlan_rx_add_vid(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.vxgedev*, align 8
  %6 = alloca %struct.vxge_vpath*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @netdev_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.vxgedev*
  store %struct.vxgedev* %10, %struct.vxgedev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %14 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %19 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %18, i32 0, i32 1
  %20 = load %struct.vxge_vpath*, %struct.vxge_vpath** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %20, i64 %22
  store %struct.vxge_vpath* %23, %struct.vxge_vpath** %6, align 8
  %24 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %25 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %35

29:                                               ; preds = %17
  %30 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %31 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i16, i16* %4, align 2
  %34 = call i32 @vxge_hw_vpath_vid_add(i32 %32, i16 zeroext %33)
  br label %35

35:                                               ; preds = %29, %28
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %11

38:                                               ; preds = %11
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxge_hw_vpath_vid_add(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
