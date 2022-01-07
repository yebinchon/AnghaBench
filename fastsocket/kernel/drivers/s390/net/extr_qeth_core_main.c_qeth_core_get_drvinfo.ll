; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i64 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"qeth_l2\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"qeth_l3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_core_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  store %struct.qeth_card* %8, %struct.qeth_card** %5, align 8
  %9 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcpy(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcpy(i32 %31, i8* %35)
  %37 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %41 = call i8* @CARD_RDEV_ID(%struct.qeth_card* %40)
  %42 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %43 = call i8* @CARD_WDEV_ID(%struct.qeth_card* %42)
  %44 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %45 = call i8* @CARD_DDEV_ID(%struct.qeth_card* %44)
  %46 = call i32 @sprintf(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %43, i8* %45)
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @CARD_RDEV_ID(%struct.qeth_card*) #1

declare dso_local i8* @CARD_WDEV_ID(%struct.qeth_card*) #1

declare dso_local i8* @CARD_DDEV_ID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
