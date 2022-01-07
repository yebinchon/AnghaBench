; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_blktrans_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtd_blkdevs.c_blktrans_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mtd_blktrans_dev* }
%struct.mtd_blktrans_dev = type { %struct.TYPE_4__*, %struct.mtd_blktrans_ops* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mtd_blktrans_ops = type { i32 (%struct.mtd_blktrans_dev.0*)*, i32 }
%struct.mtd_blktrans_dev.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @blktrans_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blktrans_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_blktrans_dev*, align 8
  %6 = alloca %struct.mtd_blktrans_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.block_device*, %struct.block_device** %3, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %11, align 8
  store %struct.mtd_blktrans_dev* %12, %struct.mtd_blktrans_dev** %5, align 8
  %13 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %13, i32 0, i32 1
  %15 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %14, align 8
  store %struct.mtd_blktrans_ops* %15, %struct.mtd_blktrans_ops** %6, align 8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_mtd_device(i32* null, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %6, align 8
  %28 = getelementptr inbounds %struct.mtd_blktrans_ops, %struct.mtd_blktrans_ops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @try_module_get(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %63

33:                                               ; preds = %26
  %34 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %35 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  store i32 0, i32* %7, align 4
  %40 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %6, align 8
  %41 = getelementptr inbounds %struct.mtd_blktrans_ops, %struct.mtd_blktrans_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.mtd_blktrans_dev.0*)*, i32 (%struct.mtd_blktrans_dev.0*)** %41, align 8
  %43 = icmp ne i32 (%struct.mtd_blktrans_dev.0*)* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %33
  %45 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %6, align 8
  %46 = getelementptr inbounds %struct.mtd_blktrans_ops, %struct.mtd_blktrans_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.mtd_blktrans_dev.0*)*, i32 (%struct.mtd_blktrans_dev.0*)** %46, align 8
  %48 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %49 = bitcast %struct.mtd_blktrans_dev* %48 to %struct.mtd_blktrans_dev.0*
  %50 = call i32 %47(%struct.mtd_blktrans_dev.0* %49)
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %54 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %60 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @put_mtd_device(%struct.TYPE_4__* %61)
  br label %63

63:                                               ; preds = %52, %32
  %64 = load %struct.mtd_blktrans_ops*, %struct.mtd_blktrans_ops** %6, align 8
  %65 = getelementptr inbounds %struct.mtd_blktrans_ops, %struct.mtd_blktrans_ops* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @module_put(i32 %66)
  br label %68

68:                                               ; preds = %63, %44, %33
  br label %69

69:                                               ; preds = %68, %25
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @get_mtd_device(i32*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @put_mtd_device(%struct.TYPE_4__*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
