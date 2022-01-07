; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_embed_debug_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_ptrace.c_embed_debug_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64)* @embed_debug_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @embed_debug_trap(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %9, -4
  store i64 %10, i64* %8, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @access_process_vm(%struct.task_struct* %11, i64 %12, i64* %6, i32 8, i32 0)
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @register_debug_trap(%struct.task_struct* %18, i64 %19, i64 %20, i64* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @access_process_vm(%struct.task_struct* %25, i64 %26, i64* %7, i32 8, i32 1)
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %23, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @access_process_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

declare dso_local i64 @register_debug_trap(%struct.task_struct*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
