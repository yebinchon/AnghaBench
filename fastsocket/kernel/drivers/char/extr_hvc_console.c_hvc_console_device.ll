; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_console_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_console_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.console = type { i64 }

@vtermnos = common dso_local global i32* null, align 8
@hvc_driver = common dso_local global %struct.tty_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_driver* (%struct.console*, i32*)* @hvc_console_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_driver* @hvc_console_device(%struct.console* %0, i32* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.console*, align 8
  %5 = alloca i32*, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** @vtermnos, align 8
  %7 = load %struct.console*, %struct.console** %4, align 8
  %8 = getelementptr inbounds %struct.console, %struct.console* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.tty_driver* null, %struct.tty_driver** %3, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.console*, %struct.console** %4, align 8
  %16 = getelementptr inbounds %struct.console, %struct.console* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.tty_driver*, %struct.tty_driver** @hvc_driver, align 8
  store %struct.tty_driver* %20, %struct.tty_driver** %3, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  ret %struct.tty_driver* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
