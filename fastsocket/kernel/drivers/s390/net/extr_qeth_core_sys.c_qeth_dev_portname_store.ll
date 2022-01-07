; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_portname_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_portname_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@CARD_STATE_RECOVER = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_dev_portname_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_portname_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %14)
  store %struct.qeth_card* %15, %struct.qeth_card** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %17 = icmp ne %struct.qeth_card* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %26 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CARD_STATE_DOWN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CARD_STATE_RECOVER, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  br label %89

39:                                               ; preds = %30, %21
  %40 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp sgt i32 %42, 8
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %89

51:                                               ; preds = %44
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %53, i32* %58, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %70, %51
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 9
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 32, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %59

73:                                               ; preds = %59
  %74 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = bitcast i32* %78 to i8*
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  %82 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %83 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = bitcast i32* %86 to i8*
  %88 = call i32 @ASCEBC(i8* %87, i32 8)
  br label %89

89:                                               ; preds = %73, %48, %36
  %90 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  br label %100

98:                                               ; preds = %89
  %99 = load i64, i64* %9, align 8
  br label %100

100:                                              ; preds = %98, %95
  %101 = phi i64 [ %97, %95 ], [ %99, %98 ]
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %18
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
