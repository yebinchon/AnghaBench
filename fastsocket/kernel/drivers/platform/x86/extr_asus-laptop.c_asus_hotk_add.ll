; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__*, i64, %struct.acpi_device*, i32 }
%struct.acpi_device = type { %struct.TYPE_4__*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Asus Laptop Support version %s\0A\00", align 1
@ASUS_LAPTOP_VERSION = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hotk = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ASUS_HOTK_DEVICE_NAME = common dso_local global i32 0, align 4
@ASUS_HOTK_CLASS = common dso_local global i32 0, align 4
@asus_hotk_found = common dso_local global i32 0, align 4
@bt_switch_handle = common dso_local global i32* null, align 8
@BT_ON = common dso_local global i32 0, align 4
@wl_switch_handle = common dso_local global i32* null, align 8
@WL_ON = common dso_local global i32 0, align 4
@LCD_ON = common dso_local global i32 0, align 4
@kled_set_handle = common dso_local global i64 0, align 8
@ls_switch_handle = common dso_local global i64 0, align 8
@ls_level_handle = common dso_local global i64 0, align 8
@GPS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @asus_hotk_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_hotk_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = icmp ne %struct.acpi_device* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %103

10:                                               ; preds = %1
  %11 = load i32, i32* @ASUS_LAPTOP_VERSION, align 4
  %12 = call i32 @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** @hotk, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %103

20:                                               ; preds = %10
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = call i32 @acpi_device_name(%struct.acpi_device* %26)
  %28 = load i32, i32* @ASUS_HOTK_DEVICE_NAME, align 4
  %29 = call i32 @strcpy(i32 %27, i32 %28)
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = call i32 @acpi_device_class(%struct.acpi_device* %30)
  %32 = load i32, i32* @ASUS_HOTK_CLASS, align 4
  %33 = call i32 @strcpy(i32 %31, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store %struct.acpi_device* %37, %struct.acpi_device** %39, align 8
  %40 = call i32 (...) @asus_hotk_check()
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %91

44:                                               ; preds = %20
  %45 = call i32 (...) @asus_hotk_add_fs()
  store i32 1, i32* @asus_hotk_found, align 4
  %46 = load i32*, i32** @bt_switch_handle, align 8
  %47 = load i32, i32* @BT_ON, align 4
  %48 = call i32 @write_status(i32* %46, i32 1, i32 %47)
  %49 = load i32*, i32** @wl_switch_handle, align 8
  %50 = load i32, i32* @WL_ON, align 4
  %51 = call i32 @write_status(i32* %49, i32 1, i32 %50)
  %52 = load i32, i32* @BT_ON, align 4
  %53 = call i32 @read_status(i32 %52)
  %54 = load i32, i32* @BT_ON, align 4
  %55 = call i32 @write_status(i32* null, i32 %53, i32 %54)
  %56 = load i32, i32* @WL_ON, align 4
  %57 = call i32 @read_status(i32 %56)
  %58 = load i32, i32* @WL_ON, align 4
  %59 = call i32 @write_status(i32* null, i32 %57, i32 %58)
  %60 = load i32, i32* @LCD_ON, align 4
  %61 = call i32 @write_status(i32* null, i32 1, i32 %60)
  %62 = load i64, i64* @kled_set_handle, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = call i32 @set_kled_lvl(i32 1)
  br label %66

66:                                               ; preds = %64, %44
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 4095, i32* %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 5, i32* %72, align 4
  %73 = load i64, i64* @ls_switch_handle, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @set_light_sens_switch(i64 %78)
  br label %80

80:                                               ; preds = %75, %66
  %81 = load i64, i64* @ls_level_handle, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @set_light_sens_level(i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i32, i32* @GPS_ON, align 4
  %90 = call i32 @write_status(i32* null, i32 1, i32 %89)
  br label %91

91:                                               ; preds = %88, %43
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @kfree(%struct.TYPE_4__* %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %100 = call i32 @kfree(%struct.TYPE_4__* %99)
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %17, %7
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @asus_hotk_check(...) #1

declare dso_local i32 @asus_hotk_add_fs(...) #1

declare dso_local i32 @write_status(i32*, i32, i32) #1

declare dso_local i32 @read_status(i32) #1

declare dso_local i32 @set_kled_lvl(i32) #1

declare dso_local i32 @set_light_sens_switch(i64) #1

declare dso_local i32 @set_light_sens_level(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
