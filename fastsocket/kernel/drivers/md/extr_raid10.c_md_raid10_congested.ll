; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_md_raid10_congested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_md_raid10_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.md_rdev = type { i32, i32 }
%struct.request_queue = type { i32 }

@BDI_async_congested = common dso_local global i32 0, align 4
@max_queued_requests = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_raid10_congested(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load %struct.r10conf*, %struct.r10conf** %12, align 8
  store %struct.r10conf* %13, %struct.r10conf** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BDI_async_congested, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %21 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @max_queued_requests, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %83

26:                                               ; preds = %19, %2
  %27 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %77, %26
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %31 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %38 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i1 [ false, %35 ], [ %44, %42 ]
  br i1 %46, label %47, label %80

47:                                               ; preds = %45
  %48 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %49 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.md_rdev* @rcu_dereference(i32 %55)
  store %struct.md_rdev* %56, %struct.md_rdev** %9, align 8
  %57 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %58 = icmp ne %struct.md_rdev* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %47
  %60 = load i32, i32* @Faulty, align 4
  %61 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %62 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %61, i32 0, i32 1
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %67 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.request_queue* @bdev_get_queue(i32 %68)
  store %struct.request_queue* %69, %struct.request_queue** %10, align 8
  %70 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %71 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @bdi_congested(i32* %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %65, %59, %47
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %28

80:                                               ; preds = %45
  %81 = call i32 (...) @rcu_read_unlock()
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %25
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @bdi_congested(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
