; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_blktrans_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_blktrans_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mtd_blktrans_dev* }
%struct.mtd_blktrans_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)* }
%struct.hd_geometry = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @blktrans_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blktrans_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca %struct.mtd_blktrans_dev*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %10, align 8
  store %struct.mtd_blktrans_dev* %11, %struct.mtd_blktrans_dev** %6, align 8
  %12 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)*, i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)** %15, align 8
  %17 = icmp ne i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)*, i32 (%struct.mtd_blktrans_dev*, %struct.hd_geometry*)** %22, align 8
  %24 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %6, align 8
  %25 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %26 = call i32 %23(%struct.mtd_blktrans_dev* %24, %struct.hd_geometry* %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOTTY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
