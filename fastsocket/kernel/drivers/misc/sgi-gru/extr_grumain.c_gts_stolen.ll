; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gts_stolen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gts_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i32 }
%struct.gru_blade_state = type { i32 }

@steal_kernel_context = common dso_local global i32 0, align 4
@steal_user_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_thread_state*, %struct.gru_blade_state*)* @gts_stolen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gts_stolen(%struct.gru_thread_state* %0, %struct.gru_blade_state* %1) #0 {
  %3 = alloca %struct.gru_thread_state*, align 8
  %4 = alloca %struct.gru_blade_state*, align 8
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %3, align 8
  store %struct.gru_blade_state* %1, %struct.gru_blade_state** %4, align 8
  %5 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %6 = call i64 @is_kernel_context(%struct.gru_thread_state* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.gru_blade_state*, %struct.gru_blade_state** %4, align 8
  %10 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %9, i32 0, i32 0
  %11 = call i32 @up_write(i32* %10)
  %12 = load i32, i32* @steal_kernel_context, align 4
  %13 = call i32 @STAT(i32 %12)
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  %16 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* @steal_user_context, align 4
  %19 = call i32 @STAT(i32 %18)
  br label %20

20:                                               ; preds = %14, %8
  ret void
}

declare dso_local i64 @is_kernel_context(%struct.gru_thread_state*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
