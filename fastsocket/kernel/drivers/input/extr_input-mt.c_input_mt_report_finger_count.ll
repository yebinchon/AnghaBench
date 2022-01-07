; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_report_finger_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_report_finger_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUADTAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_mt_report_finger_count(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %6 = load i32, i32* @EV_KEY, align 4
  %7 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @input_event(%struct.input_dev* %5, i32 %6, i32 %7, i32 %10)
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = load i32, i32* @EV_KEY, align 4
  %14 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  %17 = zext i1 %16 to i32
  %18 = call i32 @input_event(%struct.input_dev* %12, i32 %13, i32 %14, i32 %17)
  %19 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %20 = load i32, i32* @EV_KEY, align 4
  %21 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 3
  %24 = zext i1 %23 to i32
  %25 = call i32 @input_event(%struct.input_dev* %19, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %27 = load i32, i32* @EV_KEY, align 4
  %28 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 4
  %31 = zext i1 %30 to i32
  %32 = call i32 @input_event(%struct.input_dev* %26, i32 %27, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
