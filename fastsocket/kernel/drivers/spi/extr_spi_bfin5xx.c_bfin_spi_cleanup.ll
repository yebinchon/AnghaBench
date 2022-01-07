; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.chip_data = type { i32, i32 }

@ssel = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @bfin_spi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_spi_cleanup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.chip_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %4)
  store %struct.chip_data* %5, %struct.chip_data** %3, align 8
  %6 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %7 = icmp ne %struct.chip_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %54

9:                                                ; preds = %1
  %10 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %11 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %16 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %17, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %14
  %25 = load i32**, i32*** @ssel, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %25, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %34 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @peripheral_free(i32 %39)
  br label %41

41:                                               ; preds = %24, %14, %9
  %42 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %43 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %48 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gpio_free(i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %53 = call i32 @kfree(%struct.chip_data* %52)
  br label %54

54:                                               ; preds = %51, %8
  ret void
}

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local i32 @peripheral_free(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(%struct.chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
