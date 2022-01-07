; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_free_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_free_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_device = type { i32*, i32, i32, i32 }

@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@PM8001_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_device*)* @pm8001_free_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_free_dev(%struct.pm8001_device* %0) #0 {
  %2 = alloca %struct.pm8001_device*, align 8
  %3 = alloca i32, align 4
  store %struct.pm8001_device* %0, %struct.pm8001_device** %2, align 8
  %4 = load %struct.pm8001_device*, %struct.pm8001_device** %2, align 8
  %5 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pm8001_device*, %struct.pm8001_device** %2, align 8
  %8 = call i32 @memset(%struct.pm8001_device* %7, i32 0, i32 24)
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pm8001_device*, %struct.pm8001_device** %2, align 8
  %11 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %13 = load %struct.pm8001_device*, %struct.pm8001_device** %2, align 8
  %14 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %16 = load %struct.pm8001_device*, %struct.pm8001_device** %2, align 8
  %17 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.pm8001_device*, %struct.pm8001_device** %2, align 8
  %19 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @memset(%struct.pm8001_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
