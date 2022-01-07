; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_ptrace.c_user_disable_single_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_ptrace.c_user_disable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.user = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EPSW_T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_disable_single_step(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.user*, align 8
  %4 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store %struct.user* null, %struct.user** %3, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = load %struct.user*, %struct.user** %3, align 8
  %7 = getelementptr inbounds %struct.user, %struct.user* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = ptrtoint i32* %8 to i64
  %10 = call i64 @get_stack_long(%struct.task_struct* %5, i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @EPSW_T, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = load %struct.user*, %struct.user** %3, align 8
  %17 = getelementptr inbounds %struct.user, %struct.user* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = ptrtoint i32* %18 to i64
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @put_stack_long(%struct.task_struct* %15, i64 %19, i64 %20)
  ret void
}

declare dso_local i64 @get_stack_long(%struct.task_struct*, i64) #1

declare dso_local i32 @put_stack_long(%struct.task_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
