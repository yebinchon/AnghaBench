; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_raw3270.c_raw3270_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.raw3270* }
%struct.raw3270 = type { i32, %struct.raw3270_view* }

@RAW3270_FLAGS_FROZEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@RAW3270_FLAGS_READY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw3270_reset(%struct.raw3270_view* %0) #0 {
  %2 = alloca %struct.raw3270_view*, align 8
  %3 = alloca %struct.raw3270*, align 8
  %4 = alloca i32, align 4
  store %struct.raw3270_view* %0, %struct.raw3270_view** %2, align 8
  %5 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %6 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %5, i32 0, i32 0
  %7 = load %struct.raw3270*, %struct.raw3270** %6, align 8
  store %struct.raw3270* %7, %struct.raw3270** %3, align 8
  %8 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %9 = icmp ne %struct.raw3270* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %12 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %11, i32 0, i32 1
  %13 = load %struct.raw3270_view*, %struct.raw3270_view** %12, align 8
  %14 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %15 = icmp ne %struct.raw3270_view* %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @RAW3270_FLAGS_FROZEN, align 4
  %18 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %19 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %10, %1
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %16
  %26 = load i32, i32* @RAW3270_FLAGS_READY, align 4
  %27 = load %struct.raw3270*, %struct.raw3270** %3, align 8
  %28 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %36 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %35, i32 0, i32 0
  %37 = load %struct.raw3270*, %struct.raw3270** %36, align 8
  %38 = call i32 @raw3270_reset_device(%struct.raw3270* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %31
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raw3270_reset_device(%struct.raw3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
