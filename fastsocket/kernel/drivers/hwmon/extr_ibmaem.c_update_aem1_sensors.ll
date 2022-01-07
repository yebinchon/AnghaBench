; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_update_aem1_sensors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmaem.c_update_aem1_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aem_data = type { i32, i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@REFRESH_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aem_data*)* @update_aem1_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_aem1_sensors(%struct.aem_data* %0) #0 {
  %2 = alloca %struct.aem_data*, align 8
  store %struct.aem_data* %0, %struct.aem_data** %2, align 8
  %3 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %4 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i32, i32* @jiffies, align 4
  %7 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %8 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REFRESH_INTERVAL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @time_before(i32 %6, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %16 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %23

20:                                               ; preds = %14, %1
  %21 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %22 = call i32 @update_aem_energy(%struct.aem_data* %21)
  br label %23

23:                                               ; preds = %20, %19
  %24 = load %struct.aem_data*, %struct.aem_data** %2, align 8
  %25 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @update_aem_energy(%struct.aem_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
