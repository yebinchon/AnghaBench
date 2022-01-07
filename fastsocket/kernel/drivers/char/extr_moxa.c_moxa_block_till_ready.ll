; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_block_till_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_block_till_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.file = type { i32 }
%struct.moxa_port = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, %struct.moxa_port*)* @moxa_block_till_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxa_block_till_ready(%struct.tty_struct* %0, %struct.file* %1, %struct.moxa_port* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.moxa_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.moxa_port* %2, %struct.moxa_port** %6, align 8
  %10 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %11 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %7, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %3, %38
  %15 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %16 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %15, i32 0, i32 0
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call i32 @prepare_to_wait(i32* %16, i32* @wait, i32 %17)
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call i64 @tty_hung_up_p(%struct.file* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %40

25:                                               ; preds = %14
  %26 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %27 = call i64 @tty_port_carrier_raised(%struct.tty_port* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %40

31:                                               ; preds = %25
  %32 = load i32, i32* @current, align 4
  %33 = call i64 @signal_pending(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ERESTARTSYS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %40

38:                                               ; preds = %31
  %39 = call i32 (...) @schedule()
  br label %14

40:                                               ; preds = %35, %30, %22
  %41 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %42 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %41, i32 0, i32 0
  %43 = call i32 @finish_wait(i32* %42, i32* @wait)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i64 @tty_port_carrier_raised(%struct.tty_port*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
