; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_allocate_memory_wrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_allocate_memory_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32 }

@agp_bridge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agp_memory* @agp_allocate_memory_wrap(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.agp_memory*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_memory*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @agp_bridge, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.agp_memory* @agp_allocate_memory(i32 %7, i64 %8, i32 %9)
  store %struct.agp_memory* %10, %struct.agp_memory** %6, align 8
  %11 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %12 = icmp eq %struct.agp_memory* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.agp_memory* null, %struct.agp_memory** %3, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  %16 = call i32 @agp_insert_into_pool(%struct.agp_memory* %15)
  %17 = load %struct.agp_memory*, %struct.agp_memory** %6, align 8
  store %struct.agp_memory* %17, %struct.agp_memory** %3, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load %struct.agp_memory*, %struct.agp_memory** %3, align 8
  ret %struct.agp_memory* %19
}

declare dso_local %struct.agp_memory* @agp_allocate_memory(i32, i64, i32) #1

declare dso_local i32 @agp_insert_into_pool(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
