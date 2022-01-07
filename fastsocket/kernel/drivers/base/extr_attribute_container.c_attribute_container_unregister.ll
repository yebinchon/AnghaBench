; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_container = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@attribute_container_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attribute_container_unregister(%struct.attribute_container* %0) #0 {
  %2 = alloca %struct.attribute_container*, align 8
  %3 = alloca i32, align 4
  store %struct.attribute_container* %0, %struct.attribute_container** %2, align 8
  %4 = load i32, i32* @EBUSY, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @mutex_lock(i32* @attribute_container_mutex)
  %7 = load %struct.attribute_container*, %struct.attribute_container** %2, align 8
  %8 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.attribute_container*, %struct.attribute_container** %2, align 8
  %12 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %21

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %18 = load %struct.attribute_container*, %struct.attribute_container** %2, align 8
  %19 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  br label %21

21:                                               ; preds = %17, %16
  %22 = load %struct.attribute_container*, %struct.attribute_container** %2, align 8
  %23 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = call i32 @mutex_unlock(i32* @attribute_container_mutex)
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
