; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus-laptop.c_asus_hotk_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_device = type { i32 }

@asus_hotk_notify.key = internal global %struct.key_entry* null, align 8
@hotk = common dso_local global %struct.TYPE_5__* null, align 8
@ATKD_LCD_ON = common dso_local global i32 0, align 4
@LCD_ON = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@ATKD_LCD_OFF = common dso_local global i32 0, align 4
@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @asus_hotk_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_hotk_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %97

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ATKD_LCD_ON, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @LCD_ON, align 4
  %15 = call i32 @write_status(i32* null, i32 1, i32 %14)
  %16 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %17 = call i32 @lcd_blank(i32 %16)
  br label %28

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ATKD_LCD_OFF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @LCD_ON, align 4
  %24 = call i32 @write_status(i32* null, i32 0, i32 %23)
  %25 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %26 = call i32 @lcd_blank(i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = srem i32 %32, 128
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = sext i32 %36 to i64
  store i64 %38, i64* %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @acpi_bus_generate_proc_event(%struct.TYPE_6__* %41, i32 %42, i64 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i32 @dev_name(i32* %54)
  %56 = load i32, i32* %4, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @acpi_bus_generate_netlink_event(i32 %50, i32 %55, i32 %56, i64 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %28
  %64 = load i32, i32* %4, align 4
  %65 = call %struct.key_entry* @asus_get_entry_by_scancode(i32 %64)
  store %struct.key_entry* %65, %struct.key_entry** @asus_hotk_notify.key, align 8
  %66 = load %struct.key_entry*, %struct.key_entry** @asus_hotk_notify.key, align 8
  %67 = icmp ne %struct.key_entry* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %97

69:                                               ; preds = %63
  %70 = load %struct.key_entry*, %struct.key_entry** @asus_hotk_notify.key, align 8
  %71 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %96 [
    i32 128, label %73
  ]

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.key_entry*, %struct.key_entry** @asus_hotk_notify.key, align 8
  %78 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @input_report_key(i64 %76, i32 %79, i32 1)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @input_sync(i64 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.key_entry*, %struct.key_entry** @asus_hotk_notify.key, align 8
  %89 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @input_report_key(i64 %87, i32 %90, i32 0)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hotk, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @input_sync(i64 %94)
  br label %96

96:                                               ; preds = %69, %73
  br label %97

97:                                               ; preds = %8, %68, %96, %28
  ret void
}

declare dso_local i32 @write_status(i32*, i32, i32) #1

declare dso_local i32 @lcd_blank(i32) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.key_entry* @asus_get_entry_by_scancode(i32) #1

declare dso_local i32 @input_report_key(i64, i32, i32) #1

declare dso_local i32 @input_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
