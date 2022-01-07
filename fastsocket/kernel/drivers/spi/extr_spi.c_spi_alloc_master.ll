; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_alloc_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_alloc_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@spi_master_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_master* @spi_alloc_master(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_master*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.spi_master* null, %struct.spi_master** %3, align 8
  br label %37

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = add i64 %12, 16
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.spi_master* @kzalloc(i32 %14, i32 %15)
  store %struct.spi_master* %16, %struct.spi_master** %6, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %18 = icmp ne %struct.spi_master* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store %struct.spi_master* null, %struct.spi_master** %3, align 8
  br label %37

20:                                               ; preds = %10
  %21 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %22 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %21, i32 0, i32 0
  %23 = call i32 @device_initialize(%struct.TYPE_2__* %22)
  %24 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %25 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* @spi_master_class, i32** %26, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @get_device(%struct.device* %27)
  %29 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %30 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %33 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %34 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %33, i64 1
  %35 = call i32 @spi_master_set_devdata(%struct.spi_master* %32, %struct.spi_master* %34)
  %36 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  store %struct.spi_master* %36, %struct.spi_master** %3, align 8
  br label %37

37:                                               ; preds = %20, %19, %9
  %38 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  ret %struct.spi_master* %38
}

declare dso_local %struct.spi_master* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @spi_master_set_devdata(%struct.spi_master*, %struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
