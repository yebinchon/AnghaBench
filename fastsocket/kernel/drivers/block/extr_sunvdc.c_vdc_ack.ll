; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vio_dring_state* }
%struct.vio_dring_state = type { i64 }
%struct.vio_dring_data = type { i64, i64, i64 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VDC_TX_RING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdc_port*, i8*)* @vdc_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_ack(%struct.vdc_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdc_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  %7 = alloca %struct.vio_dring_data*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %9 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.vio_dring_state*, %struct.vio_dring_state** %10, align 8
  %12 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %13 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %11, i64 %12
  store %struct.vio_dring_state* %13, %struct.vio_dring_state** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.vio_dring_data*
  store %struct.vio_dring_data* %15, %struct.vio_dring_data** %7, align 8
  %16 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %17 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %20 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %25 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %28 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %33 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VDC_TX_RING_SIZE, align 8
  %36 = icmp sge i64 %34, %35
  br label %37

37:                                               ; preds = %31, %23, %2
  %38 = phi i1 [ true, %23 ], [ true, %2 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.vdc_port*, %struct.vdc_port** %4, align 8
  %45 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %46 = load %struct.vio_dring_data*, %struct.vio_dring_data** %7, align 8
  %47 = getelementptr inbounds %struct.vio_dring_data, %struct.vio_dring_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @vdc_end_one(%struct.vdc_port* %44, %struct.vio_dring_state* %45, i64 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vdc_end_one(%struct.vdc_port*, %struct.vio_dring_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
