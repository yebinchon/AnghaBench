; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_remote.c_send_mouse_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_remote.c_send_mouse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.remote_input = type { i8, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@REMOTE_BUTTON_LEFT = common dso_local global i8 0, align 1
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REMOTE_BUTTON_MIDDLE = common dso_local global i8 0, align 1
@BTN_RIGHT = common dso_local global i32 0, align 4
@REMOTE_BUTTON_RIGHT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.remote_input*)* @send_mouse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_mouse_event(%struct.input_dev* %0, %struct.remote_input* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.remote_input*, align 8
  %5 = alloca i8, align 1
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.remote_input* %1, %struct.remote_input** %4, align 8
  %6 = load %struct.remote_input*, %struct.remote_input** %4, align 8
  %7 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  store i8 %8, i8* %5, align 1
  %9 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %10 = load i32, i32* @ABS_X, align 4
  %11 = load %struct.remote_input*, %struct.remote_input** %4, align 8
  %12 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @input_report_abs(%struct.input_dev* %9, i32 %10, i32 %15)
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = load i32, i32* @ABS_Y, align 4
  %19 = load %struct.remote_input*, %struct.remote_input** %4, align 8
  %20 = getelementptr inbounds %struct.remote_input, %struct.remote_input* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @input_report_abs(%struct.input_dev* %17, i32 %18, i32 %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %26 = load i32, i32* @BTN_LEFT, align 4
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @REMOTE_BUTTON_LEFT, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = call i32 @input_report_key(%struct.input_dev* %25, i32 %26, i8 zeroext %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %35 = load i32, i32* @BTN_MIDDLE, align 4
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @REMOTE_BUTTON_MIDDLE, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = call i32 @input_report_key(%struct.input_dev* %34, i32 %35, i8 zeroext %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %44 = load i32, i32* @BTN_RIGHT, align 4
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @REMOTE_BUTTON_RIGHT, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = trunc i32 %49 to i8
  %51 = call i32 @input_report_key(%struct.input_dev* %43, i32 %44, i8 zeroext %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %53 = call i32 @input_sync(%struct.input_dev* %52)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
