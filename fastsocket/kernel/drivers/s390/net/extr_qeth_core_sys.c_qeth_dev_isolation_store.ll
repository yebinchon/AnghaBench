; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_isolation_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_isolation_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSD = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSX = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Adapter does not support QDIO data connection isolation\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ATTR_QETH_ISOLATION_NONE = common dso_local global i32 0, align 4
@ISOLATION_MODE_NONE = common dso_local global i32 0, align 4
@ATTR_QETH_ISOLATION_FWD = common dso_local global i32 0, align 4
@ISOLATION_MODE_FWD = common dso_local global i32 0, align 4
@ATTR_QETH_ISOLATION_DROP = common dso_local global i32 0, align 4
@ISOLATION_MODE_DROP = common dso_local global i32 0, align 4
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CARD_STATE_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_dev_isolation_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_isolation_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %16)
  store %struct.qeth_card* %17, %struct.qeth_card** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %14, align 8
  %19 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %20 = icmp ne %struct.qeth_card* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %122

24:                                               ; preds = %4
  %25 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QETH_CARD_TYPE_OSD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %24
  %35 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %36 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QETH_CARD_TYPE_OSX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QETH_CARD_TYPE_UNKNOWN, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %52 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %117

56:                                               ; preds = %41, %34, %24
  %57 = call i8* @strsep(i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %57, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* @ATTR_QETH_ISOLATION_NONE, align 4
  %60 = call i32 @strcmp(i8* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ISOLATION_MODE_NONE, align 4
  store i32 %63, i32* %11, align 4
  br label %83

64:                                               ; preds = %56
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* @ATTR_QETH_ISOLATION_FWD, align 4
  %67 = call i32 @strcmp(i8* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ISOLATION_MODE_FWD, align 4
  store i32 %70, i32* %11, align 4
  br label %82

71:                                               ; preds = %64
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* @ATTR_QETH_ISOLATION_DROP, align 4
  %74 = call i32 @strcmp(i8* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ISOLATION_MODE_DROP, align 4
  store i32 %77, i32* %11, align 4
  br label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %117

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %69
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i64, i64* %9, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %87 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %95 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %98 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %83
  %103 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CARD_STATE_UP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102, %83
  %109 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %110 = call i32 @qeth_set_access_ctrl_online(%struct.qeth_card* %109, i32 1)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %113, %108
  br label %116

116:                                              ; preds = %115, %102
  br label %117

117:                                              ; preds = %116, %78, %48
  %118 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %21
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @qeth_set_access_ctrl_online(%struct.qeth_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
