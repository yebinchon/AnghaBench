; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.hil_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @hil_dev_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hil_dev_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.hil_dev*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.hil_dev* @serio_get_drvdata(%struct.serio* %4)
  store %struct.hil_dev* %5, %struct.hil_dev** %3, align 8
  %6 = load %struct.hil_dev*, %struct.hil_dev** %3, align 8
  %7 = icmp eq %struct.hil_dev* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.serio*, %struct.serio** %2, align 8
  %11 = call i32 @serio_close(%struct.serio* %10)
  %12 = load %struct.hil_dev*, %struct.hil_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hil_dev, %struct.hil_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_unregister_device(i32 %14)
  %16 = load %struct.serio*, %struct.serio** %2, align 8
  %17 = call i32 @serio_set_drvdata(%struct.serio* %16, i32* null)
  %18 = load %struct.hil_dev*, %struct.hil_dev** %3, align 8
  %19 = call i32 @kfree(%struct.hil_dev* %18)
  ret void
}

declare dso_local %struct.hil_dev* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

declare dso_local i32 @kfree(%struct.hil_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
