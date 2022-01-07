; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_slot_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_slot_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { %struct.slot* }
%struct.slot = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pcibus_info = type { i32 }
%struct.pcibr_slot_enable_resp = type { i32, i32 }

@PCI_SLOT_ALREADY_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"is already active\0A\00", align 1
@PCI_L1_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"L1 failure %d with message: %s\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"insert failed with error %d sub-error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*, i32, i8**)* @sn_slot_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_slot_enable(%struct.hotplug_slot* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hotplug_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.slot*, align 8
  %9 = alloca %struct.pcibus_info*, align 8
  %10 = alloca %struct.pcibr_slot_enable_resp, align 4
  %11 = alloca i32, align 4
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %13 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %12, i32 0, i32 0
  %14 = load %struct.slot*, %struct.slot** %13, align 8
  store %struct.slot* %14, %struct.slot** %8, align 8
  %15 = load %struct.slot*, %struct.slot** %8, align 8
  %16 = getelementptr inbounds %struct.slot, %struct.slot* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.TYPE_4__* %17)
  store %struct.pcibus_info* %18, %struct.pcibus_info** %9, align 8
  %19 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = call i32 @sal_pcibr_slot_enable(%struct.pcibus_info* %19, i32 %20, %struct.pcibr_slot_enable_resp* %10, i8** %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PCI_SLOT_ALREADY_UP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.slot*, %struct.slot** %8, align 8
  %28 = getelementptr inbounds %struct.slot, %struct.slot* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %79

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PCI_L1_ERR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.slot*, %struct.slot** %8, align 8
  %40 = getelementptr inbounds %struct.slot, %struct.slot* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.pcibr_slot_enable_resp, %struct.pcibr_slot_enable_resp* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.pcibr_slot_enable_resp, %struct.pcibr_slot_enable_resp* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %79

52:                                               ; preds = %34
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.slot*, %struct.slot** %8, align 8
  %57 = getelementptr inbounds %struct.slot, %struct.slot* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %11, align 4
  %63 = getelementptr inbounds %struct.pcibr_slot_enable_resp, %struct.pcibr_slot_enable_resp* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %79

68:                                               ; preds = %52
  %69 = load %struct.slot*, %struct.slot** %8, align 8
  %70 = getelementptr inbounds %struct.slot, %struct.slot* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.TYPE_4__* %71)
  store %struct.pcibus_info* %72, %struct.pcibus_info** %9, align 8
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 1, %73
  %75 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %76 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %68, %55, %38, %26
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.TYPE_4__*) #1

declare dso_local i32 @sal_pcibr_slot_enable(%struct.pcibus_info*, i32, %struct.pcibr_slot_enable_resp*, i8**) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
