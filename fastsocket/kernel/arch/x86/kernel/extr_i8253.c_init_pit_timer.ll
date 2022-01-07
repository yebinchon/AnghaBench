; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_i8253.c_init_pit_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_i8253.c_init_pit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@i8253_lock = common dso_local global i32 0, align 4
@PIT_MODE = common dso_local global i32 0, align 4
@LATCH = common dso_local global i32 0, align 4
@PIT_CH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @init_pit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pit_timer(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = call i32 @spin_lock(i32* @i8253_lock)
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %40 [
    i32 131, label %7
    i32 129, label %18
    i32 128, label %18
    i32 132, label %36
    i32 130, label %39
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @PIT_MODE, align 4
  %9 = call i32 @outb_pit(i32 52, i32 %8)
  %10 = load i32, i32* @LATCH, align 4
  %11 = and i32 %10, 255
  %12 = load i32, i32* @PIT_CH0, align 4
  %13 = call i32 @outb_pit(i32 %11, i32 %12)
  %14 = load i32, i32* @LATCH, align 4
  %15 = ashr i32 %14, 8
  %16 = load i32, i32* @PIT_CH0, align 4
  %17 = call i32 @outb_pit(i32 %15, i32 %16)
  br label %40

18:                                               ; preds = %2, %2
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 131
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %25 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 132
  br i1 %27, label %28, label %35

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @PIT_MODE, align 4
  %30 = call i32 @outb_pit(i32 48, i32 %29)
  %31 = load i32, i32* @PIT_CH0, align 4
  %32 = call i32 @outb_pit(i32 0, i32 %31)
  %33 = load i32, i32* @PIT_CH0, align 4
  %34 = call i32 @outb_pit(i32 0, i32 %33)
  br label %35

35:                                               ; preds = %28, %23
  br label %40

36:                                               ; preds = %2
  %37 = load i32, i32* @PIT_MODE, align 4
  %38 = call i32 @outb_pit(i32 56, i32 %37)
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %2, %39, %36, %35, %7
  %41 = call i32 @spin_unlock(i32* @i8253_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb_pit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
