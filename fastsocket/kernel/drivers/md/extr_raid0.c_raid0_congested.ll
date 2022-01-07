; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_congested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r0conf* }
%struct.r0conf = type { %struct.TYPE_2__*, %struct.md_rdev** }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @raid0_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid0_congested(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.r0conf*, align 8
  %8 = alloca %struct.md_rdev**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_queue*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.mddev*
  store %struct.mddev* %14, %struct.mddev** %6, align 8
  %15 = load %struct.mddev*, %struct.mddev** %6, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load %struct.r0conf*, %struct.r0conf** %16, align 8
  store %struct.r0conf* %17, %struct.r0conf** %7, align 8
  %18 = load %struct.r0conf*, %struct.r0conf** %7, align 8
  %19 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %18, i32 0, i32 1
  %20 = load %struct.md_rdev**, %struct.md_rdev*** %19, align 8
  store %struct.md_rdev** %20, %struct.md_rdev*** %8, align 8
  %21 = load %struct.r0conf*, %struct.r0conf** %7, align 8
  %22 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.mddev*, %struct.mddev** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @mddev_congested(%struct.mddev* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %63

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = load %struct.md_rdev**, %struct.md_rdev*** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.md_rdev*, %struct.md_rdev** %44, i64 %46
  %48 = load %struct.md_rdev*, %struct.md_rdev** %47, align 8
  %49 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.request_queue* @bdev_get_queue(i32 %50)
  store %struct.request_queue* %51, %struct.request_queue** %12, align 8
  %52 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %53 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @bdi_congested(i32* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %33

61:                                               ; preds = %41
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %31
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @mddev_congested(%struct.mddev*, i32) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @bdi_congested(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
