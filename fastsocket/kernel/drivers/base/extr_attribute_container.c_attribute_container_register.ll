; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_attribute_container.c_attribute_container_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_container = type { i32, i32 }

@internal_container_klist_get = common dso_local global i32 0, align 4
@internal_container_klist_put = common dso_local global i32 0, align 4
@attribute_container_mutex = common dso_local global i32 0, align 4
@attribute_container_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attribute_container_register(%struct.attribute_container* %0) #0 {
  %2 = alloca %struct.attribute_container*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %2, align 8
  %3 = load %struct.attribute_container*, %struct.attribute_container** %2, align 8
  %4 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %3, i32 0, i32 0
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = load %struct.attribute_container*, %struct.attribute_container** %2, align 8
  %7 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %6, i32 0, i32 1
  %8 = load i32, i32* @internal_container_klist_get, align 4
  %9 = load i32, i32* @internal_container_klist_put, align 4
  %10 = call i32 @klist_init(i32* %7, i32 %8, i32 %9)
  %11 = call i32 @mutex_lock(i32* @attribute_container_mutex)
  %12 = load %struct.attribute_container*, %struct.attribute_container** %2, align 8
  %13 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %12, i32 0, i32 0
  %14 = call i32 @list_add_tail(i32* %13, i32* @attribute_container_list)
  %15 = call i32 @mutex_unlock(i32* @attribute_container_mutex)
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @klist_init(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
