; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_serial167_console_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_serial167_console_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.console = type { i32 }

@cy_serial_driver = common dso_local global %struct.tty_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_driver* (%struct.console*, i32*)* @serial167_console_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_driver* @serial167_console_device(%struct.console* %0, i32* %1) #0 {
  %3 = alloca %struct.console*, align 8
  %4 = alloca i32*, align 8
  store %struct.console* %0, %struct.console** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.console*, %struct.console** %3, align 8
  %6 = getelementptr inbounds %struct.console, %struct.console* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  store i32 %7, i32* %8, align 4
  %9 = load %struct.tty_driver*, %struct.tty_driver** @cy_serial_driver, align 8
  ret %struct.tty_driver* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
