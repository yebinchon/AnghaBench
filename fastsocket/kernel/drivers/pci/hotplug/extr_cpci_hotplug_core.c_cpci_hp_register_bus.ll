; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_hp_register_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_core.c_cpci_hp_register_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.slot = type { i32, i32, %struct.slot*, i32, i32, i32*, i32*, %struct.slot*, i32, %struct.pci_bus*, %struct.slot* }
%struct.hotplug_slot = type { i32, i32, %struct.hotplug_slot*, i32, i32, i32*, i32*, %struct.hotplug_slot*, i32, %struct.pci_bus*, %struct.hotplug_slot* }
%struct.hotplug_slot_info = type { i32, i32, %struct.hotplug_slot_info*, i32, i32, i32*, i32*, %struct.hotplug_slot_info*, i32, %struct.pci_bus*, %struct.hotplug_slot_info* }

@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@controller = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1
@release_slot = common dso_local global i32 0, align 4
@cpci_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"initializing slot %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"registering slot %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"pci_hp_register failed with error %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"slot registered with name: %s\00", align 1
@list_rwsem = common dso_local global i32 0, align 4
@slot_list = common dso_local global i32 0, align 4
@slots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpci_hp_register_bus(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.slot*, align 8
  %9 = alloca %struct.hotplug_slot*, align 8
  %10 = alloca %struct.hotplug_slot_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* @controller, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %26 = icmp ne %struct.pci_bus* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %138

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %121, %30
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %124

36:                                               ; preds = %32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.slot* @kzalloc(i32 72, i32 %37)
  store %struct.slot* %38, %struct.slot** %8, align 8
  %39 = load %struct.slot*, %struct.slot** %8, align 8
  %40 = icmp ne %struct.slot* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %136

42:                                               ; preds = %36
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.slot* @kzalloc(i32 72, i32 %43)
  %45 = bitcast %struct.slot* %44 to %struct.hotplug_slot*
  store %struct.hotplug_slot* %45, %struct.hotplug_slot** %9, align 8
  %46 = load %struct.hotplug_slot*, %struct.hotplug_slot** %9, align 8
  %47 = icmp ne %struct.hotplug_slot* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %133

49:                                               ; preds = %42
  %50 = load %struct.hotplug_slot*, %struct.hotplug_slot** %9, align 8
  %51 = bitcast %struct.hotplug_slot* %50 to %struct.slot*
  %52 = load %struct.slot*, %struct.slot** %8, align 8
  %53 = getelementptr inbounds %struct.slot, %struct.slot* %52, i32 0, i32 2
  store %struct.slot* %51, %struct.slot** %53, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.slot* @kzalloc(i32 72, i32 %54)
  %56 = bitcast %struct.slot* %55 to %struct.hotplug_slot_info*
  store %struct.hotplug_slot_info* %56, %struct.hotplug_slot_info** %10, align 8
  %57 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %10, align 8
  %58 = icmp ne %struct.hotplug_slot_info* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %129

60:                                               ; preds = %49
  %61 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %10, align 8
  %62 = bitcast %struct.hotplug_slot_info* %61 to %struct.hotplug_slot*
  %63 = load %struct.hotplug_slot*, %struct.hotplug_slot** %9, align 8
  %64 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %63, i32 0, i32 10
  store %struct.hotplug_slot* %62, %struct.hotplug_slot** %64, align 8
  %65 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %66 = load %struct.slot*, %struct.slot** %8, align 8
  %67 = getelementptr inbounds %struct.slot, %struct.slot* %66, i32 0, i32 9
  store %struct.pci_bus* %65, %struct.pci_bus** %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.slot*, %struct.slot** %8, align 8
  %70 = getelementptr inbounds %struct.slot, %struct.slot* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @PCI_DEVFN(i32 %71, i32 0)
  %73 = load %struct.slot*, %struct.slot** %8, align 8
  %74 = getelementptr inbounds %struct.slot, %struct.slot* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %76 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %77 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @snprintf(i8* %19, i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.slot*, %struct.slot** %8, align 8
  %82 = bitcast %struct.slot* %81 to %struct.hotplug_slot*
  %83 = load %struct.hotplug_slot*, %struct.hotplug_slot** %9, align 8
  %84 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %83, i32 0, i32 7
  store %struct.hotplug_slot* %82, %struct.hotplug_slot** %84, align 8
  %85 = load %struct.hotplug_slot*, %struct.hotplug_slot** %9, align 8
  %86 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %85, i32 0, i32 6
  store i32* @release_slot, i32** %86, align 8
  %87 = load %struct.hotplug_slot*, %struct.hotplug_slot** %9, align 8
  %88 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %87, i32 0, i32 5
  store i32* @cpci_hotplug_slot_ops, i32** %88, align 8
  %89 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %90 = load %struct.slot*, %struct.slot** %8, align 8
  %91 = call i32 @cpci_get_power_status(%struct.slot* %90)
  %92 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %10, align 8
  %93 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.slot*, %struct.slot** %8, align 8
  %95 = call i32 @cpci_get_attention_status(%struct.slot* %94)
  %96 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %10, align 8
  %97 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %99 = load %struct.slot*, %struct.slot** %8, align 8
  %100 = getelementptr inbounds %struct.slot, %struct.slot* %99, i32 0, i32 2
  %101 = load %struct.slot*, %struct.slot** %100, align 8
  %102 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @pci_hp_register(%struct.slot* %101, %struct.pci_bus* %102, i32 %103, i8* %19)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %60
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %125

110:                                              ; preds = %60
  %111 = load %struct.slot*, %struct.slot** %8, align 8
  %112 = call i8* @slot_name(%struct.slot* %111)
  %113 = call i32 @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  %114 = call i32 @down_write(i32* @list_rwsem)
  %115 = load %struct.slot*, %struct.slot** %8, align 8
  %116 = getelementptr inbounds %struct.slot, %struct.slot* %115, i32 0, i32 1
  %117 = call i32 @list_add(i32* %116, i32* @slot_list)
  %118 = load i32, i32* @slots, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @slots, align 4
  %120 = call i32 @up_write(i32* @list_rwsem)
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %32

124:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %138

125:                                              ; preds = %107
  %126 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %10, align 8
  %127 = bitcast %struct.hotplug_slot_info* %126 to %struct.slot*
  %128 = call i32 @kfree(%struct.slot* %127)
  br label %129

129:                                              ; preds = %125, %59
  %130 = load %struct.hotplug_slot*, %struct.hotplug_slot** %9, align 8
  %131 = bitcast %struct.hotplug_slot* %130 to %struct.slot*
  %132 = call i32 @kfree(%struct.slot* %131)
  br label %133

133:                                              ; preds = %129, %48
  %134 = load %struct.slot*, %struct.slot** %8, align 8
  %135 = call i32 @kfree(%struct.slot* %134)
  br label %136

136:                                              ; preds = %133, %41
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %138

138:                                              ; preds = %136, %124, %27
  %139 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slot* @kzalloc(i32, i32) #2

declare dso_local i32 @PCI_DEVFN(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @dbg(i8*, i8*) #2

declare dso_local i32 @cpci_get_power_status(%struct.slot*) #2

declare dso_local i32 @cpci_get_attention_status(%struct.slot*) #2

declare dso_local i32 @pci_hp_register(%struct.slot*, %struct.pci_bus*, i32, i8*) #2

declare dso_local i32 @err(i8*, i32) #2

declare dso_local i8* @slot_name(%struct.slot*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @kfree(%struct.slot*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
