; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_cleanup_cqr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c___dasd_cleanup_cqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.dasd_ccw_req*, %struct.request*)* }
%struct.request = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*)* @__dasd_cleanup_cqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dasd_cleanup_cqr(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.request*
  store %struct.request* %9, %struct.request** %3, align 8
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = call i32 @dasd_profile_end(%struct.TYPE_6__* %12, %struct.dasd_ccw_req* %13, %struct.request* %14)
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %17 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dasd_ccw_req*, %struct.request*)*, i32 (%struct.dasd_ccw_req*, %struct.request*)** %23, align 8
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = call i32 %24(%struct.dasd_ccw_req* %25, %struct.request* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  br label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %1
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @__blk_end_request_all(%struct.request* %41, i32 %42)
  ret void
}

declare dso_local i32 @dasd_profile_end(%struct.TYPE_6__*, %struct.dasd_ccw_req*, %struct.request*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
