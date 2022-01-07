; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, i32, i32 }
%struct.bio = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @loop_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.loop_device*, align 8
  %4 = alloca %struct.bio*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.loop_device*
  store %struct.loop_device* %6, %struct.loop_device** %3, align 8
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @set_user_nice(i32 %7, i32 -20)
  br label %9

9:                                                ; preds = %40, %39, %1
  %10 = call i64 (...) @kthread_should_stop()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %14 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %13, i32 0, i32 1
  %15 = call i64 @bio_list_empty(i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ true, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %57

20:                                               ; preds = %18
  %21 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %22 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %25 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %24, i32 0, i32 1
  %26 = call i64 @bio_list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call i64 (...) @kthread_should_stop()
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi i1 [ true, %20 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @wait_event_interruptible(i32 %23, i32 %33)
  %35 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %36 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %35, i32 0, i32 1
  %37 = call i64 @bio_list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %9

40:                                               ; preds = %31
  %41 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %42 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %45 = call %struct.bio* @loop_get_bio(%struct.loop_device* %44)
  store %struct.bio* %45, %struct.bio** %4, align 8
  %46 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %47 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = icmp ne %struct.bio* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %55 = load %struct.bio*, %struct.bio** %4, align 8
  %56 = call i32 @loop_handle_bio(%struct.loop_device* %54, %struct.bio* %55)
  br label %9

57:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @bio_list_empty(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.bio* @loop_get_bio(%struct.loop_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @loop_handle_bio(%struct.loop_device*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
