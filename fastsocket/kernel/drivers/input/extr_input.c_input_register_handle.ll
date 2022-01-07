; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_register_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_register_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { i32, i32, %struct.input_dev*, %struct.input_handler* }
%struct.input_dev = type { i32, i32 }
%struct.input_handler = type { i32 (%struct.input_handle.0*)*, i32 }
%struct.input_handle.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_register_handle(%struct.input_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_handle*, align 8
  %4 = alloca %struct.input_handler*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.input_handle* %0, %struct.input_handle** %3, align 8
  %7 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %8 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %7, i32 0, i32 3
  %9 = load %struct.input_handler*, %struct.input_handler** %8, align 8
  store %struct.input_handler* %9, %struct.input_handler** %4, align 8
  %10 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %11 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %10, i32 0, i32 2
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock_interruptible(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %22 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %21, i32 0, i32 1
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail_rcu(i32* %22, i32* %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %30 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %29, i32 0, i32 0
  %31 = load %struct.input_handler*, %struct.input_handler** %4, align 8
  %32 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %31, i32 0, i32 1
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  %34 = load %struct.input_handler*, %struct.input_handler** %4, align 8
  %35 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %34, i32 0, i32 0
  %36 = load i32 (%struct.input_handle.0*)*, i32 (%struct.input_handle.0*)** %35, align 8
  %37 = icmp ne i32 (%struct.input_handle.0*)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load %struct.input_handler*, %struct.input_handler** %4, align 8
  %40 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %39, i32 0, i32 0
  %41 = load i32 (%struct.input_handle.0*)*, i32 (%struct.input_handle.0*)** %40, align 8
  %42 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %43 = bitcast %struct.input_handle* %42 to %struct.input_handle.0*
  %44 = call i32 %41(%struct.input_handle.0* %43)
  br label %45

45:                                               ; preds = %38, %20
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
