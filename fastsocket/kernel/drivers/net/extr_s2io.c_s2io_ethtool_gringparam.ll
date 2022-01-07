; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_ethtool_gringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_ethtool_gringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i64, i32, i64, i8*, i8* }
%struct.s2io_nic = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RXD_MODE_1 = common dso_local global i64 0, align 8
@MAX_RX_DESC_1 = common dso_local global i8* null, align 8
@MAX_RX_DESC_2 = common dso_local global i8* null, align 8
@MAX_TX_DESC = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"max txds: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @s2io_ethtool_gringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_ethtool_gringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.s2io_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %9)
  store %struct.s2io_nic* %10, %struct.s2io_nic** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RXD_MODE_1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8*, i8** @MAX_RX_DESC_1, align 8
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @MAX_RX_DESC_1, align 8
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  br label %30

23:                                               ; preds = %2
  %24 = load i8*, i8** @MAX_RX_DESC_2, align 8
  %25 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @MAX_RX_DESC_2, align 8
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @MAX_TX_DESC, align 4
  %34 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %57, %30
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %39 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %45 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %36

60:                                               ; preds = %36
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %90, %60
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %72 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %69
  %77 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %78 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %69

93:                                               ; preds = %69
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @INFO_DBG, align 4
  %98 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %99 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @DBG_PRINT(i32 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %101)
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
