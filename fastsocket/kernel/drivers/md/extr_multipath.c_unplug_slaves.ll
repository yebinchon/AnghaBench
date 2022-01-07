; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_unplug_slaves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_unplug_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32 }
%struct.request_queue = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @unplug_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unplug_slaves(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %7 = load %struct.mddev*, %struct.mddev** %2, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mddev*, %struct.mddev** %2, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.md_rdev* @rcu_dereference(i32 %25)
  store %struct.md_rdev* %26, %struct.md_rdev** %5, align 8
  %27 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %28 = icmp ne %struct.md_rdev* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %17
  %30 = load i32, i32* @Faulty, align 4
  %31 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 2
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %29
  %36 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 0
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %42 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.request_queue* @bdev_get_queue(i32 %43)
  store %struct.request_queue* %44, %struct.request_queue** %6, align 8
  %45 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %46 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %50 = call i32 @blk_unplug(%struct.request_queue* %49)
  %51 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %52 = load %struct.mddev*, %struct.mddev** %2, align 8
  %53 = call i32 @rdev_dec_pending(%struct.md_rdev* %51, %struct.mddev* %52)
  %54 = call i32 (...) @rcu_read_lock()
  br label %55

55:                                               ; preds = %40, %35, %29, %17
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %11

59:                                               ; preds = %11
  %60 = call i32 (...) @rcu_read_unlock()
  ret void
}

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
