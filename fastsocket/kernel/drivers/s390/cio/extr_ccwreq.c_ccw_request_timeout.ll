; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccw_request_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccw_request_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ccw_request }
%struct.ccw_request = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { i32 }

@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_request_timeout(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ccw_request* %14, %struct.ccw_request** %4, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = call i32 @ccwreq_next_path(%struct.ccw_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ETIME, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %22 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %25 = call i32 @cio_clear(%struct.subchannel* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %28
  %31 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ccwreq_stop(%struct.ccw_device* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @ccwreq_next_path(%struct.ccw_device*) #1

declare dso_local i32 @cio_clear(%struct.subchannel*) #1

declare dso_local i32 @ccwreq_stop(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
