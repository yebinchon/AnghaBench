; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_create_diag_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_create_diag_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@bin_attr_port_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to create port stats sysfs entry\00", align 1
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@dev_attr_diag_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to create diag_mode sysfs entry\0A\00", align 1
@bin_attr_crb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create crb sysfs entry\0A\00", align 1
@bin_attr_mem = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to create mem sysfs entry\0A\00", align 1
@dev_attr_beacon = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to create beacon sysfs entry\00", align 1
@dev_attr_max_rss = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to create rss sysfs entry\0A\00", align 1
@dev_attr_elb_mode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to create elb_mode sysfs entry\0A\00", align 1
@bin_attr_pci_config = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to create pci config sysfs entry\00", align 1
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@bin_attr_esw_config = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"failed to create esw config sysfs entry\00", align 1
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@bin_attr_npar_config = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"failed to create npar config sysfs entry\00", align 1
@bin_attr_pm_config = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"failed to create pm config sysfs entry\00", align 1
@bin_attr_esw_stats = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"failed to create eswitch stats sysfs entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_create_diag_entries(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i64 @device_create_bin_file(%struct.device* %8, i32* @bin_attr_port_stats)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @dev_info(%struct.device* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %117

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i64 @device_create_file(%struct.device* %24, i32* @dev_attr_diag_mode)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @dev_info(%struct.device* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i64 @device_create_bin_file(%struct.device* %31, i32* @bin_attr_crb)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @dev_info(%struct.device* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i64 @device_create_bin_file(%struct.device* %38, i32* @bin_attr_mem)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @dev_info(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i64 @device_create_file(%struct.device* %45, i32* @dev_attr_beacon)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @dev_info(%struct.device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = call i64 @device_create_file(%struct.device* %52, i32* @dev_attr_max_rss)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 @dev_info(%struct.device* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = call i64 @device_create_file(%struct.device* %59, i32* @dev_attr_elb_mode)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = call i32 @dev_info(%struct.device* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i64 @device_create_bin_file(%struct.device* %66, i32* @bin_attr_pci_config)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = call i32 @dev_info(%struct.device* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %117

80:                                               ; preds = %72
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = call i64 @device_create_bin_file(%struct.device* %81, i32* @bin_attr_esw_config)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.device*, %struct.device** %3, align 8
  %86 = call i32 @dev_info(%struct.device* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %117

96:                                               ; preds = %87
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = call i64 @device_create_bin_file(%struct.device* %97, i32* @bin_attr_npar_config)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = call i32 @dev_info(%struct.device* %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = call i64 @device_create_bin_file(%struct.device* %104, i32* @bin_attr_pm_config)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load %struct.device*, %struct.device** %3, align 8
  %109 = call i32 @dev_info(%struct.device* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %103
  %111 = load %struct.device*, %struct.device** %3, align 8
  %112 = call i64 @device_create_bin_file(%struct.device* %111, i32* @bin_attr_esw_stats)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.device*, %struct.device** %3, align 8
  %116 = call i32 @dev_info(%struct.device* %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  br label %117

117:                                              ; preds = %22, %79, %95, %114, %110
  ret void
}

declare dso_local i64 @device_create_bin_file(%struct.device*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i64 @device_create_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
