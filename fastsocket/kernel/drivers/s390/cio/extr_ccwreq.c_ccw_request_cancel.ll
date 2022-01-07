; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccw_request_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccw_request_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ccw_request }
%struct.ccw_request = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_request_cancel(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.ccw_request*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %4, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.ccw_request* %15, %struct.ccw_request** %5, align 8
  %16 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %17 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %23 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %25 = call i32 @cio_clear(%struct.subchannel* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ccwreq_stop(%struct.ccw_device* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %21
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @cio_clear(%struct.subchannel*) #1

declare dso_local i32 @ccwreq_stop(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
