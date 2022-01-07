; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_unplug_slaves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_unplug_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32 }
%struct.request_queue = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @unplug_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unplug_slaves(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %8 = load %struct.mddev*, %struct.mddev** %2, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  store %struct.r5conf* %10, %struct.r5conf** %3, align 8
  %11 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %12 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %15 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @max(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %62, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.md_rdev* @rcu_dereference(i32 %31)
  store %struct.md_rdev* %32, %struct.md_rdev** %6, align 8
  %33 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %34 = icmp ne %struct.md_rdev* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %23
  %36 = load i32, i32* @Faulty, align 4
  %37 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 2
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %35
  %42 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.request_queue* @bdev_get_queue(i32 %49)
  store %struct.request_queue* %50, %struct.request_queue** %7, align 8
  %51 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 0
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %56 = call i32 @blk_unplug(%struct.request_queue* %55)
  %57 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %58 = load %struct.mddev*, %struct.mddev** %2, align 8
  %59 = call i32 @rdev_dec_pending(%struct.md_rdev* %57, %struct.mddev* %58)
  %60 = call i32 (...) @rcu_read_lock()
  br label %61

61:                                               ; preds = %46, %41, %35, %23
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %19

65:                                               ; preds = %19
  %66 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @blk_unplug(%struct.request_queue*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
