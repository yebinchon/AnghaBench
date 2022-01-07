; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_bt_rfkill_set_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_bt_rfkill_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i32 }

@HCI_SUCCESS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@HCI_WIRELESS = common dso_local global i32 0, align 4
@HCI_WIRELESS_BT_POWER = common dso_local global i32 0, align 4
@HCI_WIRELESS_BT_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @bt_rfkill_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_rfkill_set_block(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.toshiba_acpi_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.toshiba_acpi_dev*
  store %struct.toshiba_acpi_dev* %12, %struct.toshiba_acpi_dev** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %18 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = call i64 @hci_get_radio_state(i32* %10)
  %21 = load i64, i64* @HCI_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %51

30:                                               ; preds = %26
  %31 = load i32, i32* @HCI_WIRELESS, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @HCI_WIRELESS_BT_POWER, align 4
  %34 = call i32 @hci_write2(i32 %31, i64 %32, i32 %33, i64* %6)
  %35 = load i32, i32* @HCI_WIRELESS, align 4
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @HCI_WIRELESS_BT_ATTACH, align 4
  %38 = call i32 @hci_write2(i32 %35, i64 %36, i32 %37, i64* %7)
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @HCI_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @HCI_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %30
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %29, %23
  %52 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %53 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @hci_get_radio_state(i32*) #1

declare dso_local i32 @hci_write2(i32, i64, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
