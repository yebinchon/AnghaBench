; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_bl_down_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_bl_down_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_lock = type { i32, i32, i32 }
%struct.waiter = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_lock*)* @bl_down_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_down_write(%struct.block_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.block_lock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.waiter, align 4
  store %struct.block_lock* %0, %struct.block_lock** %3, align 8
  %6 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %7 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %10 = call i32 @__check_holder(%struct.block_lock* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %15 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %20 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %25 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %24, i32 0, i32 2
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %30 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @__add_holder(%struct.block_lock* %31, i32 %32)
  %34 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %35 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  store i32 0, i32* %2, align 4
  br label %53

37:                                               ; preds = %23, %18
  %38 = load i32, i32* @current, align 4
  %39 = call i32 @get_task_struct(i32 %38)
  %40 = load i32, i32* @current, align 4
  %41 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 1
  %44 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %45 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %44, i32 0, i32 2
  %46 = call i32 @list_add(i32* %43, i32* %45)
  %47 = load %struct.block_lock*, %struct.block_lock** %3, align 8
  %48 = getelementptr inbounds %struct.block_lock, %struct.block_lock* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = call i32 @__wait(%struct.waiter* %5)
  %51 = load i32, i32* @current, align 4
  %52 = call i32 @put_task_struct(i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %37, %28, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__check_holder(%struct.block_lock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @__add_holder(%struct.block_lock*, i32) #1

declare dso_local i32 @get_task_struct(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__wait(%struct.waiter*) #1

declare dso_local i32 @put_task_struct(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
