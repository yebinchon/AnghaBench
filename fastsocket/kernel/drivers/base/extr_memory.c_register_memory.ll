; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_memory.c_register_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_memory.c_register_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@memory_sysdev_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_block*)* @register_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_memory(%struct.memory_block* %0) #0 {
  %2 = alloca %struct.memory_block*, align 8
  %3 = alloca i32, align 4
  store %struct.memory_block* %0, %struct.memory_block** %2, align 8
  %4 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %5 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32* @memory_sysdev_class, i32** %6, align 8
  %7 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %8 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %11 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %14 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %13, i32 0, i32 0
  %15 = call i32 @sysdev_register(%struct.TYPE_2__* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @sysdev_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
