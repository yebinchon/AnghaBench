; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_batch_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_batch_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i64, i64, i32, i64, i64 }

@BLK_RW_SYNC = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as_data*)* @as_batch_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as_batch_expired(%struct.as_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as_data*, align 8
  store %struct.as_data* %0, %struct.as_data** %3, align 8
  %4 = load %struct.as_data*, %struct.as_data** %3, align 8
  %5 = getelementptr inbounds %struct.as_data, %struct.as_data* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.as_data*, %struct.as_data** %3, align 8
  %10 = getelementptr inbounds %struct.as_data, %struct.as_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %41

14:                                               ; preds = %8
  %15 = load %struct.as_data*, %struct.as_data** %3, align 8
  %16 = getelementptr inbounds %struct.as_data, %struct.as_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BLK_RW_SYNC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @jiffies, align 4
  %22 = load %struct.as_data*, %struct.as_data** %3, align 8
  %23 = getelementptr inbounds %struct.as_data, %struct.as_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @time_after(i32 %21, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %41

26:                                               ; preds = %14
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.as_data*, %struct.as_data** %3, align 8
  %29 = getelementptr inbounds %struct.as_data, %struct.as_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @time_after(i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.as_data*, %struct.as_data** %3, align 8
  %35 = getelementptr inbounds %struct.as_data, %struct.as_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i1 [ true, %26 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %20, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @time_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
