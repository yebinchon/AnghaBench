; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.yealink_dev = type { i32 }

@sysfs_rwsema = common dso_local global i32 0, align 4
@yld_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.yealink_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = call i32 @down_write(i32* @sysfs_rwsema)
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.yealink_dev* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.yealink_dev* %6, %struct.yealink_dev** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @sysfs_remove_group(i32* %9, i32* @yld_attr_group)
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = call i32 @usb_set_intfdata(%struct.usb_interface* %11, i32* null)
  %13 = call i32 @up_write(i32* @sysfs_rwsema)
  %14 = load %struct.yealink_dev*, %struct.yealink_dev** %3, align 8
  %15 = call i32 @usb_cleanup(%struct.yealink_dev* %14, i32 0)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.yealink_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @usb_cleanup(%struct.yealink_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
