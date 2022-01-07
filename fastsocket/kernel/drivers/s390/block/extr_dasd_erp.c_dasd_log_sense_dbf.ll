; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_erp.c_dasd_log_sense_dbf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_erp.c_dasd_log_sense_dbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*, %struct.irb*, i8*)* }
%struct.irb = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_log_sense_dbf(%struct.dasd_ccw_req* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 0
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %5, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dasd_device*, %struct.irb*, i8*)*, i32 (%struct.dasd_device*, %struct.irb*, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.dasd_device*, %struct.irb*, i8*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dasd_device*, %struct.irb*, i8*)*, i32 (%struct.dasd_device*, %struct.irb*, i8*)** %24, align 8
  %26 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %27 = load %struct.irb*, %struct.irb** %4, align 8
  %28 = call i32 %25(%struct.dasd_device* %26, %struct.irb* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %20, %13, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
