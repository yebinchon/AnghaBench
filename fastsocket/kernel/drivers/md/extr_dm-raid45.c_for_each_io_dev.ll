; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_for_each_io_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_for_each_io_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.raid_set = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*, void (%struct.stripe*, i32)*)* @for_each_io_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_io_dev(%struct.stripe* %0, void (%struct.stripe*, i32)* %1) #0 {
  %3 = alloca %struct.stripe*, align 8
  %4 = alloca void (%struct.stripe*, i32)*, align 8
  %5 = alloca %struct.raid_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %3, align 8
  store void (%struct.stripe*, i32)* %1, void (%struct.stripe*, i32)** %4, align 8
  %8 = load %struct.stripe*, %struct.stripe** %3, align 8
  %9 = getelementptr inbounds %struct.stripe, %struct.stripe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.raid_set* @RS(i32 %10)
  store %struct.raid_set* %11, %struct.raid_set** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %41, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %15 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.stripe*, %struct.stripe** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @CHUNK(%struct.stripe* %20, i32 %21)
  %23 = call i64 @chunk_io(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @DevFailed(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load void (%struct.stripe*, i32)*, void (%struct.stripe*, i32)** %4, align 8
  %36 = load %struct.stripe*, %struct.stripe** %3, align 8
  %37 = load i32, i32* %6, align 4
  call void %35(%struct.stripe* %36, i32 %37)
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %25, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i64 @chunk_io(i32) #1

declare dso_local i32 @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @DevFailed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
