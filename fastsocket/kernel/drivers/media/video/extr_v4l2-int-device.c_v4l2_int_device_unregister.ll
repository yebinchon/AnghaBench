; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-int-device.c_v4l2_int_device_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-int-device.c_v4l2_int_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.v4l2_int_device*)* }

@mutex = common dso_local global i32 0, align 4
@v4l2_int_type_slave = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_int_device_unregister(%struct.v4l2_int_device* %0) #0 {
  %2 = alloca %struct.v4l2_int_device*, align 8
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %2, align 8
  %3 = call i32 @mutex_lock(i32* @mutex)
  %4 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %4, i32 0, i32 2
  %6 = call i32 @list_del(i32* %5)
  %7 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @v4l2_int_type_slave, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %12
  %21 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %22 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.v4l2_int_device*)*, i32 (%struct.v4l2_int_device*)** %30, align 8
  %32 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %33 = call i32 %31(%struct.v4l2_int_device* %32)
  %34 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %35 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @module_put(i32 %41)
  %43 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %2, align 8
  %44 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %47, align 8
  br label %48

48:                                               ; preds = %20, %12, %1
  %49 = call i32 @mutex_unlock(i32* @mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
