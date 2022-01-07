; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_viodasd.c_viodasd_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_viodasd.c_viodasd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viodasd_device = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vio_dev = type { i64 }

@viodasd_devices = common dso_local global %struct.viodasd_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @viodasd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viodasd_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.viodasd_device*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %4 = load %struct.viodasd_device*, %struct.viodasd_device** @viodasd_devices, align 8
  %5 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %4, i64 %7
  store %struct.viodasd_device* %8, %struct.viodasd_device** %3, align 8
  %9 = load %struct.viodasd_device*, %struct.viodasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.viodasd_device*, %struct.viodasd_device** %3, align 8
  %15 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i32 @del_gendisk(%struct.TYPE_3__* %16)
  %18 = load %struct.viodasd_device*, %struct.viodasd_device** %3, align 8
  %19 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @blk_cleanup_queue(i32 %22)
  %24 = load %struct.viodasd_device*, %struct.viodasd_device** %3, align 8
  %25 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @put_disk(%struct.TYPE_3__* %26)
  %28 = load %struct.viodasd_device*, %struct.viodasd_device** %3, align 8
  %29 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %28, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %29, align 8
  br label %30

30:                                               ; preds = %13, %1
  %31 = load %struct.viodasd_device*, %struct.viodasd_device** %3, align 8
  %32 = getelementptr inbounds %struct.viodasd_device, %struct.viodasd_device* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret i32 0
}

declare dso_local i32 @del_gendisk(%struct.TYPE_3__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
