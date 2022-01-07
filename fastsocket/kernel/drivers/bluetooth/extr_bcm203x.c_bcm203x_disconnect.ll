; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bcm203x.c_bcm203x_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bcm203x.c_bcm203x_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.bcm203x_data = type { %struct.bcm203x_data*, %struct.bcm203x_data*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"intf %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @bcm203x_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm203x_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.bcm203x_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.bcm203x_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.bcm203x_data* %5, %struct.bcm203x_data** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %6)
  %8 = load %struct.bcm203x_data*, %struct.bcm203x_data** %3, align 8
  %9 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @usb_kill_urb(i32 %10)
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = call i32 @usb_set_intfdata(%struct.usb_interface* %12, i32* null)
  %14 = load %struct.bcm203x_data*, %struct.bcm203x_data** %3, align 8
  %15 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_free_urb(i32 %16)
  %18 = load %struct.bcm203x_data*, %struct.bcm203x_data** %3, align 8
  %19 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %18, i32 0, i32 1
  %20 = load %struct.bcm203x_data*, %struct.bcm203x_data** %19, align 8
  %21 = call i32 @kfree(%struct.bcm203x_data* %20)
  %22 = load %struct.bcm203x_data*, %struct.bcm203x_data** %3, align 8
  %23 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %22, i32 0, i32 0
  %24 = load %struct.bcm203x_data*, %struct.bcm203x_data** %23, align 8
  %25 = call i32 @kfree(%struct.bcm203x_data* %24)
  %26 = load %struct.bcm203x_data*, %struct.bcm203x_data** %3, align 8
  %27 = call i32 @kfree(%struct.bcm203x_data* %26)
  ret void
}

declare dso_local %struct.bcm203x_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.bcm203x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
