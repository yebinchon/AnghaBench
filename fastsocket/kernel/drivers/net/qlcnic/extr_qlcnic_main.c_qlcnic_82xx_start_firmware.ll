; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_start_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_82xx_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@qlcnic_load_fw_file = common dso_local global i64 0, align 8
@QLCNIC_FLASH_ROMIMAGE = common dso_local global i32 0, align 4
@CRB_DRIVER_VERSION = common dso_local global i32 0, align 4
@QLCNIC_DRIVER_VERSION = common dso_local global i32 0, align 4
@QLCNIC_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLCNIC_DEV_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Memory allocation failed for eswitch\0A\00", align 1
@QLCNIC_DEV_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Device state set to failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_start_firmware(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %6 = call i32 @qlcnic_can_start_firmware(%struct.qlcnic_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %108

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %59

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = load i64, i64* @qlcnic_load_fw_file, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = call i32 @qlcnic_request_firmware(%struct.qlcnic_adapter* %20)
  br label %34

22:                                               ; preds = %16
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = call i32 @qlcnic_check_flash_fw_ver(%struct.qlcnic_adapter* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %95

28:                                               ; preds = %22
  %29 = load i32, i32* @QLCNIC_FLASH_ROMIMAGE, align 4
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %19
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i32 @qlcnic_need_fw_reset(%struct.qlcnic_adapter* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %59

40:                                               ; preds = %34
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = call i32 @qlcnic_pinit_from_rom(%struct.qlcnic_adapter* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %95

46:                                               ; preds = %40
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = call i32 @qlcnic_load_firmware(%struct.qlcnic_adapter* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %95

52:                                               ; preds = %46
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = call i32 @qlcnic_release_firmware(%struct.qlcnic_adapter* %53)
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = load i32, i32* @CRB_DRIVER_VERSION, align 4
  %57 = load i32, i32* @QLCNIC_DRIVER_VERSION, align 4
  %58 = call i32 @QLCWR32(%struct.qlcnic_adapter* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %39, %14
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %61 = call i32 @qlcnic_check_fw_status(%struct.qlcnic_adapter* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %95

65:                                               ; preds = %59
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %68 = load i32, i32* @QLCNIC_DEV_READY, align 4
  %69 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %66, i32 %67, i32 %68)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %71 = call i32 @qlcnic_idc_debug_info(%struct.qlcnic_adapter* %70, i32 1)
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %73 = call i32 @qlcnic_check_eswitch_mode(%struct.qlcnic_adapter* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %95

82:                                               ; preds = %65
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %84 = call i32 @qlcnic_set_mgmt_operations(%struct.qlcnic_adapter* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %95

88:                                               ; preds = %82
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = call i32 @qlcnic_check_options(%struct.qlcnic_adapter* %89)
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %94 = call i32 @qlcnic_release_firmware(%struct.qlcnic_adapter* %93)
  store i32 0, i32* %2, align 4
  br label %108

95:                                               ; preds = %87, %76, %64, %51, %45, %27
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %97 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %98 = load i32, i32* @QLCNIC_DEV_FAILED, align 4
  %99 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %96, i32 %97, i32 %98)
  %100 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %106 = call i32 @qlcnic_release_firmware(%struct.qlcnic_adapter* %105)
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %95, %88, %9
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @qlcnic_can_start_firmware(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_request_firmware(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_check_flash_fw_ver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_need_fw_reset(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_pinit_from_rom(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_load_firmware(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_release_firmware(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_check_fw_status(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_idc_debug_info(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_check_eswitch_mode(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_set_mgmt_operations(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_check_options(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
