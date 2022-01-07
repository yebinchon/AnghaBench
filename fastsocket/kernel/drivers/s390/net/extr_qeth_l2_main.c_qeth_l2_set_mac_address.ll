; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"setmac\00", align 1
@QETH_REAL_CARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"setmcINV\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSM = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"setmcTYP\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OSA_ADDR_LEN = common dso_local global i32 0, align 4
@QETH_RECOVER_THREAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"setmcREC\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @qeth_l2_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.qeth_card*, %struct.qeth_card** %12, align 8
  store %struct.qeth_card* %13, %struct.qeth_card** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @TRACE, align 4
  %15 = call i32 @QETH_DBF_TEXT(i32 %14, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i64 @qeth_l2_verify_dev(%struct.net_device* %16)
  %18 = load i64, i64* @QETH_REAL_CARD, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @TRACE, align 4
  %22 = call i32 @QETH_DBF_TEXT(i32 %21, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %46, label %32

32:                                               ; preds = %25
  %33 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QETH_CARD_TYPE_OSM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39, %32, %25
  %47 = load i32, i32* @TRACE, align 4
  %48 = call i32 @QETH_DBF_TEXT(i32 %47, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %90

51:                                               ; preds = %39
  %52 = load i32, i32* @TRACE, align 4
  %53 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %54 = call i32 @CARD_BUS_ID(%struct.qeth_card* %53)
  %55 = call i32 @QETH_DBF_TEXT_(i32 %52, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @TRACE, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %58 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @OSA_ADDR_LEN, align 4
  %61 = call i32 @QETH_DBF_HEX(i32 %56, i32 3, i32 %59, i32 %60)
  %62 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %63 = load i32, i32* @QETH_RECOVER_THREAD, align 4
  %64 = call i64 @qeth_wait_for_threads(%struct.qeth_card* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load i32, i32* @TRACE, align 4
  %68 = call i32 @QETH_DBF_TEXT(i32 %67, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @ERESTARTSYS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %90

71:                                               ; preds = %51
  %72 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %73 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @qeth_l2_send_delmac(%struct.qeth_card* %72, i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %71
  %83 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %84 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @qeth_l2_send_setmac(%struct.qeth_card* %83, i32 %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %82, %71
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %66, %46, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @qeth_l2_verify_dev(%struct.net_device*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @CARD_BUS_ID(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, i32, i32) #1

declare dso_local i64 @qeth_wait_for_threads(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_l2_send_delmac(%struct.qeth_card*, i32*) #1

declare dso_local i32 @qeth_l2_send_setmac(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
