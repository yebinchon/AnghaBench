; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_init_intf1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_init_intf1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.imon_context = type { i64, i32, i32, i32, i32*, %struct.urb*, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__ }
%struct.urb = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"usb_alloc_urb failed for IR urb\0A\00", align 1
@IMON_DISPLAY_TYPE_VGA = common dso_local global i64 0, align 8
@imon_touch_display_timeout = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@usb_rx_callback_intf1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"usb_submit_urb failed for intf1 (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"unable to initialize intf0, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imon_context* (%struct.usb_interface*, %struct.imon_context*)* @imon_init_intf1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imon_context* @imon_init_intf1(%struct.usb_interface* %0, %struct.imon_context* %1) #0 {
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.imon_context*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.imon_context* %1, %struct.imon_context** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %11)
  store %struct.urb* %12, %struct.urb** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %137

17:                                               ; preds = %2
  %18 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %19 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %22 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IMON_DISPLAY_TYPE_VGA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %28 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %27, i32 0, i32 9
  %29 = call i32 @init_timer(%struct.TYPE_4__* %28)
  %30 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %31 = ptrtoint %struct.imon_context* %30 to i64
  %32 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %33 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* @imon_touch_display_timeout, align 4
  %36 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %37 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  br label %39

39:                                               ; preds = %26, %17
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = call i32 @interface_to_usbdev(%struct.usb_interface* %40)
  %42 = call i32 @usb_get_dev(i32 %41)
  %43 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %44 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %46 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %49 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %48, i32 0, i32 5
  store %struct.urb* %47, %struct.urb** %49, align 8
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = load %struct.usb_host_interface*, %struct.usb_host_interface** %53, align 8
  store %struct.usb_host_interface* %54, %struct.usb_host_interface** %7, align 8
  %55 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %57 = call i32 @imon_find_endpoints(%struct.imon_context* %55, %struct.usb_host_interface* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %39
  br label %131

60:                                               ; preds = %39
  %61 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %62 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IMON_DISPLAY_TYPE_VGA, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %68 = call i32* @imon_init_touch(%struct.imon_context* %67)
  %69 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %70 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %72 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %130

76:                                               ; preds = %66
  br label %80

77:                                               ; preds = %60
  %78 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %79 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %82 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %81, i32 0, i32 5
  %83 = load %struct.urb*, %struct.urb** %82, align 8
  %84 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %85 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %88 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %91 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %90, i32 0, i32 6
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_rcvintpipe(i32 %89, i32 %94)
  %96 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %97 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @usb_rx_callback_intf1, align 4
  %100 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %101 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %102 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %101, i32 0, i32 6
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @usb_fill_int_urb(%struct.urb* %83, i32 %86, i32 %95, i32 %98, i32 4, i32 %99, %struct.imon_context* %100, i32 %105)
  %107 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %108 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %107, i32 0, i32 5
  %109 = load %struct.urb*, %struct.urb** %108, align 8
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32 @usb_submit_urb(%struct.urb* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %80
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %119

117:                                              ; preds = %80
  %118 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  store %struct.imon_context* %118, %struct.imon_context** %3, align 8
  br label %143

119:                                              ; preds = %114
  %120 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %121 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %126 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @input_unregister_device(i32* %127)
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %75
  br label %131

131:                                              ; preds = %130, %59
  %132 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %133 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %132, i32 0, i32 3
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load %struct.urb*, %struct.urb** %6, align 8
  %136 = call i32 @usb_free_urb(%struct.urb* %135)
  br label %137

137:                                              ; preds = %131, %15
  %138 = load %struct.imon_context*, %struct.imon_context** %5, align 8
  %139 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  store %struct.imon_context* null, %struct.imon_context** %3, align 8
  br label %143

143:                                              ; preds = %137, %117
  %144 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  ret %struct.imon_context* %144
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @imon_find_endpoints(%struct.imon_context*, %struct.usb_host_interface*) #1

declare dso_local i32* @imon_init_touch(%struct.imon_context*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.imon_context*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @input_unregister_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
