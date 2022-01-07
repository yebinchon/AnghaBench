; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_one_core_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_one_core_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_bus_dev = type { i32 }
%struct.b43_wl = type { i32, i32 }
%struct.b43_wldev = type { i32, i32, %struct.b43_wl*, %struct.b43_bus_dev*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@b43_modparam_pio = common dso_local global i32 0, align 4
@B43_STAT_UNINIT = common dso_local global i32 0, align 4
@modparam_bad_frames_preempt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_bus_dev*, %struct.b43_wl*)* @b43_one_core_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_one_core_attach(%struct.b43_bus_dev* %0, %struct.b43_wl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_bus_dev*, align 8
  %5 = alloca %struct.b43_wl*, align 8
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  store %struct.b43_bus_dev* %0, %struct.b43_bus_dev** %4, align 8
  store %struct.b43_wl* %1, %struct.b43_wl** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.b43_wldev* @kzalloc(i32 32, i32 %10)
  store %struct.b43_wldev* %11, %struct.b43_wldev** %6, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %13 = icmp ne %struct.b43_wldev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %54

15:                                               ; preds = %2
  %16 = load i32, i32* @b43_modparam_pio, align 4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %4, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 3
  store %struct.b43_bus_dev* %19, %struct.b43_bus_dev** %21, align 8
  %22 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 2
  store %struct.b43_wl* %22, %struct.b43_wl** %24, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %26 = load i32, i32* @B43_STAT_UNINIT, align 4
  %27 = call i32 @b43_set_status(%struct.b43_wldev* %25, i32 %26)
  %28 = load i32, i32* @modparam_bad_frames_preempt, align 4
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %32 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %35 = call i32 @b43_wireless_core_attach(%struct.b43_wldev* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  br label %56

39:                                               ; preds = %15
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %41 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %40, i32 0, i32 0
  %42 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %43 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %42, i32 0, i32 1
  %44 = call i32 @list_add(i32* %41, i32* %43)
  %45 = load %struct.b43_wl*, %struct.b43_wl** %5, align 8
  %46 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %4, align 8
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %51 = call i32 @b43_bus_set_wldev(%struct.b43_bus_dev* %49, %struct.b43_wldev* %50)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %53 = call i32 @b43_debugfs_add_device(%struct.b43_wldev* %52)
  br label %54

54:                                               ; preds = %39, %14
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %38
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %58 = call i32 @kfree(%struct.b43_wldev* %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %54
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.b43_wldev* @kzalloc(i32, i32) #1

declare dso_local i32 @b43_set_status(%struct.b43_wldev*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @b43_wireless_core_attach(%struct.b43_wldev*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @b43_bus_set_wldev(%struct.b43_bus_dev*, %struct.b43_wldev*) #1

declare dso_local i32 @b43_debugfs_add_device(%struct.b43_wldev*) #1

declare dso_local i32 @kfree(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
