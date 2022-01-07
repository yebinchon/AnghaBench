; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_unplug_slaves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_unplug_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32 }
%struct.request_queue = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FIXME: No queue on device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @unplug_slaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unplug_slaves(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %7 = load %struct.mddev*, %struct.mddev** %2, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 0
  %9 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  store %struct.r10conf* %9, %struct.r10conf** %3, align 8
  %10 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %62, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %11
  %19 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %20 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.md_rdev* @rcu_dereference(i32 %26)
  store %struct.md_rdev* %27, %struct.md_rdev** %5, align 8
  %28 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %29 = icmp ne %struct.md_rdev* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %18
  %31 = load i32, i32* @Faulty, align 4
  %32 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %33 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %32, i32 0, i32 2
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %30
  %37 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %38 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %37, i32 0, i32 0
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.request_queue* @bdev_get_queue(i32 %44)
  store %struct.request_queue* %45, %struct.request_queue** %6, align 8
  %46 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %47 = icmp ne %struct.request_queue* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = call i32 @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %62

50:                                               ; preds = %41
  %51 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 0
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %56 = call i32 @blk_unplug(%struct.request_queue* %55)
  %57 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %58 = load %struct.mddev*, %struct.mddev** %2, align 8
  %59 = call i32 @rdev_dec_pending(%struct.md_rdev* %57, %struct.mddev* %58)
  %60 = call i32 (...) @rcu_read_lock()
  br label %61

61:                                               ; preds = %50, %36, %30, %18
  br label %62

62:                                               ; preds = %61, %48
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %11

65:                                               ; preds = %11
  %66 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @printk(i8*) #1

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
