; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_set_timer_rand_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_random.c_set_timer_rand_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_rand_state = type { i32 }

@irq_timer_state = common dso_local global %struct.timer_rand_state** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.timer_rand_state*)* @set_timer_rand_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_timer_rand_state(i32 %0, %struct.timer_rand_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timer_rand_state*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.timer_rand_state* %1, %struct.timer_rand_state** %4, align 8
  %5 = load %struct.timer_rand_state*, %struct.timer_rand_state** %4, align 8
  %6 = load %struct.timer_rand_state**, %struct.timer_rand_state*** @irq_timer_state, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.timer_rand_state*, %struct.timer_rand_state** %6, i64 %8
  store %struct.timer_rand_state* %5, %struct.timer_rand_state** %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
