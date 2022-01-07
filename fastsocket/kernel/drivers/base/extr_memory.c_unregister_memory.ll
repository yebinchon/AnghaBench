; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_memory.c_unregister_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_memory.c_unregister_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@memory_sysdev_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memory_block*)* @unregister_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_memory(%struct.memory_block* %0) #0 {
  %2 = alloca %struct.memory_block*, align 8
  store %struct.memory_block* %0, %struct.memory_block** %2, align 8
  %3 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %4 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, @memory_sysdev_class
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %11 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @kobject_put(i32* %12)
  %14 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %15 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %14, i32 0, i32 0
  %16 = call i32 @sysdev_unregister(%struct.TYPE_2__* %15)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @sysdev_unregister(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
