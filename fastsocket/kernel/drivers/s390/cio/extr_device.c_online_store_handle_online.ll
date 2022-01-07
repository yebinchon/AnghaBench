; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_online_store_handle_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_online_store_handle_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@DEV_STATE_BOXED = common dso_local global i64 0, align 8
@DEV_STATE_NOT_OPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32)* @online_store_handle_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @online_store_handle_online(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %8 = call i32 @online_store_recog_and_online(%struct.ccw_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DEV_STATE_BOXED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %19
  %28 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %29 = call i32 @ccw_device_stlck(%struct.ccw_device* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %27
  %35 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i64, i64* @DEV_STATE_NOT_OPER, align 8
  %42 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %43 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %48 = call i32 @online_store_recog_and_online(%struct.ccw_device* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %19, %16
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %32, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @online_store_recog_and_online(%struct.ccw_device*) #1

declare dso_local i32 @ccw_device_stlck(%struct.ccw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
