; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_one_core_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_one_core_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_bus_dev = type { i32 }
%struct.b43_wldev = type { i32, %struct.b43_wl* }
%struct.b43_wl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_bus_dev*)* @b43_one_core_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_one_core_detach(%struct.b43_bus_dev* %0) #0 {
  %2 = alloca %struct.b43_bus_dev*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_wl*, align 8
  store %struct.b43_bus_dev* %0, %struct.b43_bus_dev** %2, align 8
  %5 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %2, align 8
  %6 = call %struct.b43_wldev* @b43_bus_get_wldev(%struct.b43_bus_dev* %5)
  store %struct.b43_wldev* %6, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  %9 = load %struct.b43_wl*, %struct.b43_wl** %8, align 8
  store %struct.b43_wl* %9, %struct.b43_wl** %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = call i32 @b43_debugfs_remove_device(%struct.b43_wldev* %10)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = call i32 @b43_wireless_core_detach(%struct.b43_wldev* %12)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %18 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %2, align 8
  %22 = call i32 @b43_bus_set_wldev(%struct.b43_bus_dev* %21, i32* null)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = call i32 @kfree(%struct.b43_wldev* %23)
  ret void
}

declare dso_local %struct.b43_wldev* @b43_bus_get_wldev(%struct.b43_bus_dev*) #1

declare dso_local i32 @b43_debugfs_remove_device(%struct.b43_wldev*) #1

declare dso_local i32 @b43_wireless_core_detach(%struct.b43_wldev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @b43_bus_set_wldev(%struct.b43_bus_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
