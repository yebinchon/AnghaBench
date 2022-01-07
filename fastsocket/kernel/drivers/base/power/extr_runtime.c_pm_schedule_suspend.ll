; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c_pm_schedule_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c_pm_schedule_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i64, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RPM_REQ_RESUME = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@RPM_REQ_NONE = common dso_local global i64 0, align 8
@RPM_SUSPENDED = common dso_local global i64 0, align 8
@RPM_SUSPENDING = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_schedule_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %112

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @__pm_request_suspend(%struct.device* %24)
  store i32 %25, i32* %6, align 4
  br label %112

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @pm_runtime_deactivate_timer(%struct.device* %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RPM_REQ_RESUME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %112

44:                                               ; preds = %34
  %45 = load i64, i64* @RPM_REQ_NONE, align 8
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %26
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RPM_SUSPENDED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %92

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RPM_SUSPENDING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINPROGRESS, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %91

67:                                               ; preds = %57
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = call i64 @atomic_read(i32* %70)
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %67
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %90

82:                                               ; preds = %73
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = call i32 @pm_children_suspended(%struct.device* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %79
  br label %91

91:                                               ; preds = %90, %64
  br label %92

92:                                               ; preds = %91, %56
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %112

96:                                               ; preds = %92
  %97 = load i64, i64* @jiffies, align 8
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @msecs_to_jiffies(i32 %98)
  %100 = add nsw i64 %97, %99
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  store i64 %100, i64* %103, align 8
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = getelementptr inbounds %struct.device, %struct.device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  %107 = load %struct.device*, %struct.device** %3, align 8
  %108 = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @mod_timer(i32* %106, i64 %110)
  br label %112

112:                                              ; preds = %96, %95, %41, %23, %17
  %113 = load %struct.device*, %struct.device** %3, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__pm_request_suspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_deactivate_timer(%struct.device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pm_children_suspended(%struct.device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
