; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_create_ud_dev_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_create_ud_dev_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_directory = type { i32, i64, i64, %struct.device }
%struct.device = type { i32 }

@fw_ud_attrs = common dso_local global i32** null, align 8
@UNIT_DIRECTORY_SPECIFIER_ID = common dso_local global i32 0, align 4
@dev_attr_ud_specifier_id = common dso_local global i32 0, align 4
@UNIT_DIRECTORY_VERSION = common dso_local global i32 0, align 4
@dev_attr_ud_version = common dso_local global i32 0, align 4
@UNIT_DIRECTORY_VENDOR_ID = common dso_local global i32 0, align 4
@dev_attr_ud_vendor_id = common dso_local global i32 0, align 4
@dev_attr_ud_vendor_name_kv = common dso_local global i32 0, align 4
@UNIT_DIRECTORY_MODEL_ID = common dso_local global i32 0, align 4
@dev_attr_ud_model_id = common dso_local global i32 0, align 4
@dev_attr_ud_model_name_kv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to add sysfs attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unit_directory*)* @nodemgr_create_ud_dev_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nodemgr_create_ud_dev_files(%struct.unit_directory* %0) #0 {
  %2 = alloca %struct.unit_directory*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.unit_directory* %0, %struct.unit_directory** %2, align 8
  %5 = load %struct.unit_directory*, %struct.unit_directory** %2, align 8
  %6 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %5, i32 0, i32 3
  store %struct.device* %6, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32**, i32*** @fw_ud_attrs, align 8
  %10 = call i32 @ARRAY_SIZE(i32** %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32**, i32*** @fw_ud_attrs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @device_create_file(%struct.device* %13, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %99

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.unit_directory*, %struct.unit_directory** %2, align 8
  %28 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @UNIT_DIRECTORY_SPECIFIER_ID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i64 @device_create_file(%struct.device* %34, i32* @dev_attr_ud_specifier_id)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %99

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.unit_directory*, %struct.unit_directory** %2, align 8
  %41 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UNIT_DIRECTORY_VERSION, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i64 @device_create_file(%struct.device* %47, i32* @dev_attr_ud_version)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %99

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.unit_directory*, %struct.unit_directory** %2, align 8
  %54 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @UNIT_DIRECTORY_VENDOR_ID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i64 @device_create_file(%struct.device* %60, i32* @dev_attr_ud_vendor_id)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %99

64:                                               ; preds = %59
  %65 = load %struct.unit_directory*, %struct.unit_directory** %2, align 8
  %66 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = call i64 @device_create_file(%struct.device* %70, i32* @dev_attr_ud_vendor_name_kv)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %99

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.unit_directory*, %struct.unit_directory** %2, align 8
  %77 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @UNIT_DIRECTORY_MODEL_ID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = call i64 @device_create_file(%struct.device* %83, i32* @dev_attr_ud_model_id)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %99

87:                                               ; preds = %82
  %88 = load %struct.unit_directory*, %struct.unit_directory** %2, align 8
  %89 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.device*, %struct.device** %3, align 8
  %94 = call i64 @device_create_file(%struct.device* %93, i32* @dev_attr_ud_model_name_kv)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %99

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %75
  br label %101

99:                                               ; preds = %96, %86, %73, %63, %50, %37, %21
  %100 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %98
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i64 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @HPSB_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
