; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i32 }

@tty_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_unregister_device(%struct.tty_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @tty_class, align 4
  %6 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %7 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %10 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MKDEV(i32 %8, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = add i32 %12, %13
  %15 = call i32 @device_destroy(i32 %5, i32 %14)
  ret void
}

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
