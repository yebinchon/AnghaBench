; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_sbs_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_sbs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_sbs = type { i64, i32, %struct.acpi_battery*, i64, %struct.TYPE_6__ }
%struct.acpi_battery = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MAX_SBS_BAT = common dso_local global i32 0, align 4
@ACPI_AC_CLASS = common dso_local global i32 0, align 4
@ACPI_AC_DIR_NAME = common dso_local global i32 0, align 4
@ACPI_BATTERY_CLASS = common dso_local global i32 0, align 4
@ACPI_SBS_NOTIFY_STATUS = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_sbs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_sbs_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_sbs*, align 8
  %5 = alloca %struct.acpi_battery*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.acpi_sbs*
  store %struct.acpi_sbs* %9, %struct.acpi_sbs** %4, align 8
  %10 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %14 = call i32 @acpi_ac_get_present(%struct.acpi_sbs* %13)
  %15 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MAX_SBS_BAT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %59

40:                                               ; preds = %31
  %41 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %41, i32 0, i32 2
  %43 = load %struct.acpi_battery*, %struct.acpi_battery** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %43, i64 %45
  store %struct.acpi_battery* %46, %struct.acpi_battery** %5, align 8
  %47 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %51 = call i32 @acpi_battery_read(%struct.acpi_battery* %50)
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %59

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %57, %39
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %27

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %21
  ret void
}

declare dso_local i32 @acpi_ac_get_present(%struct.acpi_sbs*) #1

declare dso_local i32 @acpi_battery_read(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
