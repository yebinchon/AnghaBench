; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_fakephp.c_legacy_add_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_fakephp.c_legacy_add_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.legacy_slot = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@legacy_ktype = common dso_local global i32 0, align 4
@pci_slots_kset = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to created legacy fake slot\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@legacy_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @legacy_add_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_add_slot(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.legacy_slot*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.legacy_slot* @kzalloc(i32 12, i32 %5)
  store %struct.legacy_slot* %6, %struct.legacy_slot** %4, align 8
  %7 = load %struct.legacy_slot*, %struct.legacy_slot** %4, align 8
  %8 = icmp ne %struct.legacy_slot* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.legacy_slot*, %struct.legacy_slot** %4, align 8
  %14 = getelementptr inbounds %struct.legacy_slot, %struct.legacy_slot* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_slots_kset, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_name(i32* %18)
  %20 = call i64 @kobject_init_and_add(i32* %14, i32* @legacy_ktype, i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %12
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @pci_dev_get(%struct.pci_dev* %29)
  %31 = load %struct.legacy_slot*, %struct.legacy_slot** %4, align 8
  %32 = getelementptr inbounds %struct.legacy_slot, %struct.legacy_slot* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.legacy_slot*, %struct.legacy_slot** %4, align 8
  %34 = getelementptr inbounds %struct.legacy_slot, %struct.legacy_slot* %33, i32 0, i32 0
  %35 = call i32 @list_add(i32* %34, i32* @legacy_list)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %22, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.legacy_slot* @kzalloc(i32, i32) #1

declare dso_local i64 @kobject_init_and_add(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
