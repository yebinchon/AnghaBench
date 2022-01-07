; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_congested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_multipath.c_multipath_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.mpconf* }
%struct.mpconf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32, i32 }
%struct.request_queue = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @multipath_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_congested(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.mpconf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.md_rdev*, align 8
  %11 = alloca %struct.request_queue*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.mddev*
  store %struct.mddev* %13, %struct.mddev** %6, align 8
  %14 = load %struct.mddev*, %struct.mddev** %6, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 1
  %16 = load %struct.mpconf*, %struct.mpconf** %15, align 8
  store %struct.mpconf* %16, %struct.mpconf** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.mddev*, %struct.mddev** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @mddev_congested(%struct.mddev* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %60, %22
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mddev*, %struct.mddev** %6, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct.mpconf*, %struct.mpconf** %7, align 8
  %32 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.md_rdev* @rcu_dereference(i32 %38)
  store %struct.md_rdev* %39, %struct.md_rdev** %10, align 8
  %40 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %41 = icmp ne %struct.md_rdev* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %30
  %43 = load i32, i32* @Faulty, align 4
  %44 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %45 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %44, i32 0, i32 1
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load %struct.md_rdev*, %struct.md_rdev** %10, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.request_queue* @bdev_get_queue(i32 %51)
  store %struct.request_queue* %52, %struct.request_queue** %11, align 8
  %53 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @bdi_congested(i32* %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %63

59:                                               ; preds = %42, %30
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %24

63:                                               ; preds = %48, %24
  %64 = call i32 (...) @rcu_read_unlock()
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %21
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @mddev_congested(%struct.mddev*, i32) #1

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
