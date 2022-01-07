; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_mpc_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_mpc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mpcinit\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"2err%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"4err%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"5err%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"6err%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"7err%d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"8err%d\00", align 1
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*)* @qeth_mpc_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_mpc_initialize(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %5 = load i32, i32* @SETUP, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %8 = call i32 @qeth_issue_next_read(%struct.qeth_card* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @SETUP, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @QETH_DBF_TEXT_(i32 %12, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = call i32 @qeth_cm_enable(%struct.qeth_card* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @SETUP, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @QETH_DBF_TEXT_(i32 %22, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %91

25:                                               ; preds = %16
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = call i32 @qeth_cm_setup(%struct.qeth_card* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @SETUP, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @QETH_DBF_TEXT_(i32 %31, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  br label %91

34:                                               ; preds = %25
  %35 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %36 = call i32 @qeth_ulp_enable(%struct.qeth_card* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @SETUP, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @QETH_DBF_TEXT_(i32 %40, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %91

43:                                               ; preds = %34
  %44 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %45 = call i32 @qeth_ulp_setup(%struct.qeth_card* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @SETUP, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @QETH_DBF_TEXT_(i32 %49, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  br label %91

52:                                               ; preds = %43
  %53 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %54 = call i32 @qeth_alloc_qdio_buffers(%struct.qeth_card* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @SETUP, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @QETH_DBF_TEXT_(i32 %58, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  br label %91

61:                                               ; preds = %52
  %62 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %63 = call i32 @qeth_qdio_establish(%struct.qeth_card* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @SETUP, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @QETH_DBF_TEXT_(i32 %67, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %71 = call i32 @qeth_free_qdio_buffers(%struct.qeth_card* %70)
  br label %91

72:                                               ; preds = %61
  %73 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %74 = call i32 @qeth_qdio_activate(%struct.qeth_card* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @SETUP, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @QETH_DBF_TEXT_(i32 %78, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  br label %91

81:                                               ; preds = %72
  %82 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %83 = call i32 @qeth_dm_act(%struct.qeth_card* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @SETUP, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @QETH_DBF_TEXT_(i32 %87, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  br label %91

90:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %102

91:                                               ; preds = %86, %77, %66, %57, %48, %39, %30, %21
  %92 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %93 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %94 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %98 = icmp ne i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %92, i32 %99)
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %91, %90, %11
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @qeth_issue_next_read(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @qeth_cm_enable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_cm_setup(%struct.qeth_card*) #1

declare dso_local i32 @qeth_ulp_enable(%struct.qeth_card*) #1

declare dso_local i32 @qeth_ulp_setup(%struct.qeth_card*) #1

declare dso_local i32 @qeth_alloc_qdio_buffers(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_establish(%struct.qeth_card*) #1

declare dso_local i32 @qeth_free_qdio_buffers(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_activate(%struct.qeth_card*) #1

declare dso_local i32 @qeth_dm_act(%struct.qeth_card*) #1

declare dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
