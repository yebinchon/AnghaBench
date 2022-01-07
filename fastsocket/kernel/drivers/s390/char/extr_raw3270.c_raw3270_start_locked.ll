; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_start_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.raw3270* }
%struct.raw3270 = type { i32, %struct.raw3270_view* }
%struct.raw3270_request = type { i32 }

@RAW3270_FLAGS_FROZEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@RAW3270_FLAGS_READY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw3270_start_locked(%struct.raw3270_view* %0, %struct.raw3270_request* %1) #0 {
  %3 = alloca %struct.raw3270_view*, align 8
  %4 = alloca %struct.raw3270_request*, align 8
  %5 = alloca %struct.raw3270*, align 8
  %6 = alloca i32, align 4
  store %struct.raw3270_view* %0, %struct.raw3270_view** %3, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %4, align 8
  %7 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %8 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %7, i32 0, i32 0
  %9 = load %struct.raw3270*, %struct.raw3270** %8, align 8
  store %struct.raw3270* %9, %struct.raw3270** %5, align 8
  %10 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %11 = icmp ne %struct.raw3270* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %14 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %13, i32 0, i32 1
  %15 = load %struct.raw3270_view*, %struct.raw3270_view** %14, align 8
  %16 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %17 = icmp ne %struct.raw3270_view* %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @RAW3270_FLAGS_FROZEN, align 4
  %20 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %21 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %12, %2
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %42

27:                                               ; preds = %18
  %28 = load i32, i32* @RAW3270_FLAGS_READY, align 4
  %29 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %30 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %29, i32 0, i32 0
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %27
  %37 = load %struct.raw3270*, %struct.raw3270** %5, align 8
  %38 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %39 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %40 = call i32 @__raw3270_start(%struct.raw3270* %37, %struct.raw3270_view* %38, %struct.raw3270_request* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__raw3270_start(%struct.raw3270*, %struct.raw3270_view*, %struct.raw3270_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
