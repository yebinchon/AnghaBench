; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbshc.c_smbus_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbshc.c_smbus_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_smb_hc = type { i32, i32 }
%union.acpi_smb_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ACPI_SMB_STATUS = common dso_local global i32 0, align 4
@ACPI_SMB_ALARM_ADDRESS = common dso_local global i32 0, align 4
@OSL_GPE_HANDLER = common dso_local global i32 0, align 4
@acpi_smbus_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smbus_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_alarm(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.acpi_smb_hc*, align 8
  %5 = alloca %union.acpi_smb_status, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.acpi_smb_hc*
  store %struct.acpi_smb_hc* %8, %struct.acpi_smb_hc** %4, align 8
  %9 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %10 = load i32, i32* @ACPI_SMB_STATUS, align 4
  %11 = bitcast %union.acpi_smb_status* %5 to i32*
  %12 = call i64 @smb_hc_read(%struct.acpi_smb_hc* %9, i32 %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = bitcast %union.acpi_smb_status* %5 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_smb_hc, %struct.acpi_smb_hc* %21, i32 0, i32 1
  %23 = call i32 @wake_up(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = bitcast %union.acpi_smb_status* %5 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %56

30:                                               ; preds = %24
  %31 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_smb_hc, %struct.acpi_smb_hc* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %35 = load i32, i32* @ACPI_SMB_ALARM_ADDRESS, align 4
  %36 = call i64 @smb_hc_read(%struct.acpi_smb_hc* %34, i32 %35, i32* %6)
  %37 = bitcast %union.acpi_smb_status* %5 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %40 = load i32, i32* @ACPI_SMB_STATUS, align 4
  %41 = bitcast %union.acpi_smb_status* %5 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @smb_hc_write(%struct.acpi_smb_hc* %39, i32 %40, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 1
  switch i32 %45, label %51 [
    i32 129, label %46
    i32 128, label %46
    i32 130, label %46
  ]

46:                                               ; preds = %30, %30, %30
  %47 = load i32, i32* @OSL_GPE_HANDLER, align 4
  %48 = load i32, i32* @acpi_smbus_callback, align 4
  %49 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %50 = call i32 @acpi_os_execute(i32 %47, i32 %48, %struct.acpi_smb_hc* %49)
  br label %51

51:                                               ; preds = %30, %46
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_smb_hc, %struct.acpi_smb_hc* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %29, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @smb_hc_read(%struct.acpi_smb_hc*, i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smb_hc_write(%struct.acpi_smb_hc*, i32, i32) #1

declare dso_local i32 @acpi_os_execute(i32, i32, %struct.acpi_smb_hc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
