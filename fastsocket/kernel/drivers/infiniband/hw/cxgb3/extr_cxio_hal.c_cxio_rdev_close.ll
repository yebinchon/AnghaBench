; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_rdev_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_rdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxio_rdev_close(%struct.cxio_rdev* %0) #0 {
  %2 = alloca %struct.cxio_rdev*, align 8
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %2, align 8
  %3 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %4 = icmp ne %struct.cxio_rdev* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %7 = call i32 @cxio_hal_pblpool_destroy(%struct.cxio_rdev* %6)
  %8 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %9 = call i32 @cxio_hal_rqtpool_destroy(%struct.cxio_rdev* %8)
  %10 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %11 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %14 = call i32 @cxio_hal_destroy_ctrl_qp(%struct.cxio_rdev* %13)
  %15 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %16 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cxio_hal_destroy_resource(i32 %17)
  %19 = load %struct.cxio_rdev*, %struct.cxio_rdev** %2, align 8
  %20 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @cxio_hal_pblpool_destroy(%struct.cxio_rdev*) #1

declare dso_local i32 @cxio_hal_rqtpool_destroy(%struct.cxio_rdev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @cxio_hal_destroy_ctrl_qp(%struct.cxio_rdev*) #1

declare dso_local i32 @cxio_hal_destroy_resource(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
