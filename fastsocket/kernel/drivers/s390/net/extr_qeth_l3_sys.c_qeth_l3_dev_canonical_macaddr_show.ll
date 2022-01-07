; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_canonical_macaddr_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_canonical_macaddr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_HSTR = common dso_local global i64 0, align 8
@QETH_LINK_TYPE_LANE_TR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"n/a\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@QETH_TR_MACADDR_CANONICAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qeth_l3_dev_canonical_macaddr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_canonical_macaddr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qeth_card*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %9)
  store %struct.qeth_card* %10, %struct.qeth_card** %8, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %12 = icmp ne %struct.qeth_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QETH_LINK_TYPE_HSTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QETH_LINK_TYPE_LANE_TR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %23, %16
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QETH_TR_MACADDR_CANONICAL, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %33, %30, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
