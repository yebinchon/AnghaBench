; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ptrace32.c_compat_ptrace_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ptrace32.c_compat_ptrace_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i64, i64, i64)* @compat_ptrace_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compat_ptrace_old(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  switch i64 %10, label %25 [
    i64 129, label %11
    i64 128, label %18
  ]

11:                                               ; preds = %4
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = load i32, i32* @current, align 4
  %14 = call i32 @task_user_regset_view(i32 %13)
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @compat_ptr(i64 %15)
  %17 = call i64 @copy_regset_to_user(%struct.task_struct* %12, i32 %14, i32 0, i32 0, i32 128, i32 %16)
  store i64 %17, i64* %5, align 8
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @task_user_regset_view(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @compat_ptr(i64 %22)
  %24 = call i64 @copy_regset_from_user(%struct.task_struct* %19, i32 %21, i32 0, i32 0, i32 128, i32 %23)
  store i64 %24, i64* %5, align 8
  br label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EPERM, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

declare dso_local i64 @copy_regset_to_user(%struct.task_struct*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @task_user_regset_view(i32) #1

declare dso_local i32 @compat_ptr(i64) #1

declare dso_local i64 @copy_regset_from_user(%struct.task_struct*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
