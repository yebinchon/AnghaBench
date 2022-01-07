; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_atmel.c_atml_plat_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_atmel.c_atml_plat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tpm_chip = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@pdev = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atml_plat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atml_plat_remove() #0 {
  %1 = alloca %struct.tpm_chip*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdev, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = call %struct.tpm_chip* @dev_get_drvdata(i32* %3)
  store %struct.tpm_chip* %4, %struct.tpm_chip** %1, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %6 = icmp ne %struct.tpm_chip* %5, null
  br i1 %6, label %7, label %35

7:                                                ; preds = %0
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %9 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %15 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @atmel_release_region(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %13, %7
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @atmel_put_base_addr(i32 %27)
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %30 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @tpm_remove_hardware(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdev, align 8
  %34 = call i32 @platform_device_unregister(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %23, %0
  ret void
}

declare dso_local %struct.tpm_chip* @dev_get_drvdata(i32*) #1

declare dso_local i32 @atmel_release_region(i32, i32) #1

declare dso_local i32 @atmel_put_base_addr(i32) #1

declare dso_local i32 @tpm_remove_hardware(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
