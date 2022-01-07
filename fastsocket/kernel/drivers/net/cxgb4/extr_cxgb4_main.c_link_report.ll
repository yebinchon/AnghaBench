; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_link_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_link_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@link_report.fc = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Tx/Rx\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"10Mbps\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"10Gbps\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"1000Mbps\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"100Mbps\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"link up, %s, full-duplex, %s PAUSE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @link_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_report(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @netif_carrier_ok(%struct.net_device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %31

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.port_info* @netdev_priv(%struct.net_device* %12)
  store %struct.port_info* %13, %struct.port_info** %4, align 8
  %14 = load %struct.port_info*, %struct.port_info** %4, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %21 [
    i32 128, label %18
    i32 129, label %19
    i32 130, label %20
  ]

18:                                               ; preds = %11
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %21

19:                                               ; preds = %11
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %21

20:                                               ; preds = %11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %21

21:                                               ; preds = %11, %20, %19, %18
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.port_info*, %struct.port_info** %4, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* @link_report.fc, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %23, i8* %29)
  br label %31

31:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
