; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_allow_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_allow_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.request_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cfq_data* }
%struct.cfq_data = type { i32 }
%struct.request = type { i32 }
%struct.bio = type { i32 }
%struct.cfq_io_context = type { i32 }
%struct.cfq_queue = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.bio*)* @cfq_allow_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_allow_merge(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.cfq_data*, align 8
  %9 = alloca %struct.cfq_io_context*, align 8
  %10 = alloca %struct.cfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.cfq_data*, %struct.cfq_data** %14, align 8
  store %struct.cfq_data* %15, %struct.cfq_data** %8, align 8
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = call i64 @cfq_bio_sync(%struct.bio* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.request*, %struct.request** %6, align 8
  %21 = call i32 @rq_is_sync(%struct.request* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %43

24:                                               ; preds = %19, %3
  %25 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data* %25, i32 %28)
  store %struct.cfq_io_context* %29, %struct.cfq_io_context** %9, align 8
  %30 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %31 = icmp ne %struct.cfq_io_context* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %35 = load %struct.bio*, %struct.bio** %7, align 8
  %36 = call i64 @cfq_bio_sync(%struct.bio* %35)
  %37 = call %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context* %34, i64 %36)
  store %struct.cfq_queue* %37, %struct.cfq_queue** %10, align 8
  %38 = load %struct.cfq_queue*, %struct.cfq_queue** %10, align 8
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %39)
  %41 = icmp eq %struct.cfq_queue* %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %33, %32, %23
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @cfq_bio_sync(%struct.bio*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data*, i32) #1

declare dso_local %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_io_context*, i64) #1

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
