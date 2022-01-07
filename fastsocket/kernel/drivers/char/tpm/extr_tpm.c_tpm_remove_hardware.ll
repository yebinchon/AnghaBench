; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_remove_hardware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_remove_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_chip = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"No device data found\0A\00", align 1
@driver_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_remove_hardware(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.tpm_chip* @dev_get_drvdata(%struct.device* %4)
  store %struct.tpm_chip* %5, %struct.tpm_chip** %3, align 8
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %7 = icmp eq %struct.tpm_chip* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @dev_err(%struct.device* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %40

11:                                               ; preds = %1
  %12 = call i32 @spin_lock(i32* @driver_lock)
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 3
  %15 = call i32 @list_del_rcu(i32* %14)
  %16 = call i32 @spin_unlock(i32* @driver_lock)
  %17 = call i32 (...) @synchronize_rcu()
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @misc_deregister(i32* %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sysfs_remove_group(i32* %23, i32 %27)
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = call i32 @tpm_remove_ppi(i32* %30)
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %33 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tpm_bios_log_teardown(i32 %34)
  %36 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %37 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @put_device(i32 %38)
  br label %40

40:                                               ; preds = %11, %8
  ret void
}

declare dso_local %struct.tpm_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32) #1

declare dso_local i32 @tpm_remove_ppi(i32*) #1

declare dso_local i32 @tpm_bios_log_teardown(i32) #1

declare dso_local i32 @put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
