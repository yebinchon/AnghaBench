; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_bl_down_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_bl_down_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_lock = type { i32, i32, i32 }
%struct.waiter = type { i32, i64, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_lock*)* @bl_down_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_down_read(%struct.block_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.block_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.waiter, align 8
  store %struct.block_lock* %0, %struct.block_lock** %3, align 8
  %6 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %7 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %10 = call i32 @__check_holder(%struct.block_lock* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %15 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %20 = call i64 @__available_for_read(%struct.block_lock* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %24 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %28 = load i32, i32* @current, align 4
  %29 = call i32 @__add_holder(%struct.block_lock* %27, i32 %28)
  %30 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %31 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  store i32 0, i32* %2, align 4
  br label %49

33:                                               ; preds = %18
  %34 = load i32, i32* @current, align 4
  %35 = call i32 @get_task_struct(i32 %34)
  %36 = load i32, i32* @current, align 4
  %37 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 0
  %40 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %41 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %44 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = call i32 @__wait(%struct.waiter* %5)
  %47 = load i32, i32* @current, align 4
  %48 = call i32 @put_task_struct(i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %33, %22, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__check_holder(%struct.block_lock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @__available_for_read(%struct.block_lock*) #1

declare dso_local i32 @__add_holder(%struct.block_lock*, i32) #1

declare dso_local i32 @get_task_struct(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__wait(%struct.waiter*) #1

declare dso_local i32 @put_task_struct(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
