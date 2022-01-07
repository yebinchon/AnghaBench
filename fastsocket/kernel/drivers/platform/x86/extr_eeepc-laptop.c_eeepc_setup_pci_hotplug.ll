; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_setup_pci_hotplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_setup_pci_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.pci_bus = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to find wifi PCI bus\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ehotk = common dso_local global %struct.TYPE_6__* null, align 8
@eeepc_cleanup_pci_hotplug = common dso_local global i32 0, align 4
@eeepc_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"eeepc-wifi\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to register hotplug slot - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @eeepc_setup_pci_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_setup_pci_hotplug() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %2, align 4
  %6 = call %struct.pci_bus* @pci_find_bus(i32 0, i32 1)
  store %struct.pci_bus* %6, %struct.pci_bus** %3, align 8
  %7 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %8 = icmp ne %struct.pci_bus* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %90

13:                                               ; preds = %0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 4, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %88

24:                                               ; preds = %13
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  br label %81

39:                                               ; preds = %24
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32* @eeepc_cleanup_pci_hotplug, i32** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32* @eeepc_hotplug_slot_ops, i32** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = call i32 @eeepc_get_adapter_status(%struct.TYPE_5__* %55, i32* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %67 = call i32 @pci_hp_register(%struct.TYPE_5__* %65, %struct.pci_bus* %66, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %39
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %74

73:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %90

74:                                               ; preds = %70
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @kfree(%struct.TYPE_5__* %79)
  br label %81

81:                                               ; preds = %74, %38
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 @kfree(%struct.TYPE_5__* %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ehotk, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %87, align 8
  br label %88

88:                                               ; preds = %81, %23
  %89 = load i32, i32* %2, align 4
  store i32 %89, i32* %1, align 4
  br label %90

90:                                               ; preds = %88, %73, %9
  %91 = load i32, i32* %1, align 4
  ret i32 %91
}

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @eeepc_get_adapter_status(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @pci_hp_register(%struct.TYPE_5__*, %struct.pci_bus*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
