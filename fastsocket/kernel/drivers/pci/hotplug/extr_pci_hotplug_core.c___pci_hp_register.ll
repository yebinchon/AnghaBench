; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c___pci_hp_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c___pci_hp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { i32, %struct.pci_slot*, %struct.TYPE_2__*, i32*, i32* }
%struct.pci_slot = type { i32, %struct.hotplug_slot* }
%struct.TYPE_2__ = type { i8*, %struct.module* }
%struct.pci_bus = type { i32 }
%struct.module = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Why are you trying to register a hotplug slot without a proper release function?\0A\00", align 1
@pci_hp_mutex = common dso_local global i32 0, align 4
@pci_hotplug_slot_list = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Added slot %s to the list\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pci_hp_register(%struct.hotplug_slot* %0, %struct.pci_bus* %1, i32 %2, i8* %3, %struct.module* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hotplug_slot*, align 8
  %9 = alloca %struct.pci_bus*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.pci_slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %8, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.module* %4, %struct.module** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %17 = icmp eq %struct.hotplug_slot* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %87

21:                                               ; preds = %6
  %22 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %23 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %28 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp eq %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %87

34:                                               ; preds = %26
  %35 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %36 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %87

43:                                               ; preds = %34
  %44 = load %struct.module*, %struct.module** %12, align 8
  %45 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %46 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.module* %44, %struct.module** %48, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %51 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = call i32 @mutex_lock(i32* @pci_hp_mutex)
  %55 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %59 = call %struct.pci_slot* @pci_create_slot(%struct.pci_bus* %55, i32 %56, i8* %57, %struct.hotplug_slot* %58)
  store %struct.pci_slot* %59, %struct.pci_slot** %15, align 8
  %60 = load %struct.pci_slot*, %struct.pci_slot** %15, align 8
  %61 = call i64 @IS_ERR(%struct.pci_slot* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load %struct.pci_slot*, %struct.pci_slot** %15, align 8
  %65 = call i32 @PTR_ERR(%struct.pci_slot* %64)
  store i32 %65, i32* %14, align 4
  br label %84

66:                                               ; preds = %43
  %67 = load %struct.pci_slot*, %struct.pci_slot** %15, align 8
  %68 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %69 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %68, i32 0, i32 1
  store %struct.pci_slot* %67, %struct.pci_slot** %69, align 8
  %70 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %71 = load %struct.pci_slot*, %struct.pci_slot** %15, align 8
  %72 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %71, i32 0, i32 1
  store %struct.hotplug_slot* %70, %struct.hotplug_slot** %72, align 8
  %73 = load %struct.hotplug_slot*, %struct.hotplug_slot** %8, align 8
  %74 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %73, i32 0, i32 0
  %75 = call i32 @list_add(i32* %74, i32* @pci_hotplug_slot_list)
  %76 = load %struct.pci_slot*, %struct.pci_slot** %15, align 8
  %77 = call i32 @fs_add_slot(%struct.pci_slot* %76)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.pci_slot*, %struct.pci_slot** %15, align 8
  %79 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %78, i32 0, i32 0
  %80 = load i32, i32* @KOBJ_ADD, align 4
  %81 = call i32 @kobject_uevent(i32* %79, i32 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %66, %63
  %85 = call i32 @mutex_unlock(i32* @pci_hp_mutex)
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %39, %31, %18
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pci_slot* @pci_create_slot(%struct.pci_bus*, i32, i8*, %struct.hotplug_slot*) #1

declare dso_local i64 @IS_ERR(%struct.pci_slot*) #1

declare dso_local i32 @PTR_ERR(%struct.pci_slot*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @fs_add_slot(%struct.pci_slot*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
