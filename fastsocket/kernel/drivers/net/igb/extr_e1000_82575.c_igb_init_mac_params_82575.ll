; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_mac_params_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_init_mac_params_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.e1000_mac_info }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i32, i32 }
%struct.e1000_mac_info = type { i32, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@E1000_RAR_ENTRIES_82576 = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES_82580 = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES_I350 = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES_82575 = common dso_local global i32 0, align 4
@igb_reset_hw_82580 = common dso_local global i32 0, align 4
@igb_reset_hw_82575 = common dso_local global i32 0, align 4
@e1000_i210 = common dso_local global i32 0, align 4
@igb_acquire_swfw_sync_i210 = common dso_local global i32 0, align 4
@igb_release_swfw_sync_i210 = common dso_local global i32 0, align 4
@igb_acquire_swfw_sync_82575 = common dso_local global i32 0, align 4
@igb_release_swfw_sync_82575 = common dso_local global i32 0, align 4
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@igb_setup_copper_link_82575 = common dso_local global i32 0, align 4
@igb_setup_serdes_link_82575 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @igb_init_mac_params_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_init_mac_params_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_82575*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 2
  store %struct.e1000_mac_info* %6, %struct.e1000_mac_info** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.e1000_dev_spec_82575* %9, %struct.e1000_dev_spec_82575** %4, align 8
  %10 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %10, i32 0, i32 0
  store i32 128, i32* %11, align 4
  %12 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %27 [
    i32 131, label %15
    i32 130, label %19
    i32 129, label %23
    i32 128, label %23
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @E1000_RAR_ENTRIES_82576, align 4
  %17 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @E1000_RAR_ENTRIES_82580, align 4
  %21 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  br label %31

23:                                               ; preds = %1, %1
  %24 = load i32, i32* @E1000_RAR_ENTRIES_I350, align 4
  %25 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @E1000_RAR_ENTRIES_82575, align 4
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23, %19, %15
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 130
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @igb_reset_hw_82580, align 4
  %38 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  br label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @igb_reset_hw_82575, align 4
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @e1000_i210, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* @igb_acquire_swfw_sync_i210, align 4
  %54 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @igb_release_swfw_sync_i210, align 4
  %58 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  br label %70

61:                                               ; preds = %46
  %62 = load i32, i32* @igb_acquire_swfw_sync_82575, align 4
  %63 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @igb_release_swfw_sync_82575, align 4
  %67 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %61, %52
  %71 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* @E1000_FWSM, align 4
  %74 = call i32 @rd32(i32 %73)
  %75 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %83 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 129
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %92

89:                                               ; preds = %70
  %90 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @e1000_i210, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.e1000_dev_spec_82575*, %struct.e1000_dev_spec_82575** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_dev_spec_82575, %struct.e1000_dev_spec_82575* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @e1000_media_type_copper, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @igb_setup_copper_link_82575, align 4
  br label %112

110:                                              ; preds = %101
  %111 = load i32, i32* @igb_setup_serdes_link_82575, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
