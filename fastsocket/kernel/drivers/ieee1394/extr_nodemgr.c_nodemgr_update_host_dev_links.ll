; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_update_host_dev_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_update_host_dev_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.node_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"irm_id\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"busmgr_id\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"host_id\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to update sysfs attributes for host %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*)* @nodemgr_update_host_dev_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nodemgr_update_host_dev_links(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.node_entry*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %5 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %6 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %5, i32 0, i32 4
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = call i32 @sysfs_remove_link(i32* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = call i32 @sysfs_remove_link(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = call i32 @sysfs_remove_link(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %17 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %18 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.node_entry* @find_entry_by_nodeid(%struct.hpsb_host* %16, i32 %19)
  store %struct.node_entry* %20, %struct.node_entry** %4, align 8
  %21 = icmp ne %struct.node_entry* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.node_entry*, %struct.node_entry** %4, align 8
  %26 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @sysfs_create_link(i32* %24, i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %64

31:                                               ; preds = %22, %1
  %32 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %33 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %34 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.node_entry* @find_entry_by_nodeid(%struct.hpsb_host* %32, i32 %35)
  store %struct.node_entry* %36, %struct.node_entry** %4, align 8
  %37 = icmp ne %struct.node_entry* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load %struct.node_entry*, %struct.node_entry** %4, align 8
  %42 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i64 @sysfs_create_link(i32* %40, i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %64

47:                                               ; preds = %38, %31
  %48 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %49 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %50 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.node_entry* @find_entry_by_nodeid(%struct.hpsb_host* %48, i32 %51)
  store %struct.node_entry* %52, %struct.node_entry** %4, align 8
  %53 = icmp ne %struct.node_entry* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = load %struct.node_entry*, %struct.node_entry** %4, align 8
  %58 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i64 @sysfs_create_link(i32* %56, i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %64

63:                                               ; preds = %54, %47
  br label %69

64:                                               ; preds = %62, %46, %30
  %65 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %66 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local %struct.node_entry* @find_entry_by_nodeid(%struct.hpsb_host*, i32) #1

declare dso_local i64 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @HPSB_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
