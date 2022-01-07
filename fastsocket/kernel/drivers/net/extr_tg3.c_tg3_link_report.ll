; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_link_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_link_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Link is up at %d Mbps, %s duplex\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Flow control is %s for TX and %s for RX\0A\00", align 1
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"EEE is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_link_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_link_report(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %3 = load %struct.tg3*, %struct.tg3** %2, align 8
  %4 = getelementptr inbounds %struct.tg3, %struct.tg3* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @netif_carrier_ok(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = load i32, i32* @link, align 4
  %11 = load %struct.tg3*, %struct.tg3** %2, align 8
  %12 = getelementptr inbounds %struct.tg3, %struct.tg3* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netif_info(%struct.tg3* %9, i32 %10, i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = call i32 @tg3_ump_link_report(%struct.tg3* %15)
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.tg3*, %struct.tg3** %2, align 8
  %19 = call i64 @netif_msg_link(%struct.tg3* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %17
  %22 = load %struct.tg3*, %struct.tg3** %2, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tg3*, %struct.tg3** %2, align 8
  %26 = getelementptr inbounds %struct.tg3, %struct.tg3* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPEED_1000, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %41

32:                                               ; preds = %21
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SPEED_100, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 100, i32 10
  br label %41

41:                                               ; preds = %32, %31
  %42 = phi i32 [ 1000, %31 ], [ %40, %32 ]
  %43 = load %struct.tg3*, %struct.tg3** %2, align 8
  %44 = getelementptr inbounds %struct.tg3, %struct.tg3* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DUPLEX_FULL, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %51 = call i32 (i32, i8*, ...) @netdev_info(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %50)
  %52 = load %struct.tg3*, %struct.tg3** %2, align 8
  %53 = getelementptr inbounds %struct.tg3, %struct.tg3* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tg3*, %struct.tg3** %2, align 8
  %56 = getelementptr inbounds %struct.tg3, %struct.tg3* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FLOW_CTRL_TX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %64 = load %struct.tg3*, %struct.tg3** %2, align 8
  %65 = getelementptr inbounds %struct.tg3, %struct.tg3* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FLOW_CTRL_RX, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %73 = call i32 (i32, i8*, ...) @netdev_info(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %63, i8* %72)
  %74 = load %struct.tg3*, %struct.tg3** %2, align 8
  %75 = getelementptr inbounds %struct.tg3, %struct.tg3* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %41
  %81 = load %struct.tg3*, %struct.tg3** %2, align 8
  %82 = getelementptr inbounds %struct.tg3, %struct.tg3* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tg3*, %struct.tg3** %2, align 8
  %85 = getelementptr inbounds %struct.tg3, %struct.tg3* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %90 = call i32 (i32, i8*, ...) @netdev_info(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %80, %41
  %92 = load %struct.tg3*, %struct.tg3** %2, align 8
  %93 = call i32 @tg3_ump_link_report(%struct.tg3* %92)
  br label %94

94:                                               ; preds = %91, %17
  br label %95

95:                                               ; preds = %94, %8
  %96 = load %struct.tg3*, %struct.tg3** %2, align 8
  %97 = getelementptr inbounds %struct.tg3, %struct.tg3* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @netif_carrier_ok(i32 %98)
  %100 = load %struct.tg3*, %struct.tg3** %2, align 8
  %101 = getelementptr inbounds %struct.tg3, %struct.tg3* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  ret void
}

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_info(%struct.tg3*, i32, i32, i8*) #1

declare dso_local i32 @tg3_ump_link_report(%struct.tg3*) #1

declare dso_local i64 @netif_msg_link(%struct.tg3*) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
