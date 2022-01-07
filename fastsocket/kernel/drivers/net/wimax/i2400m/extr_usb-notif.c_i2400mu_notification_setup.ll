; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-notif.c_i2400mu_notification_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-notif.c_i2400mu_notification_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@I2400MU_MAX_NOTIFICATION_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"notification: buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"notification: cannot allocate URB\0A\00", align 1
@I2400MU_EP_NOTIFICATION = common dso_local global i32 0, align 4
@i2400mu_notification_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"notification: cannot submit URB: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400mu_notification_setup(%struct.i2400mu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2400mu*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i8*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %3, align 8
  %9 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %10 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %15 = call i32 @d_fnstart(i32 4, %struct.device* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %14)
  %16 = load i32, i32* @I2400MU_MAX_NOTIFICATION_LEN, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @GFP_DMA, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @kmalloc(i32 %16, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %95

28:                                               ; preds = %1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @usb_alloc_urb(i32 0, i32 %29)
  %31 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %32 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %34 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %92

42:                                               ; preds = %28
  %43 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %44 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* @I2400MU_EP_NOTIFICATION, align 4
  %47 = call %struct.usb_endpoint_descriptor* @usb_get_epd(%struct.TYPE_2__* %45, i32 %46)
  store %struct.usb_endpoint_descriptor* %47, %struct.usb_endpoint_descriptor** %7, align 8
  %48 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %49 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_rcvintpipe(i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %56 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %59 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @I2400MU_MAX_NOTIFICATION_LEN, align 4
  %64 = load i32, i32* @i2400mu_notification_cb, align 4
  %65 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_fill_int_urb(i32 %57, i32 %60, i32 %61, i8* %62, i32 %63, i32 %64, %struct.i2400mu* %65, i32 %68)
  %70 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %71 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @usb_submit_urb(i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %42
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %87

81:                                               ; preds = %42
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @d_fnend(i32 4, %struct.device* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.i2400mu* %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %101

87:                                               ; preds = %77
  %88 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %89 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @usb_free_urb(i32 %90)
  br label %92

92:                                               ; preds = %87, %37
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @kfree(i8* %93)
  br label %95

95:                                               ; preds = %92, %23
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @d_fnend(i32 4, %struct.device* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.i2400mu* %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %81
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400mu*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_endpoint_descriptor* @usb_get_epd(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i8*, i32, i32, %struct.i2400mu*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400mu*, i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
