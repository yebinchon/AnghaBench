; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_core.c_init_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_core.c_init_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { %struct.TYPE_6__*, %struct.slot* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.slot = type { %struct.hotplug_slot_info* }
%struct.hotplug_slot_info = type { i32, i32, i32, i32, i32*, i32*, %struct.slot*, %struct.hotplug_slot_info* }
%struct.hotplug_slot = type { i32, i32, i32, i32, i32*, i32*, %struct.slot*, %struct.hotplug_slot* }

@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@release_slot = common dso_local global i32 0, align 4
@pciehp_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Registering domain:bus:dev=%04x:%02x:00 sun=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"pci_hp_register failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @init_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_slot(%struct.controller* %0) #0 {
  %2 = alloca %struct.controller*, align 8
  %3 = alloca %struct.slot*, align 8
  %4 = alloca %struct.hotplug_slot*, align 8
  %5 = alloca %struct.hotplug_slot_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %2, align 8
  %9 = load %struct.controller*, %struct.controller** %2, align 8
  %10 = getelementptr inbounds %struct.controller, %struct.controller* %9, i32 0, i32 1
  %11 = load %struct.slot*, %struct.slot** %10, align 8
  store %struct.slot* %11, %struct.slot** %3, align 8
  store %struct.hotplug_slot* null, %struct.hotplug_slot** %4, align 8
  store %struct.hotplug_slot_info* null, %struct.hotplug_slot_info** %5, align 8
  %12 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hotplug_slot_info* @kzalloc(i32 48, i32 %18)
  %20 = bitcast %struct.hotplug_slot_info* %19 to %struct.hotplug_slot*
  store %struct.hotplug_slot* %20, %struct.hotplug_slot** %4, align 8
  %21 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %22 = icmp ne %struct.hotplug_slot* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %108

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hotplug_slot_info* @kzalloc(i32 48, i32 %25)
  store %struct.hotplug_slot_info* %26, %struct.hotplug_slot_info** %5, align 8
  %27 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %5, align 8
  %28 = icmp ne %struct.hotplug_slot_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %108

30:                                               ; preds = %24
  %31 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %5, align 8
  %32 = bitcast %struct.hotplug_slot_info* %31 to %struct.hotplug_slot*
  %33 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %34 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %33, i32 0, i32 7
  store %struct.hotplug_slot* %32, %struct.hotplug_slot** %34, align 8
  %35 = load %struct.slot*, %struct.slot** %3, align 8
  %36 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %37 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %36, i32 0, i32 6
  store %struct.slot* %35, %struct.slot** %37, align 8
  %38 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %39 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %38, i32 0, i32 5
  store i32* @release_slot, i32** %39, align 8
  %40 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %41 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %40, i32 0, i32 4
  store i32* @pciehp_hotplug_slot_ops, i32** %41, align 8
  %42 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %43 = bitcast %struct.hotplug_slot* %42 to %struct.hotplug_slot_info*
  %44 = load %struct.slot*, %struct.slot** %3, align 8
  %45 = getelementptr inbounds %struct.slot, %struct.slot* %44, i32 0, i32 0
  store %struct.hotplug_slot_info* %43, %struct.hotplug_slot_info** %45, align 8
  %46 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %47 = load %struct.controller*, %struct.controller** %2, align 8
  %48 = call i32 @PSN(%struct.controller* %47)
  %49 = call i32 @snprintf(i8* %15, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.controller*, %struct.controller** %2, align 8
  %51 = load %struct.controller*, %struct.controller** %2, align 8
  %52 = getelementptr inbounds %struct.controller, %struct.controller* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call i32 @pci_domain_nr(%struct.TYPE_7__* %57)
  %59 = load %struct.controller*, %struct.controller** %2, align 8
  %60 = getelementptr inbounds %struct.controller, %struct.controller* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.controller*, %struct.controller** %2, align 8
  %69 = call i32 @PSN(%struct.controller* %68)
  %70 = call i32 @ctrl_dbg(%struct.controller* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %67, i32 %69)
  %71 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %72 = bitcast %struct.hotplug_slot* %71 to %struct.hotplug_slot_info*
  %73 = load %struct.controller*, %struct.controller** %2, align 8
  %74 = getelementptr inbounds %struct.controller, %struct.controller* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i32 @pci_hp_register(%struct.hotplug_slot_info* %72, %struct.TYPE_7__* %79, i32 0, i8* %15)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %30
  %84 = load %struct.controller*, %struct.controller** %2, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @ctrl_err(%struct.controller* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %108

87:                                               ; preds = %30
  %88 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %89 = bitcast %struct.hotplug_slot* %88 to %struct.hotplug_slot_info*
  %90 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %5, align 8
  %91 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %90, i32 0, i32 3
  %92 = call i32 @get_power_status(%struct.hotplug_slot_info* %89, i32* %91)
  %93 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %94 = bitcast %struct.hotplug_slot* %93 to %struct.hotplug_slot_info*
  %95 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %5, align 8
  %96 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %95, i32 0, i32 2
  %97 = call i32 @get_attention_status(%struct.hotplug_slot_info* %94, i32* %96)
  %98 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %99 = bitcast %struct.hotplug_slot* %98 to %struct.hotplug_slot_info*
  %100 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %5, align 8
  %101 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %100, i32 0, i32 1
  %102 = call i32 @get_latch_status(%struct.hotplug_slot_info* %99, i32* %101)
  %103 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %104 = bitcast %struct.hotplug_slot* %103 to %struct.hotplug_slot_info*
  %105 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %5, align 8
  %106 = getelementptr inbounds %struct.hotplug_slot_info, %struct.hotplug_slot_info* %105, i32 0, i32 0
  %107 = call i32 @get_adapter_status(%struct.hotplug_slot_info* %104, i32* %106)
  br label %108

108:                                              ; preds = %87, %83, %29, %23
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.hotplug_slot_info*, %struct.hotplug_slot_info** %5, align 8
  %113 = call i32 @kfree(%struct.hotplug_slot_info* %112)
  %114 = load %struct.hotplug_slot*, %struct.hotplug_slot** %4, align 8
  %115 = bitcast %struct.hotplug_slot* %114 to %struct.hotplug_slot_info*
  %116 = call i32 @kfree(%struct.hotplug_slot_info* %115)
  br label %117

117:                                              ; preds = %111, %108
  %118 = load i32, i32* %8, align 4
  %119 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %119)
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hotplug_slot_info* @kzalloc(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @PSN(%struct.controller*) #2

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, i32, i32, i32) #2

declare dso_local i32 @pci_domain_nr(%struct.TYPE_7__*) #2

declare dso_local i32 @pci_hp_register(%struct.hotplug_slot_info*, %struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #2

declare dso_local i32 @get_power_status(%struct.hotplug_slot_info*, i32*) #2

declare dso_local i32 @get_attention_status(%struct.hotplug_slot_info*, i32*) #2

declare dso_local i32 @get_latch_status(%struct.hotplug_slot_info*, i32*) #2

declare dso_local i32 @get_adapter_status(%struct.hotplug_slot_info*, i32*) #2

declare dso_local i32 @kfree(%struct.hotplug_slot_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
