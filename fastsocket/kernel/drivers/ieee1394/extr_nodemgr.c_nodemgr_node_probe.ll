; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_node_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_node_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.node_probe_parameter = type { i32, i32, %struct.hpsb_host* }

@nodemgr_ne_class = common dso_local global i32 0, align 4
@node_probe = common dso_local global i32 0, align 4
@ieee1394_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bus_rescan_devices had an error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32)* @nodemgr_node_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodemgr_node_probe(%struct.hpsb_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node_probe_parameter, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %8 = getelementptr inbounds %struct.node_probe_parameter, %struct.node_probe_parameter* %6, i32 0, i32 2
  store %struct.hpsb_host* %7, %struct.hpsb_host** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.node_probe_parameter, %struct.node_probe_parameter* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.node_probe_parameter, %struct.node_probe_parameter* %6, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @node_probe, align 4
  %13 = call i64 @class_for_each_device(i32* @nodemgr_ne_class, i32* null, %struct.node_probe_parameter* %6, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.node_probe_parameter, %struct.node_probe_parameter* %6, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @node_probe, align 4
  %19 = call i64 @class_for_each_device(i32* @nodemgr_ne_class, i32* null, %struct.node_probe_parameter* %6, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %28

22:                                               ; preds = %16
  %23 = call i64 @bus_rescan_devices(i32* @ieee1394_bus_type)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @HPSB_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %21, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @class_for_each_device(i32*, i32*, %struct.node_probe_parameter*, i32) #1

declare dso_local i64 @bus_rescan_devices(i32*) #1

declare dso_local i32 @HPSB_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
