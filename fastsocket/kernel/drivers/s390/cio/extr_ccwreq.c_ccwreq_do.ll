; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccwreq_do.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccwreq_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.ccw_request }
%struct.ccw_request = type { i32, i64, i32, %struct.ccw1* }
%struct.ccw1 = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @ccwreq_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccwreq_do(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_request*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.ccw_request* %10, %struct.ccw_request** %3, align 8
  %11 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %12 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.subchannel* @to_subchannel(i32 %14)
  store %struct.subchannel* %15, %struct.subchannel** %4, align 8
  %16 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %17 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %16, i32 0, i32 3
  %18 = load %struct.ccw1*, %struct.ccw1** %17, align 8
  store %struct.ccw1* %18, %struct.ccw1** %5, align 8
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %67, %32, %1
  %22 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %23 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %28 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %34 = call i32 @ccwreq_next_path(%struct.ccw_device* %33)
  br label %21

35:                                               ; preds = %26
  %36 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %37 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %42 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %43 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %44 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @cio_start(%struct.subchannel* %41, %struct.ccw1* %42, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %52 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %53 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ccw_device_set_timeout(%struct.ccw_device* %51, i32 %54)
  br label %81

56:                                               ; preds = %35
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %77

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @EACCES, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %69 = call i32 @ccwreq_next_path(%struct.ccw_device* %68)
  br label %21

70:                                               ; preds = %62
  %71 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %72 = call i32 @cio_clear(%struct.subchannel* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %77

76:                                               ; preds = %70
  br label %81

77:                                               ; preds = %75, %61, %21
  %78 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @ccwreq_stop(%struct.ccw_device* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %76, %50
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @ccwreq_next_path(%struct.ccw_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cio_start(%struct.subchannel*, %struct.ccw1*, i32) #1

declare dso_local i32 @ccw_device_set_timeout(%struct.ccw_device*, i32) #1

declare dso_local i32 @cio_clear(%struct.subchannel*) #1

declare dso_local i32 @ccwreq_stop(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
