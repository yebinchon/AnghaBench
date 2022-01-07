; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_erp.c_dasd_default_erp_postaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_erp.c_dasd_default_erp_postaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, i32, i32, %struct.dasd_ccw_req*, i32* }

@DASD_CQR_DONE = common dso_local global i64 0, align 8
@DASD_CQR_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_ccw_req* @dasd_default_erp_postaction(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 4
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %6, align 8
  %8 = icmp eq %struct.dasd_ccw_req* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ true, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %19 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DASD_CQR_DONE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %29, %14
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 4
  %27 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %26, align 8
  %28 = icmp ne %struct.dasd_ccw_req* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %31 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %30, i32 0, i32 4
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %31, align 8
  store %struct.dasd_ccw_req* %32, %struct.dasd_ccw_req** %4, align 8
  %33 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %34 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %33, i32 0, i32 3
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dasd_free_erp_request(%struct.dasd_ccw_req* %36, i32 %39)
  %41 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %41, %struct.dasd_ccw_req** %2, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* @DASD_CQR_DONE, align 8
  %47 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %48 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %56

49:                                               ; preds = %42
  %50 = load i64, i64* @DASD_CQR_FAILED, align 8
  %51 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %52 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = call i32 (...) @get_clock()
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %45
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %57
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dasd_free_erp_request(%struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @get_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
