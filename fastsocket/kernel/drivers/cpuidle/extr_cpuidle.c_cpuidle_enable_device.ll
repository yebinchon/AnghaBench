; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_enable_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_cpuidle.c_cpuidle_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cpuidle_device*)* }
%struct.cpuidle_device = type { i32, i32, i64, i32*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@cpuidle_curr_governor = common dso_local global %struct.TYPE_4__* null, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@enabled_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpuidle_enable_device(%struct.cpuidle_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuidle_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %3, align 8
  %6 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %7 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

11:                                               ; preds = %1
  %12 = call i32 (...) @cpuidle_get_driver()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpuidle_curr_governor, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %101

20:                                               ; preds = %14
  %21 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %22 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %101

28:                                               ; preds = %20
  %29 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %30 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %35 = call i32 @__cpuidle_register_device(%struct.cpuidle_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %101

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %28
  %42 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %43 = call i32 @poll_idle_init(%struct.cpuidle_device* %42)
  %44 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %45 = call i32 @cpuidle_add_state_sysfs(%struct.cpuidle_device* %44)
  store i32 %45, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpuidle_curr_governor, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)** %51, align 8
  %53 = icmp ne i32 (%struct.cpuidle_device*)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpuidle_curr_governor, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.cpuidle_device*)*, i32 (%struct.cpuidle_device*)** %56, align 8
  %58 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %59 = call i32 %57(%struct.cpuidle_device* %58)
  store i32 %59, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %97

62:                                               ; preds = %54, %49
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %84, %62
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %66 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %71 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %70, i32 0, i32 5
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %78 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %77, i32 0, i32 5
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %63

87:                                               ; preds = %63
  %88 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %89 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %91 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %90, i32 0, i32 3
  store i32* null, i32** %91, align 8
  %92 = call i32 (...) @smp_wmb()
  %93 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %94 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* @enabled_devices, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @enabled_devices, align 4
  store i32 0, i32* %2, align 4
  br label %101

97:                                               ; preds = %61
  %98 = load %struct.cpuidle_device*, %struct.cpuidle_device** %3, align 8
  %99 = call i32 @cpuidle_remove_state_sysfs(%struct.cpuidle_device* %98)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %87, %47, %38, %25, %17, %10
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @cpuidle_get_driver(...) #1

declare dso_local i32 @__cpuidle_register_device(%struct.cpuidle_device*) #1

declare dso_local i32 @poll_idle_init(%struct.cpuidle_device*) #1

declare dso_local i32 @cpuidle_add_state_sysfs(%struct.cpuidle_device*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @cpuidle_remove_state_sysfs(%struct.cpuidle_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
