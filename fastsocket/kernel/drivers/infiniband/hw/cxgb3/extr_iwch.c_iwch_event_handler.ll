; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch.c_iwch_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch.c_iwch_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { %struct.cxio_rdev* }
%struct.cxio_rdev = type { i32 }
%struct.iwch_dev = type { i32, i32 }
%struct.ib_event = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@CXIO_ERROR_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*, i32, i32)* @iwch_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwch_event_handler(%struct.t3cdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxio_rdev*, align 8
  %8 = alloca %struct.iwch_dev*, align 8
  %9 = alloca %struct.ib_event, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %15 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %14, i32 0, i32 0
  %16 = load %struct.cxio_rdev*, %struct.cxio_rdev** %15, align 8
  store %struct.cxio_rdev* %16, %struct.cxio_rdev** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.cxio_rdev*, %struct.cxio_rdev** %7, align 8
  %20 = icmp ne %struct.cxio_rdev* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %72

22:                                               ; preds = %3
  %23 = load %struct.cxio_rdev*, %struct.cxio_rdev** %7, align 8
  %24 = call %struct.iwch_dev* @rdev_to_iwch_dev(%struct.cxio_rdev* %23)
  store %struct.iwch_dev* %24, %struct.iwch_dev** %8, align 8
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %60 [
    i32 128, label %26
    i32 130, label %33
    i32 129, label %36
    i32 131, label %39
    i32 132, label %42
    i32 133, label %45
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @CXIO_ERROR_FATAL, align 4
  %28 = load %struct.cxio_rdev*, %struct.cxio_rdev** %7, align 8
  %29 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call i32 (...) @synchronize_net()
  %31 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %32 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  store i32 1, i32* %11, align 4
  br label %60

33:                                               ; preds = %22
  %34 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  %35 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  store i32 1, i32* %11, align 4
  br label %60

36:                                               ; preds = %22
  %37 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  %38 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  store i32 1, i32* %11, align 4
  br label %60

39:                                               ; preds = %22
  %40 = load %struct.iwch_dev*, %struct.iwch_dev** %8, align 8
  %41 = call i32 @disable_dbs(%struct.iwch_dev* %40)
  br label %60

42:                                               ; preds = %22
  %43 = load %struct.iwch_dev*, %struct.iwch_dev** %8, align 8
  %44 = call i32 @enable_dbs(%struct.iwch_dev* %43, i32 1)
  br label %60

45:                                               ; preds = %22
  store i64 1000, i64* %12, align 8
  %46 = load %struct.iwch_dev*, %struct.iwch_dev** %8, align 8
  %47 = call i32 @disable_dbs(%struct.iwch_dev* %46)
  %48 = call i32 @get_random_bytes(i16* %13, i32 2)
  %49 = load i16, i16* %13, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 1023
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %12, align 8
  %55 = load %struct.iwch_dev*, %struct.iwch_dev** %8, align 8
  %56 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @usecs_to_jiffies(i64 %57)
  %59 = call i32 @schedule_delayed_work(i32* %56, i32 %58)
  br label %60

60:                                               ; preds = %22, %45, %42, %39, %36, %33, %26
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.iwch_dev*, %struct.iwch_dev** %8, align 8
  %65 = getelementptr inbounds %struct.iwch_dev, %struct.iwch_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 1
  store i32* %65, i32** %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %9, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = call i32 @ib_dispatch_event(%struct.ib_event* %9)
  br label %71

71:                                               ; preds = %63, %60
  br label %72

72:                                               ; preds = %71, %21
  ret void
}

declare dso_local %struct.iwch_dev* @rdev_to_iwch_dev(%struct.cxio_rdev*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @disable_dbs(%struct.iwch_dev*) #1

declare dso_local i32 @enable_dbs(%struct.iwch_dev*, i32) #1

declare dso_local i32 @get_random_bytes(i16*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
