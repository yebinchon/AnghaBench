; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_io_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_io_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i64, i64, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@BSG_F_BLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_device*)* @bsg_io_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_io_schedule(%struct.bsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_device*, align 8
  %4 = alloca i32, align 4
  store %struct.bsg_device* %0, %struct.bsg_device** %3, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  store i32 0, i32* %4, align 4
  %7 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %8 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %11 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %14 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %20 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %23 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load i32, i32* @BSG_F_BLOCK, align 4
  %31 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %32 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %31, i32 0, i32 4
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %51

38:                                               ; preds = %29
  %39 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %40 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %39, i32 0, i32 3
  %41 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %42 = call i32 @prepare_to_wait(i32* %40, i32* @wait, i32 %41)
  %43 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %44 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %43, i32 0, i32 2
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = call i32 (...) @io_schedule()
  %47 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %48 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %47, i32 0, i32 3
  %49 = call i32 @finish_wait(i32* %48, i32* @wait)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %35, %26
  %52 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %53 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %38
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
