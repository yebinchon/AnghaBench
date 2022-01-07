; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dvb_usb_device_properties = type { i32 }
%struct.module = type { i32 }
%struct.dvb_usb_device = type { %struct.module*, %struct.dvb_usb_device_description*, i32, %struct.usb_device* }
%struct.dvb_usb_device_description = type { i32 }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"something went very wrong, device was not found in current device list - let's see what comes next.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"found a '%s' in cold state, will try to load a firmware\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"found a '%s' in warm state.\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"no memory for 'struct dvb_usb_device'\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s successfully initialized and connected.\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s error while loading driver (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_device_init(%struct.usb_interface* %0, %struct.dvb_usb_device_properties* %1, %struct.module* %2, %struct.dvb_usb_device** %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.dvb_usb_device_properties*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.dvb_usb_device**, align 8
  %11 = alloca i16*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.dvb_usb_device*, align 8
  %14 = alloca %struct.dvb_usb_device_description*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %7, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %8, align 8
  store %struct.module* %2, %struct.module** %9, align 8
  store %struct.dvb_usb_device** %3, %struct.dvb_usb_device*** %10, align 8
  store i16* %4, i16** %11, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %12, align 8
  store %struct.dvb_usb_device* null, %struct.dvb_usb_device** %13, align 8
  store %struct.dvb_usb_device_description* null, %struct.dvb_usb_device_description** %14, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.dvb_usb_device**, %struct.dvb_usb_device*** %10, align 8
  %22 = icmp ne %struct.dvb_usb_device** %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load %struct.dvb_usb_device**, %struct.dvb_usb_device*** %10, align 8
  store %struct.dvb_usb_device* null, %struct.dvb_usb_device** %24, align 8
  br label %25

25:                                               ; preds = %23, %5
  %26 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %27 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %28 = call %struct.dvb_usb_device_description* @dvb_usb_find_device(%struct.usb_device* %26, %struct.dvb_usb_device_properties* %27, i32* %16)
  store %struct.dvb_usb_device_description* %28, %struct.dvb_usb_device_description** %14, align 8
  %29 = icmp eq %struct.dvb_usb_device_description* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @deb_err(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %109

34:                                               ; preds = %25
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %14, align 8
  %39 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %43 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %44 = call i32 @dvb_usb_download_firmware(%struct.usb_device* %42, %struct.dvb_usb_device_properties* %43)
  store i32 %44, i32* %15, align 4
  %45 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %37
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %6, align 4
  br label %109

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %14, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.dvb_usb_device* @kzalloc(i32 32, i32 %60)
  store %struct.dvb_usb_device* %61, %struct.dvb_usb_device** %13, align 8
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %63 = icmp eq %struct.dvb_usb_device* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %109

68:                                               ; preds = %55
  %69 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 3
  store %struct.usb_device* %69, %struct.usb_device** %71, align 8
  %72 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %73 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %72, i32 0, i32 2
  %74 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %8, align 8
  %75 = call i32 @memcpy(i32* %73, %struct.dvb_usb_device_properties* %74, i32 4)
  %76 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %14, align 8
  %77 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %77, i32 0, i32 1
  store %struct.dvb_usb_device_description* %76, %struct.dvb_usb_device_description** %78, align 8
  %79 = load %struct.module*, %struct.module** %9, align 8
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %80, i32 0, i32 0
  store %struct.module* %79, %struct.module** %81, align 8
  %82 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %83 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %84 = call i32 @usb_set_intfdata(%struct.usb_interface* %82, %struct.dvb_usb_device* %83)
  %85 = load %struct.dvb_usb_device**, %struct.dvb_usb_device*** %10, align 8
  %86 = icmp ne %struct.dvb_usb_device** %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %89 = load %struct.dvb_usb_device**, %struct.dvb_usb_device*** %10, align 8
  store %struct.dvb_usb_device* %88, %struct.dvb_usb_device** %89, align 8
  br label %90

90:                                               ; preds = %87, %68
  %91 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %92 = load i16*, i16** %11, align 8
  %93 = call i32 @dvb_usb_init(%struct.dvb_usb_device* %91, i16* %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %14, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %107

101:                                              ; preds = %90
  %102 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %14, align 8
  %103 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 (i8*, i32, ...) @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107, %64, %52, %30
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.dvb_usb_device_description* @dvb_usb_find_device(%struct.usb_device*, %struct.dvb_usb_device_properties*, i32*) #1

declare dso_local i32 @deb_err(i8*) #1

declare dso_local i32 @info(i8*, i32, ...) #1

declare dso_local i32 @dvb_usb_download_firmware(%struct.usb_device*, %struct.dvb_usb_device_properties*) #1

declare dso_local %struct.dvb_usb_device* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.dvb_usb_device_properties*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.dvb_usb_device*) #1

declare dso_local i32 @dvb_usb_init(%struct.dvb_usb_device*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
