; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_osn_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.net_device.0*, i8*)*, i32 (%struct.sk_buff*)* }
%struct.net_device.0 = type opaque
%struct.sk_buff = type opaque
%struct.sk_buff.1 = type opaque

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"osnreg\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_osn_register(i8* %0, %struct.net_device** %1, i32 (%struct.net_device*, i8*)* %2, i32 (%struct.sk_buff.1*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device**, align 8
  %8 = alloca i32 (%struct.net_device*, i8*)*, align 8
  %9 = alloca i32 (%struct.sk_buff.1*)*, align 8
  %10 = alloca %struct.qeth_card*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.net_device** %1, %struct.net_device*** %7, align 8
  store i32 (%struct.net_device*, i8*)* %2, i32 (%struct.net_device*, i8*)** %8, align 8
  store i32 (%struct.sk_buff.1*)* %3, i32 (%struct.sk_buff.1*)** %9, align 8
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @QETH_DBF_TEXT(i32 %11, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.net_device* @qeth_l2_netdev_by_devno(i8* %13)
  %15 = load %struct.net_device**, %struct.net_device*** %7, align 8
  store %struct.net_device* %14, %struct.net_device** %15, align 8
  %16 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = icmp eq %struct.net_device* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load %struct.net_device**, %struct.net_device*** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load %struct.qeth_card*, %struct.qeth_card** %25, align 8
  store %struct.qeth_card* %26, %struct.qeth_card** %10, align 8
  %27 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %28 = icmp ne %struct.qeth_card* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %52

32:                                               ; preds = %22
  %33 = load i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i8*)** %8, align 8
  %34 = icmp eq i32 (%struct.net_device*, i8*)* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32 (%struct.sk_buff.1*)*, i32 (%struct.sk_buff.1*)** %9, align 8
  %37 = icmp eq i32 (%struct.sk_buff.1*)* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %52

41:                                               ; preds = %35
  %42 = load i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i8*)** %8, align 8
  %43 = bitcast i32 (%struct.net_device*, i8*)* %42 to i32 (%struct.net_device.0*, i8*)*
  %44 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 (%struct.net_device.0*, i8*)* %43, i32 (%struct.net_device.0*, i8*)** %46, align 8
  %47 = load i32 (%struct.sk_buff.1*)*, i32 (%struct.sk_buff.1*)** %9, align 8
  %48 = bitcast i32 (%struct.sk_buff.1*)* %47 to i32 (%struct.sk_buff*)*
  %49 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 (%struct.sk_buff*)* %48, i32 (%struct.sk_buff*)** %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %41, %38, %29, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.net_device* @qeth_l2_netdev_by_devno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
