; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_guest_new_pagetable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_guest_new_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guest_new_pagetable(%struct.lg_cpu* %0, i64 %1) #0 {
  %3 = alloca %struct.lg_cpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @find_pgdir(%struct.TYPE_2__* %9, i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %14 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = icmp eq i32 %12, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @new_pgdir(%struct.lg_cpu* %21, i64 %22, i32* %6)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %27 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %32 = call i32 @pin_stack_pages(%struct.lg_cpu* %31)
  br label %33

33:                                               ; preds = %30, %24
  ret void
}

declare dso_local i32 @find_pgdir(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @new_pgdir(%struct.lg_cpu*, i64, i32*) #1

declare dso_local i32 @pin_stack_pages(%struct.lg_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
