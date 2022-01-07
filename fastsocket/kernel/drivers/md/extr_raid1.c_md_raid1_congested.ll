; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_md_raid1_congested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_md_raid1_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r1conf* }
%struct.r1conf = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32 }
%struct.request_queue = type { i32 }

@BDI_async_congested = common dso_local global i32 0, align 4
@max_queued_requests = common dso_local global i64 0, align 8
@Faulty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_raid1_congested(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r1conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load %struct.r1conf*, %struct.r1conf** %12, align 8
  store %struct.r1conf* %13, %struct.r1conf** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BDI_async_congested, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %21 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @max_queued_requests, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %91

26:                                               ; preds = %19, %2
  %27 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %85, %26
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %31 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 2
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %28
  %36 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %37 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.md_rdev* @rcu_dereference(i32 %43)
  store %struct.md_rdev* %44, %struct.md_rdev** %9, align 8
  %45 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %46 = icmp ne %struct.md_rdev* %45, null
  br i1 %46, label %47, label %84

47:                                               ; preds = %35
  %48 = load i32, i32* @Faulty, align 4
  %49 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %47
  %54 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.request_queue* @bdev_get_queue(i32 %56)
  store %struct.request_queue* %57, %struct.request_queue** %10, align 8
  %58 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %59 = icmp ne %struct.request_queue* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @BDI_async_congested, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %53
  br i1 true, label %69, label %76

69:                                               ; preds = %68, %53
  %70 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %71 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @bdi_congested(i32* %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %83

76:                                               ; preds = %68
  %77 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %78 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @bdi_congested(i32* %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83, %47, %35
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %28

88:                                               ; preds = %28
  %89 = call i32 (...) @rcu_read_unlock()
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %25
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bdi_congested(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
