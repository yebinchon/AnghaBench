; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_eth1394_new_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_eth1394_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth1394_host_info = type { i32 }
%struct.unit_directory = type { i32 }
%struct.eth1394_priv = type { i32 }
%struct.eth1394_node_ref = type { i32, %struct.unit_directory* }
%struct.eth1394_node_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR1212_INVALID_ADDR_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eth1394_host_info*, %struct.unit_directory*)* @eth1394_new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth1394_new_node(%struct.eth1394_host_info* %0, %struct.unit_directory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eth1394_host_info*, align 8
  %5 = alloca %struct.unit_directory*, align 8
  %6 = alloca %struct.eth1394_priv*, align 8
  %7 = alloca %struct.eth1394_node_ref*, align 8
  %8 = alloca %struct.eth1394_node_info*, align 8
  store %struct.eth1394_host_info* %0, %struct.eth1394_host_info** %4, align 8
  store %struct.unit_directory* %1, %struct.unit_directory** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 16, i32 %9)
  %11 = bitcast i8* %10 to %struct.eth1394_node_ref*
  store %struct.eth1394_node_ref* %11, %struct.eth1394_node_ref** %7, align 8
  %12 = load %struct.eth1394_node_ref*, %struct.eth1394_node_ref** %7, align 8
  %13 = icmp ne %struct.eth1394_node_ref* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 24, i32 %18)
  %20 = bitcast i8* %19 to %struct.eth1394_node_info*
  store %struct.eth1394_node_info* %20, %struct.eth1394_node_info** %8, align 8
  %21 = load %struct.eth1394_node_info*, %struct.eth1394_node_info** %8, align 8
  %22 = icmp ne %struct.eth1394_node_info* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.eth1394_node_ref*, %struct.eth1394_node_ref** %7, align 8
  %25 = call i32 @kfree(%struct.eth1394_node_ref* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %17
  %29 = load %struct.eth1394_node_info*, %struct.eth1394_node_info** %8, align 8
  %30 = getelementptr inbounds %struct.eth1394_node_info, %struct.eth1394_node_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.eth1394_node_info*, %struct.eth1394_node_info** %8, align 8
  %34 = getelementptr inbounds %struct.eth1394_node_info, %struct.eth1394_node_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.eth1394_node_info*, %struct.eth1394_node_info** %8, align 8
  %38 = getelementptr inbounds %struct.eth1394_node_info, %struct.eth1394_node_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @CSR1212_INVALID_ADDR_SPACE, align 4
  %41 = load %struct.eth1394_node_info*, %struct.eth1394_node_info** %8, align 8
  %42 = getelementptr inbounds %struct.eth1394_node_info, %struct.eth1394_node_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %44 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %43, i32 0, i32 0
  %45 = load %struct.eth1394_node_info*, %struct.eth1394_node_info** %8, align 8
  %46 = call i32 @dev_set_drvdata(i32* %44, %struct.eth1394_node_info* %45)
  %47 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %48 = load %struct.eth1394_node_ref*, %struct.eth1394_node_ref** %7, align 8
  %49 = getelementptr inbounds %struct.eth1394_node_ref, %struct.eth1394_node_ref* %48, i32 0, i32 1
  store %struct.unit_directory* %47, %struct.unit_directory** %49, align 8
  %50 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %4, align 8
  %51 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.eth1394_priv* @netdev_priv(i32 %52)
  store %struct.eth1394_priv* %53, %struct.eth1394_priv** %6, align 8
  %54 = load %struct.eth1394_node_ref*, %struct.eth1394_node_ref** %7, align 8
  %55 = getelementptr inbounds %struct.eth1394_node_ref, %struct.eth1394_node_ref* %54, i32 0, i32 0
  %56 = load %struct.eth1394_priv*, %struct.eth1394_priv** %6, align 8
  %57 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %56, i32 0, i32 0
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %28, %23, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.eth1394_node_ref*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.eth1394_node_info*) #1

declare dso_local %struct.eth1394_priv* @netdev_priv(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
