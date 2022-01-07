; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_power_write_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_power_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_slot = type { %struct.hotplug_slot* }
%struct.hotplug_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"power = %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Illegal value specified for power\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_slot*, i8*, i64)* @power_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_write_file(%struct.pci_slot* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_slot*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hotplug_slot*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_slot* %0, %struct.pci_slot** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %13 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %12, i32 0, i32 0
  %14 = load %struct.hotplug_slot*, %struct.hotplug_slot** %13, align 8
  store %struct.hotplug_slot* %14, %struct.hotplug_slot** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @simple_strtoul(i8* %15, i32* null, i32 10)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = and i64 %17, 255
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %23 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @try_module_get(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %77

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %66 [
    i32 0, label %34
    i32 1, label %50
  ]

34:                                               ; preds = %32
  %35 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %36 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %38, align 8
  %40 = icmp ne i32 (%struct.hotplug_slot*)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %43 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %45, align 8
  %47 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %48 = call i32 %46(%struct.hotplug_slot* %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %41, %34
  br label %70

50:                                               ; preds = %32
  %51 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %52 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %54, align 8
  %56 = icmp ne i32 (%struct.hotplug_slot*)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %59 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %61, align 8
  %63 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %64 = call i32 %62(%struct.hotplug_slot* %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %57, %50
  br label %70

66:                                               ; preds = %32
  %67 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %65, %49
  %71 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %72 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @module_put(i32 %75)
  br label %77

77:                                               ; preds = %70, %29
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %77
  %83 = load i64, i64* %7, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %80
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
