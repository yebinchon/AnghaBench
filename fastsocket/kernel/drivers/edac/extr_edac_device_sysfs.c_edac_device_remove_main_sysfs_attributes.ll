; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device_sysfs.c_edac_device_remove_main_sysfs_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device_sysfs.c_edac_device_remove_main_sysfs_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.edac_dev_sysfs_attribute* }
%struct.edac_dev_sysfs_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @edac_device_remove_main_sysfs_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_device_remove_main_sysfs_attributes(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.edac_dev_sysfs_attribute*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %4 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %5 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %4, i32 0, i32 1
  %6 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %5, align 8
  store %struct.edac_dev_sysfs_attribute* %6, %struct.edac_dev_sysfs_attribute** %3, align 8
  %7 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %8 = icmp ne %struct.edac_dev_sysfs_attribute* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %16, %9
  %11 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %12 = getelementptr inbounds %struct.edac_dev_sysfs_attribute, %struct.edac_dev_sysfs_attribute* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %18 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %17, i32 0, i32 0
  %19 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %20 = bitcast %struct.edac_dev_sysfs_attribute* %19 to %struct.attribute*
  %21 = call i32 @sysfs_remove_file(i32* %18, %struct.attribute* %20)
  %22 = load %struct.edac_dev_sysfs_attribute*, %struct.edac_dev_sysfs_attribute** %3, align 8
  %23 = getelementptr inbounds %struct.edac_dev_sysfs_attribute, %struct.edac_dev_sysfs_attribute* %22, i32 1
  store %struct.edac_dev_sysfs_attribute* %23, %struct.edac_dev_sysfs_attribute** %3, align 8
  br label %10

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @sysfs_remove_file(i32*, %struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
