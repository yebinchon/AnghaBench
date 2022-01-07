; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.sdio_device_id = type { i64, i32, i32, i32 }
%struct.btmrvl_private = type { i32, i32 }
%struct.btmrvl_sdio_card = type { %struct.btmrvl_private*, i32, i32, %struct.sdio_func* }
%struct.btmrvl_sdio_device = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"vendor=0x%x, device=0x%x, class=%d, fn=%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register BT device!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Downloading firmware failed!\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Initializing card failed!\00", align 1
@btmrvl_sdio_host_to_card = common dso_local global i32 0, align 4
@btmrvl_sdio_wakeup_fw = common dso_local global i32 0, align 4
@MODULE_BRINGUP_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @btmrvl_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btmrvl_private*, align 8
  %8 = alloca %struct.btmrvl_sdio_card*, align 8
  %9 = alloca %struct.btmrvl_sdio_device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.btmrvl_private* null, %struct.btmrvl_private** %7, align 8
  store %struct.btmrvl_sdio_card* null, %struct.btmrvl_sdio_card** %8, align 8
  %10 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %20 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BT_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.btmrvl_sdio_card* @kzalloc(i32 24, i32 %23)
  store %struct.btmrvl_sdio_card* %24, %struct.btmrvl_sdio_card** %8, align 8
  %25 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %26 = icmp ne %struct.btmrvl_sdio_card* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %106

30:                                               ; preds = %2
  %31 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %32 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %33 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %32, i32 0, i32 3
  store %struct.sdio_func* %31, %struct.sdio_func** %33, align 8
  %34 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = bitcast i8* %42 to %struct.btmrvl_sdio_device*
  store %struct.btmrvl_sdio_device* %43, %struct.btmrvl_sdio_device** %9, align 8
  %44 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %45 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %48 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %50 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %53 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %38, %30
  %55 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %56 = call i64 @btmrvl_sdio_register_dev(%struct.btmrvl_sdio_card* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %103

62:                                               ; preds = %54
  %63 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %64 = call i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card* %63)
  %65 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %66 = call i64 @btmrvl_sdio_download_fw(%struct.btmrvl_sdio_card* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %100

72:                                               ; preds = %62
  %73 = call i32 @msleep(i32 100)
  %74 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %75 = call i32 @btmrvl_sdio_enable_host_int(%struct.btmrvl_sdio_card* %74)
  %76 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %77 = call %struct.btmrvl_private* @btmrvl_add_card(%struct.btmrvl_sdio_card* %76)
  store %struct.btmrvl_private* %77, %struct.btmrvl_private** %7, align 8
  %78 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %79 = icmp ne %struct.btmrvl_private* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %97

84:                                               ; preds = %72
  %85 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %86 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %87 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %86, i32 0, i32 0
  store %struct.btmrvl_private* %85, %struct.btmrvl_private** %87, align 8
  %88 = load i32, i32* @btmrvl_sdio_host_to_card, align 4
  %89 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %90 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @btmrvl_sdio_wakeup_fw, align 4
  %92 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %93 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %95 = load i32, i32* @MODULE_BRINGUP_REQ, align 4
  %96 = call i32 @btmrvl_send_module_cfg_cmd(%struct.btmrvl_private* %94, i32 %95)
  store i32 0, i32* %3, align 4
  br label %108

97:                                               ; preds = %80
  %98 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %99 = call i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card* %98)
  br label %100

100:                                              ; preds = %97, %68
  %101 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %102 = call i32 @btmrvl_sdio_unregister_dev(%struct.btmrvl_sdio_card* %101)
  br label %103

103:                                              ; preds = %100, %58
  %104 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %105 = call i32 @kfree(%struct.btmrvl_sdio_card* %104)
  br label %106

106:                                              ; preds = %103, %27
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %84
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @BT_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.btmrvl_sdio_card* @kzalloc(i32, i32) #1

declare dso_local i64 @btmrvl_sdio_register_dev(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card*) #1

declare dso_local i64 @btmrvl_sdio_download_fw(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @btmrvl_sdio_enable_host_int(%struct.btmrvl_sdio_card*) #1

declare dso_local %struct.btmrvl_private* @btmrvl_add_card(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @btmrvl_send_module_cfg_cmd(%struct.btmrvl_private*, i32) #1

declare dso_local i32 @btmrvl_sdio_unregister_dev(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @kfree(%struct.btmrvl_sdio_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
