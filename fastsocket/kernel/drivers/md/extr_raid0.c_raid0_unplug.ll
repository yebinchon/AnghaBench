; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_unplug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mddev* }
%struct.mddev = type { %struct.r0conf* }
%struct.r0conf = type { %struct.TYPE_2__*, %struct.md_rdev** }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @raid0_unplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid0_unplug(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r0conf*, align 8
  %5 = alloca %struct.md_rdev**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.mddev*, %struct.mddev** %10, align 8
  store %struct.mddev* %11, %struct.mddev** %3, align 8
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load %struct.r0conf*, %struct.r0conf** %13, align 8
  store %struct.r0conf* %14, %struct.r0conf** %4, align 8
  %15 = load %struct.r0conf*, %struct.r0conf** %4, align 8
  %16 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %15, i32 0, i32 1
  %17 = load %struct.md_rdev**, %struct.md_rdev*** %16, align 8
  store %struct.md_rdev** %17, %struct.md_rdev*** %5, align 8
  %18 = load %struct.r0conf*, %struct.r0conf** %4, align 8
  %19 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.md_rdev**, %struct.md_rdev*** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.md_rdev*, %struct.md_rdev** %29, i64 %31
  %33 = load %struct.md_rdev*, %struct.md_rdev** %32, align 8
  %34 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.request_queue* @bdev_get_queue(i32 %35)
  store %struct.request_queue* %36, %struct.request_queue** %8, align 8
  %37 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %38 = call i32 @blk_unplug(%struct.request_queue* %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %24

42:                                               ; preds = %24
  ret void
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @blk_unplug(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
