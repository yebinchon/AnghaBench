; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_entry = type { %struct.device }
%struct.device = type { i32*, %struct.device* }
%struct.unit_directory = type { %struct.device, %struct.device, i32 }

@nodemgr_dev_template_ud = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@nodemgr_ud_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to create unit %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node_entry*, %struct.unit_directory*, %struct.device*)* @nodemgr_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nodemgr_register_device(%struct.node_entry* %0, %struct.unit_directory* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.node_entry*, align 8
  %5 = alloca %struct.unit_directory*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.node_entry* %0, %struct.node_entry** %4, align 8
  store %struct.unit_directory* %1, %struct.unit_directory** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %7 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %8 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %7, i32 0, i32 0
  %9 = call i32 @memcpy(%struct.device* %8, i32* @nodemgr_dev_template_ud, i32 16)
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %12 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  store %struct.device* %10, %struct.device** %13, align 8
  %14 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %15 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %14, i32 0, i32 0
  %16 = load %struct.node_entry*, %struct.node_entry** %4, align 8
  %17 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %16, i32 0, i32 0
  %18 = call i32 @dev_name(%struct.device* %17)
  %19 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %20 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_set_name(%struct.device* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %24 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %23, i32 0, i32 0
  %25 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %26 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 1
  store %struct.device* %24, %struct.device** %27, align 8
  %28 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %29 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  store i32* @nodemgr_ud_class, i32** %30, align 8
  %31 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %32 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %31, i32 0, i32 1
  %33 = load %struct.node_entry*, %struct.node_entry** %4, align 8
  %34 = getelementptr inbounds %struct.node_entry, %struct.node_entry* %33, i32 0, i32 0
  %35 = call i32 @dev_name(%struct.device* %34)
  %36 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %37 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_set_name(%struct.device* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %41 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %40, i32 0, i32 0
  %42 = call i64 @device_register(%struct.device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %61

45:                                               ; preds = %3
  %46 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %47 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %46, i32 0, i32 1
  %48 = call i64 @device_register(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %57

51:                                               ; preds = %45
  %52 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %53 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %52, i32 0, i32 0
  %54 = call i32 @get_device(%struct.device* %53)
  %55 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %56 = call i32 @nodemgr_create_ud_dev_files(%struct.unit_directory* %55)
  br label %66

57:                                               ; preds = %50
  %58 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %59 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %58, i32 0, i32 0
  %60 = call i32 @device_unregister(%struct.device* %59)
  br label %61

61:                                               ; preds = %57, %44
  %62 = load %struct.unit_directory*, %struct.unit_directory** %5, align 8
  %63 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %62, i32 0, i32 0
  %64 = call i32 @dev_name(%struct.device* %63)
  %65 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %51
  ret void
}

declare dso_local i32 @memcpy(%struct.device*, i32*, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @device_register(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @nodemgr_create_ud_dev_files(%struct.unit_directory*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @HPSB_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
