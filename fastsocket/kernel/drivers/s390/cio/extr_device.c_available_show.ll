; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_available_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_available_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.subchannel = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"no device\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"boxed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no path\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"good\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @available_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @available_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ccw_device*, align 8
  %9 = alloca %struct.subchannel*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.ccw_device* @to_ccwdev(%struct.device* %10)
  store %struct.ccw_device* %11, %struct.ccw_device** %8, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %13 = call i64 @ccw_device_is_orphan(%struct.ccw_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.ccw_device*, %struct.ccw_device** %8, align 8
  %20 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %42 [
    i32 131, label %24
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %18, %18, %18
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.subchannel* @to_subchannel(i32 %30)
  store %struct.subchannel* %31, %struct.subchannel** %9, align 8
  %32 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %33 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %27
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %18
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %39, %36, %24, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i64 @ccw_device_is_orphan(%struct.ccw_device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
