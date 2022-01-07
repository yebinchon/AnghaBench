; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device_sysfs.c_edac_dev_instance_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device_sysfs.c_edac_dev_instance_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.edac_device_instance = type { i32 }
%struct.instance_attribute = type { i32 (%struct.edac_device_instance.0*, i8*)* }
%struct.edac_device_instance.0 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @edac_dev_instance_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edac_dev_instance_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.edac_device_instance*, align 8
  %9 = alloca %struct.instance_attribute*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = call %struct.edac_device_instance* @to_instance(%struct.kobject* %10)
  store %struct.edac_device_instance* %11, %struct.edac_device_instance** %8, align 8
  %12 = load %struct.attribute*, %struct.attribute** %6, align 8
  %13 = call %struct.instance_attribute* @to_instance_attr(%struct.attribute* %12)
  store %struct.instance_attribute* %13, %struct.instance_attribute** %9, align 8
  %14 = load %struct.instance_attribute*, %struct.instance_attribute** %9, align 8
  %15 = getelementptr inbounds %struct.instance_attribute, %struct.instance_attribute* %14, i32 0, i32 0
  %16 = load i32 (%struct.edac_device_instance.0*, i8*)*, i32 (%struct.edac_device_instance.0*, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.edac_device_instance.0*, i8*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.instance_attribute*, %struct.instance_attribute** %9, align 8
  %20 = getelementptr inbounds %struct.instance_attribute, %struct.instance_attribute* %19, i32 0, i32 0
  %21 = load i32 (%struct.edac_device_instance.0*, i8*)*, i32 (%struct.edac_device_instance.0*, i8*)** %20, align 8
  %22 = load %struct.edac_device_instance*, %struct.edac_device_instance** %8, align 8
  %23 = bitcast %struct.edac_device_instance* %22 to %struct.edac_device_instance.0*
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 %21(%struct.edac_device_instance.0* %23, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.edac_device_instance* @to_instance(%struct.kobject*) #1

declare dso_local %struct.instance_attribute* @to_instance_attr(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
