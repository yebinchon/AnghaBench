; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_send_eject_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_send_eject_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"ath9k_htc: Could not find bulk out endpoint\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Ejecting storage device...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @send_eject_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_eject_command(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %15 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %14, i64 0
  store %struct.usb_host_interface* %15, %struct.usb_host_interface** %5, align 8
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %21 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %26, %struct.usb_endpoint_descriptor** %6, align 8
  %27 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %28 = call i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %32 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %30, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  br label %16

42:                                               ; preds = %34, %16
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %92

51:                                               ; preds = %42
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 31, i32 %52)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %92

59:                                               ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 85, i8* %61, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 83, i8* %63, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 66, i8* %65, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8 67, i8* %67, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 14
  store i8 6, i8* %69, align 1
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 15
  store i8 27, i8* %71, align 1
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 19
  store i8 2, i8* %73, align 1
  %74 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %75 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %74, i32 0, i32 0
  %76 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %78 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @usb_sndbulkpipe(%struct.usb_device* %78, i32 %79)
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @usb_bulk_msg(%struct.usb_device* %77, i32 %80, i8* %81, i32 31, i32* null, i32 2000)
  store i32 %82, i32* %9, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %59
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %2, align 4
  br label %92

89:                                               ; preds = %59
  %90 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %91 = call i32 @usb_set_intfdata(%struct.usb_interface* %90, i32* null)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %87, %56, %45
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_dir_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
