; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_noop-iosched.c_noop_exit_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_noop-iosched.c_noop_exit_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { %struct.noop_data* }
%struct.noop_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elevator_queue*)* @noop_exit_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noop_exit_queue(%struct.elevator_queue* %0) #0 {
  %2 = alloca %struct.elevator_queue*, align 8
  %3 = alloca %struct.noop_data*, align 8
  store %struct.elevator_queue* %0, %struct.elevator_queue** %2, align 8
  %4 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %5 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %4, i32 0, i32 0
  %6 = load %struct.noop_data*, %struct.noop_data** %5, align 8
  store %struct.noop_data* %6, %struct.noop_data** %3, align 8
  %7 = load %struct.noop_data*, %struct.noop_data** %3, align 8
  %8 = getelementptr inbounds %struct.noop_data, %struct.noop_data* %7, i32 0, i32 0
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.noop_data*, %struct.noop_data** %3, align 8
  %15 = call i32 @kfree(%struct.noop_data* %14)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.noop_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
