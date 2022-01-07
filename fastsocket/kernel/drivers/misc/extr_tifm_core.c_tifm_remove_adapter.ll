; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_remove_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_tifm_core.c_tifm_remove_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_adapter = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@workqueue = common dso_local global i32 0, align 4
@tifm_adapter_lock = common dso_local global i32 0, align 4
@tifm_adapter_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tifm_remove_adapter(%struct.tifm_adapter* %0) #0 {
  %2 = alloca %struct.tifm_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.tifm_adapter* %0, %struct.tifm_adapter** %2, align 8
  %4 = load i32, i32* @workqueue, align 4
  %5 = call i32 @flush_workqueue(i32 %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.tifm_adapter*, %struct.tifm_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load %struct.tifm_adapter*, %struct.tifm_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.tifm_adapter*, %struct.tifm_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @device_unregister(i32* %29)
  br label %31

31:                                               ; preds = %21, %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %6
  %36 = call i32 @spin_lock(i32* @tifm_adapter_lock)
  %37 = load %struct.tifm_adapter*, %struct.tifm_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @idr_remove(i32* @tifm_adapter_idr, i32 %39)
  %41 = call i32 @spin_unlock(i32* @tifm_adapter_lock)
  %42 = load %struct.tifm_adapter*, %struct.tifm_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %42, i32 0, i32 1
  %44 = call i32 @device_del(i32* %43)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
