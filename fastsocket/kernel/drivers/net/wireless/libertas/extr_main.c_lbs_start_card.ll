; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_start_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_start_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i8*, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot register ethX device\0A\00", align 1
@MESH_FW_OLD = common dso_local global i64 0, align 8
@TLV_TYPE_OLD_MESH_ID = common dso_local global i8* null, align 8
@CMD_ACT_MESH_CONFIG_START = common dso_local global i32 0, align 4
@TLV_TYPE_MESH_ID = common dso_local global i8* null, align 8
@MESH_FW_NEW = common dso_local global i64 0, align 8
@dev_attr_lbs_mesh = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot register lbs_mesh attribute\0A\00", align 1
@dev_attr_lbs_rtap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot register lbs_rtap attribute\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: Marvell WLAN 802.11 adapter\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_start_card(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = load i32, i32* @LBS_DEB_MAIN, align 4
  %9 = call i32 @lbs_deb_enter(i32 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %11 = call i32 @lbs_setup_firmware(%struct.lbs_private* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %113

15:                                               ; preds = %1
  %16 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %17 = call i32 @lbs_init_11d(%struct.lbs_private* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @register_netdev(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %113

23:                                               ; preds = %15
  %24 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %25 = call i32 @lbs_update_channel(%struct.lbs_private* %24)
  %26 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MESH_FW_OLD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %23
  %32 = load i8*, i8** @TLV_TYPE_OLD_MESH_ID, align 8
  %33 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %36 = load i32, i32* @CMD_ACT_MESH_CONFIG_START, align 4
  %37 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @lbs_mesh_config(%struct.lbs_private* %35, i32 %36, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %31
  %44 = load i8*, i8** @TLV_TYPE_MESH_ID, align 8
  %45 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %48 = load i32, i32* @CMD_ACT_MESH_CONFIG_START, align 4
  %49 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %50 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @lbs_mesh_config(%struct.lbs_private* %47, i32 %48, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 1
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %58, %31
  br label %83

60:                                               ; preds = %23
  %61 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %62 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MESH_FW_NEW, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load i8*, i8** @TLV_TYPE_MESH_ID, align 8
  %68 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %71 = load i32, i32* @CMD_ACT_MESH_CONFIG_START, align 4
  %72 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %73 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @lbs_mesh_config(%struct.lbs_private* %70, i32 %71, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %80 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %79, i32 0, i32 1
  store i8* null, i8** %80, align 8
  br label %81

81:                                               ; preds = %78, %66
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %59
  %84 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %90 = call i32 @lbs_add_mesh(%struct.lbs_private* %89)
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 1
  %93 = call i64 @device_create_file(i32* %92, i32* @dev_attr_lbs_mesh)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %88
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = call i64 @device_create_file(i32* %99, i32* @dev_attr_lbs_rtap)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  br label %105

105:                                              ; preds = %104, %83
  %106 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = call i32 @lbs_debugfs_init_one(%struct.lbs_private* %106, %struct.net_device* %107)
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %105, %21, %14
  %114 = load i32, i32* @LBS_DEB_MAIN, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @lbs_deb_leave_args(i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_setup_firmware(%struct.lbs_private*) #1

declare dso_local i32 @lbs_init_11d(%struct.lbs_private*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @lbs_update_channel(%struct.lbs_private*) #1

declare dso_local i64 @lbs_mesh_config(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @lbs_add_mesh(%struct.lbs_private*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @lbs_debugfs_init_one(%struct.lbs_private*, %struct.net_device*) #1

declare dso_local i32 @lbs_pr_info(i8*, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
