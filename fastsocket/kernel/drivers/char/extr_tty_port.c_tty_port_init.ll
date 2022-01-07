; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32, i32, i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_port_init(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %3 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %4 = call i32 @memset(%struct.tty_port* %3, i32 0, i32 28)
  %5 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %6 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 6
  %7 = call i32 @init_waitqueue_head(i32* %6)
  %8 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %9 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %8, i32 0, i32 5
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 4
  %13 = call i32 @init_waitqueue_head(i32* %12)
  %14 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %15 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %14, i32 0, i32 3
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %18 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %17, i32 0, i32 2
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 50, %20
  %22 = sdiv i32 %21, 100
  %23 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %24 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 3000, %25
  %27 = sdiv i32 %26, 100
  %28 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %29 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @memset(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
