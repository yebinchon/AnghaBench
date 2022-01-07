; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setadapter_hstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setadapter_hstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"adphstr\00", align 1
@IPA_SETADP_SET_BROADCAST_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"couldn't set broadcast mode on device %s: x%x\0A\00", align 1
@IPA_SETADP_ALTER_MAC_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"couldn't set macaddr mode on device %s: x%x\0A\00", align 1
@QETH_TR_BROADCAST_LOCAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [90 x i8] c"set adapter parameters not available to set broadcast mode, using ALLRINGS on device %s:\0A\00", align 1
@QETH_TR_MACADDR_CANONICAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [92 x i8] c"set adapter parameters not available to set macaddr mode, using NONCANONICAL on device %s:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l3_setadapter_hstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_setadapter_hstr(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %5 = load i32, i32* @TRACE, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = load i32, i32* @IPA_SETADP_SET_BROADCAST_MODE, align 4
  %9 = call i64 @qeth_adp_supported(%struct.qeth_card* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %13 = load i32, i32* @IPA_SETADP_SET_BROADCAST_MODE, align 4
  %14 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %15 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @qeth_l3_send_setadp_mode(%struct.qeth_card* %12, i32 %13, i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = call i32 @CARD_BUS_ID(%struct.qeth_card* %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %11
  %27 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %28 = load i32, i32* @IPA_SETADP_ALTER_MAC_ADDRESS, align 4
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @qeth_l3_send_setadp_mode(%struct.qeth_card* %27, i32 %28, i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %38 = call i32 @CARD_BUS_ID(%struct.qeth_card* %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %66

43:                                               ; preds = %1
  %44 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @QETH_TR_BROADCAST_LOCAL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %52 = call i32 @CARD_BUS_ID(%struct.qeth_card* %51)
  %53 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %56 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QETH_TR_MACADDR_CANONICAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %63 = call i32 @CARD_BUS_ID(%struct.qeth_card* %62)
  %64 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %54
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l3_send_setadp_mode(%struct.qeth_card*, i32, i64) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @CARD_BUS_ID(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
