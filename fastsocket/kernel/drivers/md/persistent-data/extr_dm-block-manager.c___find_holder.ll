; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c___find_holder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c___find_holder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_lock = type { %struct.task_struct** }
%struct.task_struct = type { i32 }

@MAX_HOLDERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_lock*, %struct.task_struct*)* @__find_holder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__find_holder(%struct.block_lock* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.block_lock*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.block_lock* %0, %struct.block_lock** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_HOLDERS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %12 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %11, i32 0, i32 0
  %13 = load %struct.task_struct**, %struct.task_struct*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %13, i64 %15
  %17 = load %struct.task_struct*, %struct.task_struct** %16, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = icmp eq %struct.task_struct* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %25

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %20, %6
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MAX_HOLDERS, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
