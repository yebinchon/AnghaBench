; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_match_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_bus.c_sdio_match_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i64, i64, i64 }
%struct.sdio_device_id = type { i64, i64, i64 }

@SDIO_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdio_device_id* (%struct.sdio_func*, %struct.sdio_device_id*)* @sdio_match_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdio_device_id* @sdio_match_one(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca %struct.sdio_device_id*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %6 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %7 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SDIO_ANY_ID, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %3, align 8
  br label %52

20:                                               ; preds = %11, %2
  %21 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SDIO_ANY_ID, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %28 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %31 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %3, align 8
  br label %52

35:                                               ; preds = %26, %20
  %36 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SDIO_ANY_ID, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %46 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %3, align 8
  br label %52

50:                                               ; preds = %41, %35
  %51 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  store %struct.sdio_device_id* %51, %struct.sdio_device_id** %3, align 8
  br label %52

52:                                               ; preds = %50, %49, %34, %19
  %53 = load %struct.sdio_device_id*, %struct.sdio_device_id** %3, align 8
  ret %struct.sdio_device_id* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
