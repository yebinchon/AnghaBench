; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_eth1394_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_eth1394_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_directory = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.eth1394_host_info = type { i32 }
%struct.eth1394_priv = type { i32 }
%struct.eth1394_node_ref = type { i32 }

@eth1394_highlevel = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unit_directory*)* @eth1394_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth1394_update(%struct.unit_directory* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unit_directory*, align 8
  %4 = alloca %struct.eth1394_host_info*, align 8
  %5 = alloca %struct.eth1394_priv*, align 8
  %6 = alloca %struct.eth1394_node_ref*, align 8
  store %struct.unit_directory* %0, %struct.unit_directory** %3, align 8
  %7 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %8 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.eth1394_host_info* @hpsb_get_hostinfo(i32* @eth1394_highlevel, i32 %11)
  store %struct.eth1394_host_info* %12, %struct.eth1394_host_info** %4, align 8
  %13 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %4, align 8
  %14 = icmp ne %struct.eth1394_host_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %4, align 8
  %20 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.eth1394_priv* @netdev_priv(i32 %21)
  store %struct.eth1394_priv* %22, %struct.eth1394_priv** %5, align 8
  %23 = load %struct.eth1394_priv*, %struct.eth1394_priv** %5, align 8
  %24 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %23, i32 0, i32 0
  %25 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %26 = call %struct.eth1394_node_ref* @eth1394_find_node(i32* %24, %struct.unit_directory* %25)
  store %struct.eth1394_node_ref* %26, %struct.eth1394_node_ref** %6, align 8
  %27 = load %struct.eth1394_node_ref*, %struct.eth1394_node_ref** %6, align 8
  %28 = icmp ne %struct.eth1394_node_ref* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %34

30:                                               ; preds = %18
  %31 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %4, align 8
  %32 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %33 = call i32 @eth1394_new_node(%struct.eth1394_host_info* %31, %struct.unit_directory* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %29, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.eth1394_host_info* @hpsb_get_hostinfo(i32*, i32) #1

declare dso_local %struct.eth1394_priv* @netdev_priv(i32) #1

declare dso_local %struct.eth1394_node_ref* @eth1394_find_node(i32*, %struct.unit_directory*) #1

declare dso_local i32 @eth1394_new_node(%struct.eth1394_host_info*, %struct.unit_directory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
