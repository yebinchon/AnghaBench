; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_discover_sata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_discover_sata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i32, i32 }

@SATA_PM = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DISCE_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_discover_sata(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %5 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %6 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SATA_PM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %15 = call i32 @sas_get_ata_command_set(%struct.domain_device* %14)
  %16 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %17 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %18 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sas_fill_in_rphy(%struct.domain_device* %16, i32 %19)
  %21 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %22 = call i32 @sas_notify_lldd_dev_found(%struct.domain_device* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %13
  %28 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DISCE_PROBE, align 4
  %32 = call i32 @sas_discover_event(i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %25, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @sas_get_ata_command_set(%struct.domain_device*) #1

declare dso_local i32 @sas_fill_in_rphy(%struct.domain_device*, i32) #1

declare dso_local i32 @sas_notify_lldd_dev_found(%struct.domain_device*) #1

declare dso_local i32 @sas_discover_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
