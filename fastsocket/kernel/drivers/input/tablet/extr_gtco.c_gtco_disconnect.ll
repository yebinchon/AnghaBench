; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_gtco.c_gtco_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_gtco.c_gtco_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.gtco = type { i32, i32, i32, i32, i32 }

@REPORT_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"gtco driver disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @gtco_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtco_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.gtco*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.gtco* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.gtco* %5, %struct.gtco** %3, align 8
  %6 = load %struct.gtco*, %struct.gtco** %3, align 8
  %7 = icmp ne %struct.gtco* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load %struct.gtco*, %struct.gtco** %3, align 8
  %10 = getelementptr inbounds %struct.gtco, %struct.gtco* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @input_unregister_device(i32 %11)
  %13 = load %struct.gtco*, %struct.gtco** %3, align 8
  %14 = getelementptr inbounds %struct.gtco, %struct.gtco* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_kill_urb(i32 %15)
  %17 = load %struct.gtco*, %struct.gtco** %3, align 8
  %18 = getelementptr inbounds %struct.gtco, %struct.gtco* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_free_urb(i32 %19)
  %21 = load %struct.gtco*, %struct.gtco** %3, align 8
  %22 = getelementptr inbounds %struct.gtco, %struct.gtco* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REPORT_MAX_SIZE, align 4
  %25 = load %struct.gtco*, %struct.gtco** %3, align 8
  %26 = getelementptr inbounds %struct.gtco, %struct.gtco* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gtco*, %struct.gtco** %3, align 8
  %29 = getelementptr inbounds %struct.gtco, %struct.gtco* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_buffer_free(i32 %23, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.gtco*, %struct.gtco** %3, align 8
  %33 = call i32 @kfree(%struct.gtco* %32)
  br label %34

34:                                               ; preds = %8, %1
  %35 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.gtco* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.gtco*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
