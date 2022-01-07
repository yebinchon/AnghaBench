; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_sync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ubi_device* @ubi_get_device(i32 %5)
  store %struct.ubi_device* %6, %struct.ubi_device** %4, align 8
  %7 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %8 = icmp ne %struct.ubi_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_2__*)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %23, align 8
  %25 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 %24(%struct.TYPE_2__* %27)
  br label %29

29:                                               ; preds = %19, %12
  %30 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %31 = call i32 @ubi_put_device(%struct.ubi_device* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ubi_device* @ubi_get_device(i32) #1

declare dso_local i32 @ubi_put_device(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
