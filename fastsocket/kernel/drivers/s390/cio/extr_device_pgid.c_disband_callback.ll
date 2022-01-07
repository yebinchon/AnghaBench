; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_disband_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_disband_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.ccw_dev_id }
%struct.TYPE_5__ = type { i64 }
%struct.ccw_dev_id = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"disb: device 0.%x.%04x: rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i8*, i32)* @disband_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disband_callback(%struct.ccw_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.subchannel*, align 8
  %8 = alloca %struct.ccw_dev_id*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.subchannel* @to_subchannel(i32 %12)
  store %struct.subchannel* %13, %struct.subchannel** %7, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store %struct.ccw_dev_id* %17, %struct.ccw_dev_id** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %23 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %34 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.subchannel*, %struct.subchannel** %7, align 8
  %37 = call i32 @cio_commit_config(%struct.subchannel* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %21
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %8, align 8
  %41 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ccw_dev_id*, %struct.ccw_dev_id** %8, align 8
  %44 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46)
  %48 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ccw_device_disband_done(%struct.ccw_device* %48, i32 %49)
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @cio_commit_config(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ccw_device_disband_done(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
