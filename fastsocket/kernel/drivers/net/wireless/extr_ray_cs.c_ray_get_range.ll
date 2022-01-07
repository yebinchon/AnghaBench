; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_ray_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_ray_cs.c_ray_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.iw_range = type { i32, double, i32, i32*, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@WIRELESS_EXT = common dso_local global i32 0, align 4
@hop_pattern_length = common dso_local global i32* null, align 8
@country = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @ray_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ray_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iw_range*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.iw_range*
  store %struct.iw_range* %11, %struct.iw_range** %9, align 8
  %12 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %13 = bitcast %struct.iw_range* %12 to i8*
  %14 = call i32 @memset(i8* %13, i32 0, i32 64)
  %15 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %16 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %15, i32 0, i32 0
  store i32 64, i32* %16, align 4
  %17 = load i32, i32* @WIRELESS_EXT, align 4
  %18 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %19 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %21 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %20, i32 0, i32 0
  store i32 9, i32* %21, align 8
  %22 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %23 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %22, i32 0, i32 1
  store double 1.100000e+06, double* %23, align 8
  %24 = load i32*, i32** @hop_pattern_length, align 8
  %25 = load i64, i64* @country, align 8
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %31 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %33 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %35 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %38 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 255, i32* %39, align 8
  %40 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %41 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 255, i32* %42, align 4
  %43 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %44 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %43, i32 0, i32 2
  store i32 2, i32* %44, align 8
  %45 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %46 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 1000000, i32* %48, align 4
  %49 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %50 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 2000000, i32* %52, align 4
  ret i32 0
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
