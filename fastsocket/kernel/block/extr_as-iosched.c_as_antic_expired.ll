; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as_data*)* @as_antic_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as_antic_expired(%struct.as_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.as_data*, align 8
  %4 = alloca i64, align 8
  store %struct.as_data* %0, %struct.as_data** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load %struct.as_data*, %struct.as_data** %3, align 8
  %7 = getelementptr inbounds %struct.as_data, %struct.as_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.as_data*, %struct.as_data** %3, align 8
  %21 = getelementptr inbounds %struct.as_data, %struct.as_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
