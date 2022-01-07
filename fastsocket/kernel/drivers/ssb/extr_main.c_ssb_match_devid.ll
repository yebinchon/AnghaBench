; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_match_devid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_main.c_ssb_match_devid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device_id = type { i64, i64, i64 }

@SSB_ANY_VENDOR = common dso_local global i64 0, align 8
@SSB_ANY_ID = common dso_local global i64 0, align 8
@SSB_ANY_REV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device_id*, %struct.ssb_device_id*)* @ssb_match_devid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_match_devid(%struct.ssb_device_id* %0, %struct.ssb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device_id*, align 8
  %5 = alloca %struct.ssb_device_id*, align 8
  store %struct.ssb_device_id* %0, %struct.ssb_device_id** %4, align 8
  store %struct.ssb_device_id* %1, %struct.ssb_device_id** %5, align 8
  %6 = load %struct.ssb_device_id*, %struct.ssb_device_id** %4, align 8
  %7 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ssb_device_id*, %struct.ssb_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ssb_device_id*, %struct.ssb_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSB_ANY_VENDOR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %51

20:                                               ; preds = %13, %2
  %21 = load %struct.ssb_device_id*, %struct.ssb_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ssb_device_id*, %struct.ssb_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.ssb_device_id*, %struct.ssb_device_id** %4, align 8
  %30 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SSB_ANY_ID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

35:                                               ; preds = %28, %20
  %36 = load %struct.ssb_device_id*, %struct.ssb_device_id** %4, align 8
  %37 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ssb_device_id*, %struct.ssb_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.ssb_device_id*, %struct.ssb_device_id** %4, align 8
  %45 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SSB_ANY_REV, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %43, %35
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %34, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
