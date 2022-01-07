; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_bufcnt_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_sys.c_qeth_dev_bufcnt_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@CARD_STATE_RECOVER = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@QETH_IN_BUF_COUNT_MIN = common dso_local global i32 0, align 4
@QETH_IN_BUF_COUNT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_dev_bufcnt_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_dev_bufcnt_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %15)
  store %struct.qeth_card* %16, %struct.qeth_card** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %18 = icmp ne %struct.qeth_card* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %87

22:                                               ; preds = %4
  %23 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CARD_STATE_DOWN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CARD_STATE_RECOVER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %14, align 4
  br label %73

40:                                               ; preds = %31, %22
  %41 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @simple_strtoul(i8* %46, i8** %11, i32 10)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @QETH_IN_BUF_COUNT_MIN, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @QETH_IN_BUF_COUNT_MIN, align 4
  br label %63

53:                                               ; preds = %40
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @QETH_IN_BUF_COUNT_MAX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @QETH_IN_BUF_COUNT_MAX, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi i32 [ %52, %51 ], [ %62, %61 ]
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @qeth_realloc_buffer_pool(%struct.qeth_card* %69, i32 %70)
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %37
  %74 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  br label %84

82:                                               ; preds = %73
  %83 = load i64, i64* %9, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %19
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @qeth_realloc_buffer_pool(%struct.qeth_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
