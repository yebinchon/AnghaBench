; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_ipato_enable_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_ipato_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@CARD_STATE_RECOVER = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_l3_dev_ipato_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_dev_ipato_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %13)
  store %struct.qeth_card* %14, %struct.qeth_card** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %16 = icmp ne %struct.qeth_card* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %90

20:                                               ; preds = %4
  %21 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %22 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CARD_STATE_DOWN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %31 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CARD_STATE_RECOVER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %76

38:                                               ; preds = %29, %20
  %39 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %45 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 1
  %51 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  br label %75

54:                                               ; preds = %38
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %60 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %74

62:                                               ; preds = %54
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %68 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74, %43
  br label %76

76:                                               ; preds = %75, %35
  %77 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %78 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  br label %87

85:                                               ; preds = %76
  %86 = load i64, i64* %9, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i64 [ %84, %82 ], [ %86, %85 ]
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %17
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
