; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_probe_ne.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_probe_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.node_entry = type { i32, i64, i32, i64, %struct.hpsb_host* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*, %struct.node_entry*, i32)* @nodemgr_probe_ne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nodemgr_probe_ne(%struct.hpsb_host* %0, %struct.node_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca %struct.node_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store %struct.node_entry* %1, %struct.node_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %9 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %8, i32 0, i32 4
  %10 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %12 = icmp ne %struct.hpsb_host* %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %15 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %21 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %20, i32 0, i32 2
  %22 = call %struct.device* @get_device(i32* %21)
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = icmp ne %struct.device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %53

26:                                               ; preds = %19
  %27 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @nodemgr_irm_write_bc(%struct.node_entry* %27, i32 %28)
  %30 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %31 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %36 = call i32 @nodemgr_process_root_directory(%struct.node_entry* %35)
  br label %50

37:                                               ; preds = %26
  %38 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %39 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %45 = call i32 @nodemgr_update_pdrv(%struct.node_entry* %44)
  br label %49

46:                                               ; preds = %37
  %47 = load %struct.node_entry*, %struct.node_entry** %5, align 8
  %48 = call i32 @nodemgr_pause_ne(%struct.node_entry* %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = call i32 @put_device(%struct.device* %51)
  br label %53

53:                                               ; preds = %50, %25, %18
  ret void
}

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local i32 @nodemgr_irm_write_bc(%struct.node_entry*, i32) #1

declare dso_local i32 @nodemgr_process_root_directory(%struct.node_entry*) #1

declare dso_local i32 @nodemgr_update_pdrv(%struct.node_entry*) #1

declare dso_local i32 @nodemgr_pause_ne(%struct.node_entry*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
