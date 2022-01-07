; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_fs_add_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pci_hotplug_core.c_fs_add_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.pci_slot = type { i32 }

@hotplug_slot_attr_power = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@hotplug_slot_attr_attention = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@hotplug_slot_attr_latch = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@hotplug_slot_attr_presence = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@hotplug_slot_attr_max_bus_speed = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@hotplug_slot_attr_cur_bus_speed = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@hotplug_slot_attr_test = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_slot*)* @fs_add_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_add_slot(%struct.pci_slot* %0) #0 {
  %2 = alloca %struct.pci_slot*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_slot* %0, %struct.pci_slot** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %5 = call i32 @pci_hp_create_module_link(%struct.pci_slot* %4)
  %6 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %7 = call i64 @has_power_file(%struct.pci_slot* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %10, i32 0, i32 0
  %12 = call i32 @sysfs_create_file(i32* %11, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hotplug_slot_attr_power, i32 0, i32 0))
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %144

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %19 = call i64 @has_attention_file(%struct.pci_slot* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %23 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %22, i32 0, i32 0
  %24 = call i32 @sysfs_create_file(i32* %23, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @hotplug_slot_attr_attention, i32 0, i32 0))
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %135

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %31 = call i64 @has_latch_file(%struct.pci_slot* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %35 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %34, i32 0, i32 0
  %36 = call i32 @sysfs_create_file(i32* %35, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hotplug_slot_attr_latch, i32 0, i32 0))
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %126

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %43 = call i64 @has_adapter_file(%struct.pci_slot* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %47 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %46, i32 0, i32 0
  %48 = call i32 @sysfs_create_file(i32* %47, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hotplug_slot_attr_presence, i32 0, i32 0))
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %117

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %55 = call i64 @has_max_bus_speed_file(%struct.pci_slot* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %59 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_file(i32* %59, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hotplug_slot_attr_max_bus_speed, i32 0, i32 0))
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %108

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %67 = call i64 @has_cur_bus_speed_file(%struct.pci_slot* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %71 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %70, i32 0, i32 0
  %72 = call i32 @sysfs_create_file(i32* %71, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @hotplug_slot_attr_cur_bus_speed, i32 0, i32 0))
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %99

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %79 = call i64 @has_test_file(%struct.pci_slot* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %83 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %82, i32 0, i32 0
  %84 = call i32 @sysfs_create_file(i32* %83, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hotplug_slot_attr_test, i32 0, i32 0))
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %90

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %77
  br label %147

90:                                               ; preds = %87
  %91 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %92 = call i64 @has_cur_bus_speed_file(%struct.pci_slot* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %96 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %95, i32 0, i32 0
  %97 = call i32 @sysfs_remove_file(i32* %96, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @hotplug_slot_attr_cur_bus_speed, i32 0, i32 0))
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %75
  %100 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %101 = call i64 @has_max_bus_speed_file(%struct.pci_slot* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %105 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %104, i32 0, i32 0
  %106 = call i32 @sysfs_remove_file(i32* %105, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hotplug_slot_attr_max_bus_speed, i32 0, i32 0))
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %63
  %109 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %110 = call i64 @has_adapter_file(%struct.pci_slot* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %114 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %113, i32 0, i32 0
  %115 = call i32 @sysfs_remove_file(i32* %114, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hotplug_slot_attr_presence, i32 0, i32 0))
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %51
  %118 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %119 = call i64 @has_latch_file(%struct.pci_slot* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %123 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %122, i32 0, i32 0
  %124 = call i32 @sysfs_remove_file(i32* %123, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hotplug_slot_attr_latch, i32 0, i32 0))
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %39
  %127 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %128 = call i64 @has_attention_file(%struct.pci_slot* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %132 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %131, i32 0, i32 0
  %133 = call i32 @sysfs_remove_file(i32* %132, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @hotplug_slot_attr_attention, i32 0, i32 0))
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %27
  %136 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %137 = call i64 @has_power_file(%struct.pci_slot* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %141 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %140, i32 0, i32 0
  %142 = call i32 @sysfs_remove_file(i32* %141, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hotplug_slot_attr_power, i32 0, i32 0))
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %15
  %145 = load %struct.pci_slot*, %struct.pci_slot** %2, align 8
  %146 = call i32 @pci_hp_remove_module_link(%struct.pci_slot* %145)
  br label %147

147:                                              ; preds = %144, %89
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @pci_hp_create_module_link(%struct.pci_slot*) #1

declare dso_local i64 @has_power_file(%struct.pci_slot*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i64 @has_attention_file(%struct.pci_slot*) #1

declare dso_local i64 @has_latch_file(%struct.pci_slot*) #1

declare dso_local i64 @has_adapter_file(%struct.pci_slot*) #1

declare dso_local i64 @has_max_bus_speed_file(%struct.pci_slot*) #1

declare dso_local i64 @has_cur_bus_speed_file(%struct.pci_slot*) #1

declare dso_local i64 @has_test_file(%struct.pci_slot*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @pci_hp_remove_module_link(%struct.pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
