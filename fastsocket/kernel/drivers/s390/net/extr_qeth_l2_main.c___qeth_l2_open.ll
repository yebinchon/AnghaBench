; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c___qeth_l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"qethopen\00", align 1
@CARD_STATE_UP = common dso_local global i64 0, align 8
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@QETH_LAYER2_MAC_REGISTERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"nomacadr\00", align 1
@EPERM = common dso_local global i32 0, align 4
@CH_STATE_UP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @__qeth_l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qeth_l2_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  store %struct.qeth_card* %8, %struct.qeth_card** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @TRACE, align 4
  %10 = call i32 @QETH_DBF_TEXT(i32 %9, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CARD_STATE_UP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %19 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %17
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @QETH_LAYER2_MAC_REGISTERED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @TRACE, align 4
  %43 = call i32 @QETH_DBF_TEXT(i32 %42, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %33, %26
  %47 = load i32, i32* @CH_STATE_UP, align 4
  %48 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* @CARD_STATE_UP, align 8
  %52 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netif_start_queue(%struct.net_device* %54)
  %56 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @qdio_stop_irq(i32 %59, i32 0)
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %46
  %63 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 1
  %65 = call i32 @napi_enable(i32* %64)
  %66 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 1
  %68 = call i32 @napi_schedule(i32* %67)
  br label %72

69:                                               ; preds = %46
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %41, %23, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i64 @qdio_stop_irq(i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
