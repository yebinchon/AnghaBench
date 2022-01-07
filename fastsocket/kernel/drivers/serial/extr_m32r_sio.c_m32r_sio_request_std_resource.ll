; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_request_std_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_request_std_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sio_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_sio_port*, %struct.resource**)* @m32r_sio_request_std_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m32r_sio_request_std_resource(%struct.uart_sio_port* %0, %struct.resource** %1) #0 {
  %3 = alloca %struct.uart_sio_port*, align 8
  %4 = alloca %struct.resource**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uart_sio_port* %0, %struct.uart_sio_port** %3, align 8
  store %struct.resource** %1, %struct.resource*** %4, align 8
  %8 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 8, %11
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %55 [
    i32 129, label %17
    i32 128, label %40
  ]

17:                                               ; preds = %2
  %18 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.resource* @request_mem_region(i64 %28, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.resource**, %struct.resource*** %4, align 8
  store %struct.resource* %30, %struct.resource** %31, align 8
  %32 = load %struct.resource**, %struct.resource*** %4, align 8
  %33 = load %struct.resource*, %struct.resource** %32, align 8
  %34 = icmp ne %struct.resource* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %23
  br label %39

39:                                               ; preds = %38, %17
  br label %55

40:                                               ; preds = %2
  %41 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.resource* @request_region(i32 %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.resource**, %struct.resource*** %4, align 8
  store %struct.resource* %46, %struct.resource** %47, align 8
  %48 = load %struct.resource**, %struct.resource*** %4, align 8
  %49 = load %struct.resource*, %struct.resource** %48, align 8
  %50 = icmp ne %struct.resource* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %40
  br label %55

55:                                               ; preds = %2, %54, %39
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.resource* @request_mem_region(i64, i32, i8*) #1

declare dso_local %struct.resource* @request_region(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
