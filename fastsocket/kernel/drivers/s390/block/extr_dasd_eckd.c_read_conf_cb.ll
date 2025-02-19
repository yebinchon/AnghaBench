; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_read_conf_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_read_conf_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, %struct.ccw1* }
%struct.ccw1 = type { i64 }

@DASD_CQR_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*, i8*)* @read_conf_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_conf_cb(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca i32*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DASD_CQR_DONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 1
  %15 = load %struct.ccw1*, %struct.ccw1** %14, align 8
  store %struct.ccw1* %15, %struct.ccw1** %5, align 8
  %16 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %17 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 229, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 241, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 75, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 240, i32* %29, align 4
  br label %30

30:                                               ; preds = %12, %2
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @dasd_wakeup_cb(%struct.dasd_ccw_req* %31, i8* %32)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dasd_wakeup_cb(%struct.dasd_ccw_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
