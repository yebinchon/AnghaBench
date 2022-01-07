; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_hw_trap_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_hw_trap_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CARD_STATE_SOFTSETUP = common dso_local global i64 0, align 8
@CARD_STATE_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@QETH_DIAGS_CMD_TRAP = common dso_local global i32 0, align 4
@QETH_DIAGS_TRAP_ARM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"disarm\00", align 1
@QETH_DIAGS_TRAP_DISARM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@QETH_DIAGS_TRAP_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_hw_trap_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_hw_trap_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %15)
  store %struct.qeth_card* %16, %struct.qeth_card** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %19 = icmp ne %struct.qeth_card* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %143

23:                                               ; preds = %4
  %24 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CARD_STATE_SOFTSETUP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %34 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CARD_STATE_UP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %23
  store i32 1, i32* %14, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %78, label %44

44:                                               ; preds = %39
  %45 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %55 = load i32, i32* @QETH_DIAGS_CMD_TRAP, align 4
  %56 = call i64 @qeth_is_diagass_supported(%struct.qeth_card* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %60 = load i32, i32* @QETH_DIAGS_TRAP_ARM, align 4
  %61 = call i32 @qeth_hw_trap(%struct.qeth_card* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %66 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %58
  br label %72

69:                                               ; preds = %53
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %68
  br label %77

73:                                               ; preds = %50
  %74 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %72
  br label %129

78:                                               ; preds = %44, %39
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %107, label %82

82:                                               ; preds = %78
  %83 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %84 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %93 = load i32, i32* @QETH_DIAGS_TRAP_DISARM, align 4
  %94 = call i32 @qeth_hw_trap(%struct.qeth_card* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %99 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %91
  br label %106

102:                                              ; preds = %88
  %103 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %101
  br label %128

107:                                              ; preds = %82, %78
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %116 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %122 = load i32, i32* @QETH_DIAGS_TRAP_CAPTURE, align 4
  %123 = call i32 @qeth_hw_trap(%struct.qeth_card* %121, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %127

124:                                              ; preds = %114, %111, %107
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %124, %120
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128, %77
  %130 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %131 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %130, i32 0, i32 1
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  br label %140

138:                                              ; preds = %129
  %139 = load i64, i64* %9, align 8
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi i64 [ %137, %135 ], [ %139, %138 ]
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %140, %20
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @qeth_is_diagass_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_hw_trap(%struct.qeth_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
