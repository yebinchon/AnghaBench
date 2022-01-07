; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_ptrace.c_get_reg_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_ptrace.c_get_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@zero = common dso_local global i64 0, align 8
@regoff = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.task_struct*, i64)* @get_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @get_reg_addr(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp eq i64 %6, 30
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64* %12, i64** %5, align 8
  br label %39

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 65
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call %struct.TYPE_4__* @task_thread_info(%struct.task_struct* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64* %20, i64** %5, align 8
  br label %38

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %22, 31
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = icmp ugt i64 %25, 65
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i64 0, i64* @zero, align 8
  store i64* @zero, i64** %5, align 8
  br label %37

28:                                               ; preds = %24
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = call i64* @task_stack_page(%struct.task_struct* %29)
  %31 = load i32*, i32** @regoff, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %30, i64 %35
  store i64* %36, i64** %5, align 8
  br label %37

37:                                               ; preds = %28, %27
  br label %38

38:                                               ; preds = %37, %16
  br label %39

39:                                               ; preds = %38, %8
  %40 = load i64*, i64** %5, align 8
  ret i64* %40
}

declare dso_local %struct.TYPE_4__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64* @task_stack_page(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
