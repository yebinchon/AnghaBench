; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_port*)* }

@ASYNCB_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_port*)* @tty_port_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_port_shutdown(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %3 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %4 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.tty_port*)*, i32 (%struct.tty_port*)** %6, align 8
  %8 = icmp ne i32 (%struct.tty_port*)* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @ASYNCB_INITIALIZED, align 4
  %11 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 1
  %13 = call i64 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %17 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.tty_port*)*, i32 (%struct.tty_port*)** %19, align 8
  %21 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %22 = call i32 %20(%struct.tty_port* %21)
  br label %23

23:                                               ; preds = %15, %9, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
