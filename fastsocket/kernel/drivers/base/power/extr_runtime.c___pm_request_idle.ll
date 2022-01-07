; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c___pm_request_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c___pm_request_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RPM_SUSPENDED = common dso_local global i64 0, align 8
@RPM_SUSPENDING = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RPM_REQ_NONE = common dso_local global i64 0, align 8
@RPM_REQ_IDLE = common dso_local global i64 0, align 8
@pm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @__pm_request_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pm_request_idle(%struct.device* %0) #0 {
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
  store i32 %12, i32* %4, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %13
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RPM_SUSPENDED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RPM_SUSPENDING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %25, %19, %13
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = call i32 @pm_children_suspended(%struct.device* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %10
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %101

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RPM_REQ_NONE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i64, i64* @RPM_REQ_IDLE, align 8
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i64 %70, i64* %73, align 8
  br label %85

74:                                               ; preds = %62
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RPM_REQ_IDLE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %74
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %101

87:                                               ; preds = %56
  %88 = load i64, i64* @RPM_REQ_IDLE, align 8
  %89 = load %struct.device*, %struct.device** %3, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i64 %88, i64* %91, align 8
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* @pm_wq, align 4
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = call i32 @queue_work(i32 %95, i32* %98)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %87, %85, %54
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pm_children_suspended(%struct.device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
