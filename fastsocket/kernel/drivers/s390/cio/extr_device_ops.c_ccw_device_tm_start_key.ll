; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_tm_start_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_ops.c_ccw_device_tm_start_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.tcw = type { i32 }
%struct.subchannel = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEV_STATE_ONLINE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_tm_start_key(%struct.ccw_device* %0, %struct.tcw* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca %struct.tcw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.subchannel*, align 8
  %13 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store %struct.tcw* %1, %struct.tcw** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.subchannel* @to_subchannel(i32 %17)
  store %struct.subchannel* %18, %struct.subchannel** %12, align 8
  %19 = load %struct.subchannel*, %struct.subchannel** %12, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %70

28:                                               ; preds = %5
  %29 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %30 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEV_STATE_ONLINE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %70

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load %struct.subchannel*, %struct.subchannel** %12, align 8
  %44 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EACCES, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %70

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.subchannel*, %struct.subchannel** %12, align 8
  %56 = load %struct.tcw*, %struct.tcw** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @cio_tm_start_key(%struct.subchannel* %55, %struct.tcw* %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %65 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i64 %63, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %54
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %50, %36, %25
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @cio_tm_start_key(%struct.subchannel*, %struct.tcw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
