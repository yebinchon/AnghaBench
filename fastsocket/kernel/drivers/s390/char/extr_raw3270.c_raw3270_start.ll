; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.raw3270* }
%struct.raw3270 = type { i32, i32, %struct.raw3270_view* }
%struct.raw3270_request = type { i32 }

@RAW3270_FLAGS_FROZEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@RAW3270_FLAGS_READY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw3270_start(%struct.raw3270_view* %0, %struct.raw3270_request* %1) #0 {
  %3 = alloca %struct.raw3270_view*, align 8
  %4 = alloca %struct.raw3270_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.raw3270*, align 8
  %7 = alloca i32, align 4
  store %struct.raw3270_view* %0, %struct.raw3270_view** %3, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %4, align 8
  %8 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %9 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %8, i32 0, i32 0
  %10 = load %struct.raw3270*, %struct.raw3270** %9, align 8
  %11 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @get_ccwdev_lock(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %17 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %16, i32 0, i32 0
  %18 = load %struct.raw3270*, %struct.raw3270** %17, align 8
  store %struct.raw3270* %18, %struct.raw3270** %6, align 8
  %19 = load %struct.raw3270*, %struct.raw3270** %6, align 8
  %20 = icmp ne %struct.raw3270* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.raw3270*, %struct.raw3270** %6, align 8
  %23 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %22, i32 0, i32 2
  %24 = load %struct.raw3270_view*, %struct.raw3270_view** %23, align 8
  %25 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %26 = icmp ne %struct.raw3270_view* %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @RAW3270_FLAGS_FROZEN, align 4
  %29 = load %struct.raw3270*, %struct.raw3270** %6, align 8
  %30 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %29, i32 0, i32 1
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21, %2
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %51

36:                                               ; preds = %27
  %37 = load i32, i32* @RAW3270_FLAGS_READY, align 4
  %38 = load %struct.raw3270*, %struct.raw3270** %6, align 8
  %39 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %38, i32 0, i32 1
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.raw3270*, %struct.raw3270** %6, align 8
  %47 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %48 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %49 = call i32 @__raw3270_start(%struct.raw3270* %46, %struct.raw3270_view* %47, %struct.raw3270_request* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %53 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %52, i32 0, i32 0
  %54 = load %struct.raw3270*, %struct.raw3270** %53, align 8
  %55 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @get_ccwdev_lock(i32 %56)
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__raw3270_start(%struct.raw3270*, %struct.raw3270_view*, %struct.raw3270_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
