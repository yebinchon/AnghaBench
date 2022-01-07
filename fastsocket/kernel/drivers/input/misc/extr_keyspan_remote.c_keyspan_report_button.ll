; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_keyspan_remote.c_keyspan_report_button.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_keyspan_remote.c_keyspan_report_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_keyspan = type { i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_keyspan*, i32, i32)* @keyspan_report_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_report_button(%struct.usb_keyspan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_keyspan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  store %struct.usb_keyspan* %0, %struct.usb_keyspan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usb_keyspan*, %struct.usb_keyspan** %4, align 8
  %9 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %7, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %12 = load i32, i32* @EV_MSC, align 4
  %13 = load i32, i32* @MSC_SCAN, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @input_event(%struct.input_dev* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %17 = load %struct.usb_keyspan*, %struct.usb_keyspan** %4, align 8
  %18 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @input_report_key(%struct.input_dev* %16, i32 %23, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %27 = call i32 @input_sync(%struct.input_dev* %26)
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
