; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_set_access_ctrl_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_set_access_ctrl_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"setactlo\00", align 1
@QETH_CARD_TYPE_OSD = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@IPA_SETADP_SET_ACCESS_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"IPA(SET_ACCESS_CTRL,%s,%d) sent failed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ISOLATION_MODE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Adapter does not support QDIO data connection isolation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_set_access_ctrl_online(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @TRACE, align 4
  %7 = call i32 @QETH_DBF_TEXT(i32 %6, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QETH_CARD_TYPE_OSD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %14, %2
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = load i32, i32* @IPA_SETADP_SET_ACCESS_CONTROL, align 4
  %24 = call i64 @qeth_adp_supported(%struct.qeth_card* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %28 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @qeth_setadpparms_set_access_ctrl(%struct.qeth_card* %27, i64 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %38 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @QETH_DBF_MESSAGE(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %36, %26
  br label %69

49:                                               ; preds = %21, %14
  %50 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ISOLATION_MODE_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load i64, i64* @ISOLATION_MODE_NONE, align 8
  %58 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(%struct.TYPE_10__* %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %56, %49
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_setadpparms_set_access_ctrl(%struct.qeth_card*, i64, i32) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
