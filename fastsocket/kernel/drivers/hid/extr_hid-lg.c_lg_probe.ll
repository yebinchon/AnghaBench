; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-lg.c_lg_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-lg.c_lg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i64 }

@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@LG_NOGET = common dso_local global i64 0, align 8
@HID_QUIRK_NOGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@LG_FF = common dso_local global i64 0, align 8
@LG_FF2 = common dso_local global i64 0, align 8
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @lg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %9 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @hid_set_drvdata(%struct.hid_device* %13, i8* %15)
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @LG_NOGET, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @HID_QUIRK_NOGET, align 4
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_parse(%struct.hid_device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %34 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %75

36:                                               ; preds = %27
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @LG_FF, align 8
  %39 = load i64, i64* @LG_FF2, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %37, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @HID_CONNECT_FF, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %36
  %49 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @hid_hw_start(%struct.hid_device* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %56 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %75

58:                                               ; preds = %48
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @LG_FF, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %65 = call i32 @lgff_init(%struct.hid_device* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @LG_FF2, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %73 = call i32 @lg2ff_init(%struct.hid_device* %72)
  br label %74

74:                                               ; preds = %71, %66
  store i32 0, i32* %3, align 4
  br label %77

75:                                               ; preds = %54, %32
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @lgff_init(%struct.hid_device*) #1

declare dso_local i32 @lg2ff_init(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
