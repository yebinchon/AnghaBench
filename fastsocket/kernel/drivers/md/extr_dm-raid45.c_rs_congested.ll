; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_congested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_rs_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.request_queue = type { i32 }

@S_CONGESTED = common dso_local global i64 0, align 8
@S_NOT_CONGESTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @rs_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_congested(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.raid_set*, align 8
  %8 = alloca %struct.request_queue*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.raid_set*
  store %struct.raid_set* %10, %struct.raid_set** %7, align 8
  %11 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %12 = call i64 @sc_busy(%struct.raid_set* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %16 = call i64 @RSSuspend(%struct.raid_set* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %20 = call i64 @RSProhibitWrites(%struct.raid_set* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %2
  store i32 1, i32* %5, align 4
  br label %56

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  %24 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %25 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %37, %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %32, 0
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %55

37:                                               ; preds = %35
  %38 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %39 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.request_queue* @bdev_get_queue(i32 %47)
  store %struct.request_queue* %48, %struct.request_queue** %8, align 8
  %49 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %50 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @bdi_congested(i32* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %28

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %22
  %57 = load %struct.raid_set*, %struct.raid_set** %7, align 8
  %58 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* @S_CONGESTED, align 8
  br label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @S_NOT_CONGESTED, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  %68 = add nsw i64 %59, %67
  %69 = call i32 @atomic_inc(i64 %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @sc_busy(%struct.raid_set*) #1

declare dso_local i64 @RSSuspend(%struct.raid_set*) #1

declare dso_local i64 @RSProhibitWrites(%struct.raid_set*) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @bdi_congested(i32*, i32) #1

declare dso_local i32 @atomic_inc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
