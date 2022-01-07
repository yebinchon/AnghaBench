; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_user.c_send_notify_to_eventfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_user.c_send_notify_to_eventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lg_eventfd_map = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_notify_to_eventfd(%struct.lg_cpu* %0) #0 {
  %2 = alloca %struct.lg_cpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lg_eventfd_map*, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %7 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.lg_eventfd_map* @rcu_dereference(i32 %10)
  store %struct.lg_eventfd_map* %11, %struct.lg_eventfd_map** %4, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %44, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %4, align 8
  %15 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %12
  %19 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %4, align 8
  %20 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %28 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %18
  %32 = load %struct.lg_eventfd_map*, %struct.lg_eventfd_map** %4, align 8
  %33 = getelementptr inbounds %struct.lg_eventfd_map, %struct.lg_eventfd_map* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @eventfd_signal(i32 %39, i32 1)
  %41 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %42 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %47

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %12

47:                                               ; preds = %31, %12
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %50 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.lg_eventfd_map* @rcu_dereference(i32) #1

declare dso_local i32 @eventfd_signal(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
