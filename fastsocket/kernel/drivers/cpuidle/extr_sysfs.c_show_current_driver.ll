; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_sysfs.c_show_current_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/extr_sysfs.c_show_current_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysdev_class = type { i32 }
%struct.cpuidle_driver = type { i8* }

@cpuidle_driver_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysdev_class*, i8*)* @show_current_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_current_driver(%struct.sysdev_class* %0, i8* %1) #0 {
  %3 = alloca %struct.sysdev_class*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuidle_driver*, align 8
  store %struct.sysdev_class* %0, %struct.sysdev_class** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.cpuidle_driver* (...) @cpuidle_get_driver()
  store %struct.cpuidle_driver* %7, %struct.cpuidle_driver** %6, align 8
  %8 = call i32 @spin_lock(i32* @cpuidle_driver_lock)
  %9 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %10 = icmp ne %struct.cpuidle_driver* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %14 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 %16, i32* %5, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = call i32 @spin_unlock(i32* @cpuidle_driver_lock)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local %struct.cpuidle_driver* @cpuidle_get_driver(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
