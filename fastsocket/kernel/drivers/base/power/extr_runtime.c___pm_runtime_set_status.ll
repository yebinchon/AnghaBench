; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c___pm_runtime_set_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_runtime.c___pm_runtime_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32 }

@RPM_ACTIVE = common dso_local global i32 0, align 4
@RPM_SUSPENDED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pm_runtime_set_status(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 1
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RPM_ACTIVE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @RPM_SUSPENDED, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %145

23:                                               ; preds = %16, %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %132

43:                                               ; preds = %34, %23
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %124

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RPM_SUSPENDED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = icmp ne %struct.device* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = call i32 @atomic_add_unless(i32* %61, i32 -1, i32 0)
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %58, %55
  br label %124

71:                                               ; preds = %51
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = icmp ne %struct.device* %72, null
  br i1 %73, label %74, label %123

74:                                               ; preds = %71
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %79 = call i32 @spin_lock_nested(i32* %77, i32 %78)
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %74
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %85
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @RPM_ACTIVE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %114

101:                                              ; preds = %91, %85, %74
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RPM_SUSPENDED, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = getelementptr inbounds %struct.device, %struct.device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = call i32 @atomic_inc(i32* %111)
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %98
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = getelementptr inbounds %struct.device, %struct.device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %132

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %71
  br label %124

124:                                              ; preds = %123, %70, %50
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = getelementptr inbounds %struct.device, %struct.device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = getelementptr inbounds %struct.device, %struct.device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %124, %121, %40
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load %struct.device*, %struct.device** %6, align 8
  %142 = call i32 @pm_request_idle(%struct.device* %141)
  br label %143

143:                                              ; preds = %140, %132
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %20
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_request_idle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
