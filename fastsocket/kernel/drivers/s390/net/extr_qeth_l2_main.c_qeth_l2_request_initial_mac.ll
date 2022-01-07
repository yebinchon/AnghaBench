; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_request_initial_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_request_initial_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@__const.qeth_l2_request_initial_mac.vendor_pre = private unnamed_addr constant [3 x i8] c"\02\00\00", align 1
@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"doL2init\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"doL2%s\00", align 1
@IPA_SETADAPTERPARMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"could not query adapter parameters on device %s: x%x\0A\00", align 1
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSM = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"couldn't get MAC address on device %s: x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@OSA_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_l2_request_initial_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_request_initial_mac(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = bitcast [3 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.qeth_l2_request_initial_mac.vendor_pre, i32 0, i32 0), i64 3, i1 false)
  %7 = load i32, i32* @SETUP, align 4
  %8 = call i32 @QETH_DBF_TEXT(i32 %7, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @SETUP, align 4
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = call i32 @CARD_BUS_ID(%struct.qeth_card* %10)
  %12 = call i32 @QETH_DBF_TEXT_(i32 %9, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %14 = load i32, i32* @IPA_SETADAPTERPARMS, align 4
  %15 = call i64 @qeth_is_supported(%struct.qeth_card* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %19 = call i32 @qeth_query_setadapterparms(%struct.qeth_card* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %24 = call i32 @CARD_BUS_ID(%struct.qeth_card* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %55, label %35

35:                                               ; preds = %28
  %36 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %37 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QETH_CARD_TYPE_OSM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %35
  %43 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %49, %42, %35, %28
  %56 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %57 = call i32 @qeth_setadpparms_change_macaddr(%struct.qeth_card* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %62 = call i32 @CARD_BUS_ID(%struct.qeth_card* %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* @SETUP, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @QETH_DBF_TEXT_(i32 %65, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %93

69:                                               ; preds = %55
  %70 = load i32, i32* @SETUP, align 4
  %71 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %72 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @OSA_ADDR_LEN, align 4
  %77 = call i32 @QETH_DBF_HEX(i32 %70, i32 2, i32 %75, i32 %76)
  br label %92

78:                                               ; preds = %49
  %79 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @random_ether_addr(i32 %83)
  %85 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %91 = call i32 @memcpy(i32 %89, i8* %90, i32 3)
  br label %92

92:                                               ; preds = %78, %69
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #2

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #2

declare dso_local i32 @CARD_BUS_ID(%struct.qeth_card*) #2

declare dso_local i64 @qeth_is_supported(%struct.qeth_card*, i32) #2

declare dso_local i32 @qeth_query_setadapterparms(%struct.qeth_card*) #2

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #2

declare dso_local i32 @qeth_setadpparms_change_macaddr(%struct.qeth_card*) #2

declare dso_local i32 @QETH_DBF_HEX(i32, i32, i32, i32) #2

declare dso_local i32 @random_ether_addr(i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
