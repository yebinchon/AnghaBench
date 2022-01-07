; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_handle_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio.c_serio_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio_event = type { i32, i32 }

@serio_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @serio_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_handle_event() #0 {
  %1 = alloca %struct.serio_event*, align 8
  %2 = call i32 @mutex_lock(i32* @serio_mutex)
  %3 = call %struct.serio_event* (...) @serio_get_event()
  store %struct.serio_event* %3, %struct.serio_event** %1, align 8
  %4 = icmp ne %struct.serio_event* %3, null
  br i1 %4, label %5, label %44

5:                                                ; preds = %0
  %6 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %7 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %38 [
    i32 129, label %9
    i32 130, label %14
    i32 128, label %19
    i32 131, label %28
    i32 132, label %33
  ]

9:                                                ; preds = %5
  %10 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %11 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @serio_add_port(i32 %12)
  br label %39

14:                                               ; preds = %5
  %15 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %16 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @serio_reconnect_port(i32 %17)
  br label %39

19:                                               ; preds = %5
  %20 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %21 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @serio_disconnect_port(i32 %22)
  %24 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %25 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @serio_find_driver(i32 %26)
  br label %39

28:                                               ; preds = %5
  %29 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %30 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @serio_reconnect_chain(i32 %31)
  br label %39

33:                                               ; preds = %5
  %34 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %35 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @serio_attach_driver(i32 %36)
  br label %39

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %38, %33, %28, %19, %14, %9
  %40 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %41 = call i32 @serio_remove_duplicate_events(%struct.serio_event* %40)
  %42 = load %struct.serio_event*, %struct.serio_event** %1, align 8
  %43 = call i32 @serio_free_event(%struct.serio_event* %42)
  br label %44

44:                                               ; preds = %39, %0
  %45 = call i32 @mutex_unlock(i32* @serio_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.serio_event* @serio_get_event(...) #1

declare dso_local i32 @serio_add_port(i32) #1

declare dso_local i32 @serio_reconnect_port(i32) #1

declare dso_local i32 @serio_disconnect_port(i32) #1

declare dso_local i32 @serio_find_driver(i32) #1

declare dso_local i32 @serio_reconnect_chain(i32) #1

declare dso_local i32 @serio_attach_driver(i32) #1

declare dso_local i32 @serio_remove_duplicate_events(%struct.serio_event*) #1

declare dso_local i32 @serio_free_event(%struct.serio_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
