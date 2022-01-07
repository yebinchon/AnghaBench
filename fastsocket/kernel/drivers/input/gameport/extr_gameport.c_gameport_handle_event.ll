; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_handle_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport_event = type { i32, i32 }

@gameport_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gameport_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameport_handle_event() #0 {
  %1 = alloca %struct.gameport_event*, align 8
  %2 = call i32 @mutex_lock(i32* @gameport_mutex)
  %3 = call %struct.gameport_event* (...) @gameport_get_event()
  store %struct.gameport_event* %3, %struct.gameport_event** %1, align 8
  %4 = icmp ne %struct.gameport_event* %3, null
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  %6 = load %struct.gameport_event*, %struct.gameport_event** %1, align 8
  %7 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 128, label %9
    i32 129, label %14
  ]

9:                                                ; preds = %5
  %10 = load %struct.gameport_event*, %struct.gameport_event** %1, align 8
  %11 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @gameport_add_port(i32 %12)
  br label %20

14:                                               ; preds = %5
  %15 = load %struct.gameport_event*, %struct.gameport_event** %1, align 8
  %16 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gameport_attach_driver(i32 %17)
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %14, %9
  %21 = load %struct.gameport_event*, %struct.gameport_event** %1, align 8
  %22 = call i32 @gameport_remove_duplicate_events(%struct.gameport_event* %21)
  %23 = load %struct.gameport_event*, %struct.gameport_event** %1, align 8
  %24 = call i32 @gameport_free_event(%struct.gameport_event* %23)
  br label %25

25:                                               ; preds = %20, %0
  %26 = call i32 @mutex_unlock(i32* @gameport_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gameport_event* @gameport_get_event(...) #1

declare dso_local i32 @gameport_add_port(i32) #1

declare dso_local i32 @gameport_attach_driver(i32) #1

declare dso_local i32 @gameport_remove_duplicate_events(%struct.gameport_event*) #1

declare dso_local i32 @gameport_free_event(%struct.gameport_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
