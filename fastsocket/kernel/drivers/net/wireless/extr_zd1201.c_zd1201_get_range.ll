; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_get_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.iw_range = type { i32*, i32, i32, i32*, i32, i32, i64, i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@WIRELESS_EXT = common dso_local global i8* null, align 8
@ZD1201_NUMKEYS = common dso_local global i32 0, align 4
@ZD1201_FRAGMIN = common dso_local global i32 0, align 4
@ZD1201_RTSMAX = common dso_local global i32 0, align 4
@ZD1201_FRAGMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @zd1201_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
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
  %12 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %13 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %12, i32 0, i32 0
  store i32 80, i32* %13, align 4
  %14 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %15 = call i32 @memset(%struct.iw_range* %14, i32 0, i32 80)
  %16 = load i8*, i8** @WIRELESS_EXT, align 8
  %17 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %18 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %17, i32 0, i32 10
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @WIRELESS_EXT, align 8
  %20 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %21 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %20, i32 0, i32 9
  store i8* %19, i8** %21, align 8
  %22 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %23 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 128, i32* %24, align 4
  %25 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %26 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 128, i32* %27, align 4
  %28 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %29 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 128, i32* %30, align 4
  %31 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %32 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 7, i32* %33, align 4
  %34 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %35 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 5, i32* %37, align 4
  %38 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %39 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 13, i32* %41, align 4
  %42 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %43 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %42, i32 0, i32 1
  store i32 2, i32* %43, align 8
  %44 = load i32, i32* @ZD1201_NUMKEYS, align 4
  %45 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %46 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 8
  %47 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %48 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %47, i32 0, i32 2
  store i32 4, i32* %48, align 4
  %49 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %50 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 1000000, i32* %52, align 4
  %53 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %54 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 2000000, i32* %56, align 4
  %57 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %58 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 5500000, i32* %60, align 4
  %61 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %62 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 11000000, i32* %64, align 4
  %65 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %66 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @ZD1201_FRAGMIN, align 4
  %68 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %69 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @ZD1201_RTSMAX, align 4
  %71 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %72 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ZD1201_FRAGMAX, align 4
  %74 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %75 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
