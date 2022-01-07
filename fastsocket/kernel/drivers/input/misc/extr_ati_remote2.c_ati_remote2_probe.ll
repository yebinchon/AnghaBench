; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote2.c_ati_remote2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ati_remote2 = type { %struct.usb_interface**, i32, i32, i32, i32, i32**, %struct.usb_device* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ati_remote2_driver = common dso_local global i32 0, align 4
@channel_mask = common dso_local global i32 0, align 4
@mode_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ATI Remote Wonder II\00", align 1
@ati_remote2_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ati_remote2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote2_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.ati_remote2*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %7, align 8
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %153

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ati_remote2* @kzalloc(i32 40, i32 %24)
  store %struct.ati_remote2* %25, %struct.ati_remote2** %8, align 8
  %26 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %27 = icmp ne %struct.ati_remote2* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %153

31:                                               ; preds = %23
  %32 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %33 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %34 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %33, i32 0, i32 6
  store %struct.usb_device* %32, %struct.usb_device** %34, align 8
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %37 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %36, i32 0, i32 0
  %38 = load %struct.usb_interface**, %struct.usb_interface*** %37, align 8
  %39 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %38, i64 0
  store %struct.usb_interface* %35, %struct.usb_interface** %39, align 8
  %40 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %41 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %46 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %45, i32 0, i32 5
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  store i32* %44, i32** %48, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %49, i32 1)
  %51 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %52 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %51, i32 0, i32 0
  %53 = load %struct.usb_interface**, %struct.usb_interface*** %52, align 8
  %54 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %53, i64 1
  store %struct.usb_interface* %50, %struct.usb_interface** %54, align 8
  %55 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %56 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %55, i32 0, i32 0
  %57 = load %struct.usb_interface**, %struct.usb_interface*** %56, align 8
  %58 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %57, i64 1
  %59 = load %struct.usb_interface*, %struct.usb_interface** %58, align 8
  %60 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %61 = call i32 @usb_driver_claim_interface(i32* @ati_remote2_driver, %struct.usb_interface* %59, %struct.ati_remote2* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %31
  br label %149

65:                                               ; preds = %31
  %66 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %67 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %66, i32 0, i32 0
  %68 = load %struct.usb_interface**, %struct.usb_interface*** %67, align 8
  %69 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %68, i64 1
  %70 = load %struct.usb_interface*, %struct.usb_interface** %69, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 1
  %72 = load %struct.usb_host_interface*, %struct.usb_host_interface** %71, align 8
  store %struct.usb_host_interface* %72, %struct.usb_host_interface** %7, align 8
  %73 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %74 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %79 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %78, i32 0, i32 5
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  store i32* %77, i32** %81, align 8
  %82 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %83 = call i32 @ati_remote2_urb_init(%struct.ati_remote2* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %65
  br label %140

87:                                               ; preds = %65
  %88 = load i32, i32* @channel_mask, align 4
  %89 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %90 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @mode_mask, align 4
  %92 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %93 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %95 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %96 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ati_remote2_setup(%struct.ati_remote2* %94, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %140

102:                                              ; preds = %87
  %103 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %104 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %105 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @usb_make_path(%struct.usb_device* %103, i32 %106, i32 4)
  %108 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %109 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @strlcat(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %112 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %113 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @strlcat(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %116 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 @sysfs_create_group(i32* %118, i32* @ati_remote2_attr_group)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %102
  br label %140

123:                                              ; preds = %102
  %124 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %125 = call i32 @ati_remote2_input_init(%struct.ati_remote2* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %135

129:                                              ; preds = %123
  %130 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %131 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %132 = call i32 @usb_set_intfdata(%struct.usb_interface* %130, %struct.ati_remote2* %131)
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  store i32 0, i32* %3, align 4
  br label %153

135:                                              ; preds = %128
  %136 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %137 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = call i32 @sysfs_remove_group(i32* %138, i32* @ati_remote2_attr_group)
  br label %140

140:                                              ; preds = %135, %122, %101, %86
  %141 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %142 = call i32 @ati_remote2_urb_cleanup(%struct.ati_remote2* %141)
  %143 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %144 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %143, i32 0, i32 0
  %145 = load %struct.usb_interface**, %struct.usb_interface*** %144, align 8
  %146 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %145, i64 1
  %147 = load %struct.usb_interface*, %struct.usb_interface** %146, align 8
  %148 = call i32 @usb_driver_release_interface(i32* @ati_remote2_driver, %struct.usb_interface* %147)
  br label %149

149:                                              ; preds = %140, %64
  %150 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %151 = call i32 @kfree(%struct.ati_remote2* %150)
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %129, %28, %20
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.ati_remote2* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, %struct.ati_remote2*) #1

declare dso_local i32 @ati_remote2_urb_init(%struct.ati_remote2*) #1

declare dso_local i32 @ati_remote2_setup(%struct.ati_remote2*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @ati_remote2_input_init(%struct.ati_remote2*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ati_remote2*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @ati_remote2_urb_cleanup(%struct.ati_remote2*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @kfree(%struct.ati_remote2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
