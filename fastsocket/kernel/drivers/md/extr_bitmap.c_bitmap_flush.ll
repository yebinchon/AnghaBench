; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_2__, %struct.bitmap* }
%struct.TYPE_2__ = type { i32 }
%struct.bitmap = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_flush(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %5 = load %struct.mddev*, %struct.mddev** %2, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 1
  %7 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  store %struct.bitmap* %7, %struct.bitmap** %3, align 8
  %8 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %9 = icmp ne %struct.bitmap* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.mddev*, %struct.mddev** %2, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %20 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.mddev*, %struct.mddev** %2, align 8
  %24 = call i32 @bitmap_daemon_work(%struct.mddev* %23)
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %27 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.mddev*, %struct.mddev** %2, align 8
  %31 = call i32 @bitmap_daemon_work(%struct.mddev* %30)
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %34 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.mddev*, %struct.mddev** %2, align 8
  %38 = call i32 @bitmap_daemon_work(%struct.mddev* %37)
  %39 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  %40 = call i32 @bitmap_update_sb(%struct.bitmap* %39)
  br label %41

41:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @bitmap_daemon_work(%struct.mddev*) #1

declare dso_local i32 @bitmap_update_sb(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
