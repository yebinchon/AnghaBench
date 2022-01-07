; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sn_console.c_sn_sal_timer_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sn_console.c_sn_sal_timer_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_cons_port = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@sn_process_input = common dso_local global i64 0, align 8
@TRANSMIT_RAW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sn_sal_timer_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_sal_timer_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sn_cons_port*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sn_cons_port*
  store %struct.sn_cons_port* %6, %struct.sn_cons_port** %3, align 8
  %7 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %8 = icmp ne %struct.sn_cons_port* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %12 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %10
  %17 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %18 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i64, i64* @sn_process_input, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @sn_receive_chars(%struct.sn_cons_port* %25, i64 %26)
  br label %28

28:                                               ; preds = %24, %16
  %29 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %30 = load i32, i32* @TRANSMIT_RAW, align 4
  %31 = call i32 @sn_transmit_chars(%struct.sn_cons_port* %29, i32 %30)
  %32 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %33 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %38 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %37, i32 0, i32 1
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %41 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @mod_timer(i32* %38, i64 %43)
  br label %45

45:                                               ; preds = %9, %28, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sn_receive_chars(%struct.sn_cons_port*, i64) #1

declare dso_local i32 @sn_transmit_chars(%struct.sn_cons_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
