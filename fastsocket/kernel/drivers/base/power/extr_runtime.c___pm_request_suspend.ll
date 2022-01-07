; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c___pm_request_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c___pm_request_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RPM_SUSPENDED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@RPM_SUSPENDING = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RPM_REQ_RESUME = common dso_local global i64 0, align 8
@RPM_REQ_SUSPEND = common dso_local global i64 0, align 8
@RPM_REQ_NONE = common dso_local global i64 0, align 8
@pm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @__pm_request_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pm_request_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %120

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RPM_SUSPENDED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %56

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %27
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RPM_SUSPENDING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINPROGRESS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = call i32 @pm_children_suspended(%struct.device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %120

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @pm_runtime_deactivate_timer(%struct.device* %62)
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RPM_REQ_RESUME, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %99

79:                                               ; preds = %69
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RPM_REQ_SUSPEND, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* @RPM_REQ_NONE, align 8
  br label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @RPM_REQ_SUSPEND, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.device*, %struct.device** %3, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  store i64 %94, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %79
  br label %99

99:                                               ; preds = %98, %76
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %120

101:                                              ; preds = %61
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %120

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* @RPM_REQ_SUSPEND, align 8
  %109 = load %struct.device*, %struct.device** %3, align 8
  %110 = getelementptr inbounds %struct.device, %struct.device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  store i64 %108, i64* %111, align 8
  %112 = load %struct.device*, %struct.device** %3, align 8
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  %115 = load i32, i32* @pm_wq, align 4
  %116 = load %struct.device*, %struct.device** %3, align 8
  %117 = getelementptr inbounds %struct.device, %struct.device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = call i32 @queue_work(i32 %115, i32* %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %107, %104, %99, %59, %10
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pm_children_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_deactivate_timer(%struct.device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
