; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.as_data* }
%struct.as_data = type { i32* }
%struct.request = type { i32 }
%struct.bio = type { i64 }

@ELEVATOR_FRONT_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_NO_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request**, %struct.bio*)* @as_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as_merge(%struct.request_queue* %0, %struct.request** %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request**, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.as_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request** %1, %struct.request*** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.as_data*, %struct.as_data** %14, align 8
  store %struct.as_data* %15, %struct.as_data** %8, align 8
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bio*, %struct.bio** %7, align 8
  %20 = call i64 @bio_sectors(%struct.bio* %19)
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* %9, align 8
  %22 = load %struct.as_data*, %struct.as_data** %8, align 8
  %23 = getelementptr inbounds %struct.as_data, %struct.as_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = call i64 @bio_data_dir(%struct.bio* %25)
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.request* @elv_rb_find(i32* %27, i64 %28)
  store %struct.request* %29, %struct.request** %10, align 8
  %30 = load %struct.request*, %struct.request** %10, align 8
  %31 = icmp ne %struct.request* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.request*, %struct.request** %10, align 8
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = call i64 @elv_rq_merge_ok(%struct.request* %33, %struct.bio* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.request*, %struct.request** %10, align 8
  %39 = load %struct.request**, %struct.request*** %6, align 8
  store %struct.request* %38, %struct.request** %39, align 8
  %40 = load i32, i32* @ELEVATOR_FRONT_MERGE, align 4
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %32, %3
  %42 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.request* @elv_rb_find(i32*, i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @elv_rq_merge_ok(%struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
