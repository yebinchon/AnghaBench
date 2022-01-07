; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_inject_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_inject_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.input_dev* }
%struct.input_dev = type { i32, i32, i32 }

@EV_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_inject_event(%struct.input_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca %struct.input_handle*, align 8
  %11 = alloca i64, align 8
  store %struct.input_handle* %0, %struct.input_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %13 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %12, i32 0, i32 0
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EV_MAX, align 4
  %20 = call i64 @is_event_supported(i32 %15, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %4
  %23 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.input_handle* @rcu_dereference(i32 %30)
  store %struct.input_handle* %31, %struct.input_handle** %10, align 8
  %32 = load %struct.input_handle*, %struct.input_handle** %10, align 8
  %33 = icmp ne %struct.input_handle* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.input_handle*, %struct.input_handle** %10, align 8
  %36 = load %struct.input_handle*, %struct.input_handle** %5, align 8
  %37 = icmp eq %struct.input_handle* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %22
  %39 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @input_handle_event(%struct.input_dev* %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %44, %4
  ret void
}

declare dso_local i64 @is_event_supported(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.input_handle* @rcu_dereference(i32) #1

declare dso_local i32 @input_handle_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
