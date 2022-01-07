; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_init_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i64, i32 }
%struct.usb_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Registering iMON display with sysfs\0A\00", align 1
@imon_display_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not create display sysfs entries(%d)\00", align 1
@IMON_DISPLAY_TYPE_LCD = common dso_local global i64 0, align 8
@imon_lcd_class = common dso_local global i32 0, align 4
@imon_vfd_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"could not get a minor number for display\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imon_context*, %struct.usb_interface*)* @imon_init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imon_init_display(%struct.imon_context* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  store %struct.imon_context* %0, %struct.imon_context** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %7 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @sysfs_create_group(i32* %12, i32* @imon_display_attr_group)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %18 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %24 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IMON_DISPLAY_TYPE_LCD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = call i32 @usb_register_dev(%struct.usb_interface* %29, i32* @imon_lcd_class)
  store i32 %30, i32* %5, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %33 = call i32 @usb_register_dev(%struct.usb_interface* %32, i32* @imon_vfd_class)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %39 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usb_register_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
