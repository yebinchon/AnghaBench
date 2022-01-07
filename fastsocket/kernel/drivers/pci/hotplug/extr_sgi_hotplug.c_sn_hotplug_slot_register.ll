; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_hotplug_slot_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_hotplug_slot_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pci_bus = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_slot = type { i32 }
%struct.hotplug_slot = type { %struct.pci_slot*, i32 (%struct.hotplug_slot*)*, i32*, i8* }

@SN_SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@SN_MAX_HP_SLOTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sn_hotplug_slot_ops = common dso_local global i32 0, align 4
@sn_slot_path_attr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"Registered bus with hotplug\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"bus failed to register with err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Memory allocation error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*)* @sn_hotplug_slot_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_hotplug_slot_register(%struct.pci_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_slot*, align 8
  %6 = alloca %struct.hotplug_slot*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  %11 = load i32, i32* @SN_SLOT_NAME_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %78, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SN_MAX_HP_SLOTS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %15
  %20 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @sn_pci_slot_valid(%struct.pci_bus* %20, i32 %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %78

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 32, i32 %26)
  %28 = bitcast i8* %27 to %struct.hotplug_slot*
  store %struct.hotplug_slot* %28, %struct.hotplug_slot** %6, align 8
  %29 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %30 = icmp ne %struct.hotplug_slot* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %95

34:                                               ; preds = %25
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 4, i32 %35)
  %37 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %38 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %40 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %95

46:                                               ; preds = %34
  %47 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %48 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @sn_hp_slot_private_alloc(%struct.hotplug_slot* %47, %struct.pci_bus* %48, i32 %49, i8* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %95

55:                                               ; preds = %46
  %56 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %57 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %56, i32 0, i32 2
  store i32* @sn_hotplug_slot_ops, i32** %57, align 8
  %58 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %59 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %58, i32 0, i32 1
  store i32 (%struct.hotplug_slot*)* @sn_release_slot, i32 (%struct.hotplug_slot*)** %59, align 8
  %60 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %61 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @pci_hp_register(%struct.hotplug_slot* %60, %struct.pci_bus* %61, i32 %62, i8* %14)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %88

67:                                               ; preds = %55
  %68 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %69 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %68, i32 0, i32 0
  %70 = load %struct.pci_slot*, %struct.pci_slot** %69, align 8
  store %struct.pci_slot* %70, %struct.pci_slot** %5, align 8
  %71 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %72 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %71, i32 0, i32 0
  %73 = call i32 @sysfs_create_file(i32* %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sn_slot_path_attr, i32 0, i32 0))
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %88

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %24
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %15

81:                                               ; preds = %15
  %82 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %83 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %121

88:                                               ; preds = %76, %66
  %89 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %90 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %88, %52, %43, %31
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %102 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %100, %95
  %107 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %108 = icmp ne %struct.hotplug_slot* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %111 = call i32 @sn_release_slot(%struct.hotplug_slot* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %116, %112
  %114 = call %struct.hotplug_slot* (...) @sn_hp_destroy()
  store %struct.hotplug_slot* %114, %struct.hotplug_slot** %6, align 8
  %115 = icmp ne %struct.hotplug_slot* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %118 = call i32 @pci_hp_deregister(%struct.hotplug_slot* %117)
  br label %113

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %119, %81
  %122 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sn_pci_slot_valid(%struct.pci_bus*, i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i64 @sn_hp_slot_private_alloc(%struct.hotplug_slot*, %struct.pci_bus*, i32, i8*) #2

declare dso_local i32 @sn_release_slot(%struct.hotplug_slot*) #2

declare dso_local i32 @pci_hp_register(%struct.hotplug_slot*, %struct.pci_bus*, i32, i8*) #2

declare dso_local i32 @sysfs_create_file(i32*, i32*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local %struct.hotplug_slot* @sn_hp_destroy(...) #2

declare dso_local i32 @pci_hp_deregister(%struct.hotplug_slot*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
