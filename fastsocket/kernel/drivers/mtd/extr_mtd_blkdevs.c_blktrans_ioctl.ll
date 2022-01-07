; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_blktrans_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_blktrans_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtd_blktrans_dev* }
%struct.mtd_blktrans_dev = type { %struct.mtd_blktrans_ops* }
%struct.mtd_blktrans_ops = type { i32 (%struct.mtd_blktrans_dev.0*)* }
%struct.mtd_blktrans_dev.0 = type opaque

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @blktrans_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blktrans_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtd_blktrans_dev*, align 8
  %11 = alloca %struct.mtd_blktrans_ops*, align 8
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.block_device*, %struct.block_device** %6, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %15, align 8
  store %struct.mtd_blktrans_dev* %16, %struct.mtd_blktrans_dev** %10, align 8
  %17 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %10, align 8
  %18 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %17, i32 0, i32 0
  %19 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %18, align 8
  store %struct.mtd_blktrans_ops* %19, %struct.mtd_blktrans_ops** %11, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %34 [
    i32 128, label %21
  ]

21:                                               ; preds = %4
  %22 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %11, align 8
  %23 = getelementptr inbounds %struct.mtd_blktrans_ops, %struct.mtd_blktrans_ops* %22, i32 0, i32 0
  %24 = load i32 (%struct.mtd_blktrans_dev.0*)*, i32 (%struct.mtd_blktrans_dev.0*)** %23, align 8
  %25 = icmp ne i32 (%struct.mtd_blktrans_dev.0*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %11, align 8
  %28 = getelementptr inbounds %struct.mtd_blktrans_ops, %struct.mtd_blktrans_ops* %27, i32 0, i32 0
  %29 = load i32 (%struct.mtd_blktrans_dev.0*)*, i32 (%struct.mtd_blktrans_dev.0*)** %28, align 8
  %30 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %10, align 8
  %31 = bitcast %struct.mtd_blktrans_dev* %30 to %struct.mtd_blktrans_dev.0*
  %32 = call i32 %29(%struct.mtd_blktrans_dev.0* %31)
  store i32 %32, i32* %5, align 4
  br label %37

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOTTY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %33, %26
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
