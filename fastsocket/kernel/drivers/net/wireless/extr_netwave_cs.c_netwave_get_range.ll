; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_netwave_cs.c_netwave_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_netwave_cs.c_netwave_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iw_range = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@WIRELESS_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @netwave_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netwave_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iw_range*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.iw_range*
  store %struct.iw_range* %12, %struct.iw_range** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %14 = bitcast %union.iwreq_data* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 88, i32* %15, align 4
  %16 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %17 = call i32 @memset(%struct.iw_range* %16, i32 0, i32 88)
  %18 = load i32, i32* @WIRELESS_EXT, align 4
  %19 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %20 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 8
  %21 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %22 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %21, i32 0, i32 0
  store i32 9, i32* %22, align 8
  %23 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %24 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %23, i32 0, i32 1
  store i32 450000, i32* %24, align 4
  %25 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %26 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %28 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %27, i32 0, i32 3
  store i32 511, i32* %28, align 4
  %29 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %30 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %29, i32 0, i32 11
  store i64 0, i64* %30, align 8
  %31 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %32 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %31, i32 0, i32 12
  store i64 0, i64* %32, align 8
  %33 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %34 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %33, i32 0, i32 4
  store i32 63, i32* %34, align 8
  %35 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %36 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %35, i32 0, i32 10
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 255, i32* %37, align 8
  %38 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %39 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 255, i32* %40, align 4
  %41 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %42 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %45 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %44, i32 0, i32 5
  store i32 1, i32* %45, align 4
  %46 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %47 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 1000000, i32* %49, align 4
  %50 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %51 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 2, i32* %53, align 4
  %54 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %55 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %54, i32 0, i32 8
  store i32 1, i32* %55, align 8
  %56 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %57 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %56, i32 0, i32 9
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
