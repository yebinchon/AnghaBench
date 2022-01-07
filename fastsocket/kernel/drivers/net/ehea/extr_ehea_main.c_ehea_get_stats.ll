; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i8*, i8*, i8*, i8* }
%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, %struct.net_device_stats, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @ehea_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @ehea_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %10)
  store %struct.ehea_port* %11, %struct.ehea_port** %3, align 8
  %12 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %13 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %12, i32 0, i32 1
  store %struct.net_device_stats* %13, %struct.net_device_stats** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %17 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %22 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr i8, i8* %29, i64 %28
  store i8* %30, i8** %5, align 8
  %31 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %32 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr i8, i8* %39, i64 %38
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %20
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %14

44:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %48 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %45
  %52 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %53 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr i8, i8* %60, i64 %59
  store i8* %61, i8** %6, align 8
  %62 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %63 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr i8, i8* %70, i64 %69
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %51
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %45

75:                                               ; preds = %45
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %78 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %81 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %84 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %89 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %88, i32 0, i32 1
  ret %struct.net_device_stats* %89
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
