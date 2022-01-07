; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvbdev.c_dvb_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvbdev.c_dvb_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_device = type { i64, %struct.dvb_device*, i32 }

@minor_rwsem = common dso_local global i32 0, align 4
@dvb_minors = common dso_local global i32** null, align 8
@dvb_class = common dso_local global i32 0, align 4
@DVB_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_unregister_device(%struct.dvb_device* %0) #0 {
  %2 = alloca %struct.dvb_device*, align 8
  store %struct.dvb_device* %0, %struct.dvb_device** %2, align 8
  %3 = load %struct.dvb_device*, %struct.dvb_device** %2, align 8
  %4 = icmp ne %struct.dvb_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = call i32 @down_write(i32* @minor_rwsem)
  %8 = load i32**, i32*** @dvb_minors, align 8
  %9 = load %struct.dvb_device*, %struct.dvb_device** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32*, i32** %8, i64 %11
  store i32* null, i32** %12, align 8
  %13 = call i32 @up_write(i32* @minor_rwsem)
  %14 = load i32, i32* @dvb_class, align 4
  %15 = load i32, i32* @DVB_MAJOR, align 4
  %16 = load %struct.dvb_device*, %struct.dvb_device** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @MKDEV(i32 %15, i64 %18)
  %20 = call i32 @device_destroy(i32 %14, i32 %19)
  %21 = load %struct.dvb_device*, %struct.dvb_device** %2, align 8
  %22 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %21, i32 0, i32 2
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.dvb_device*, %struct.dvb_device** %2, align 8
  %25 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %24, i32 0, i32 1
  %26 = load %struct.dvb_device*, %struct.dvb_device** %25, align 8
  %27 = call i32 @kfree(%struct.dvb_device* %26)
  %28 = load %struct.dvb_device*, %struct.dvb_device** %2, align 8
  %29 = call i32 @kfree(%struct.dvb_device* %28)
  br label %30

30:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dvb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
