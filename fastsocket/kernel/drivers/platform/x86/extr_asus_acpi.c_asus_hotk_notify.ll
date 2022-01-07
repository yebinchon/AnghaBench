; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus_acpi.c_asus_hotk_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus_acpi.c_asus_hotk_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.acpi_device = type { i32 }

@hotk = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_MAX_SYS_NOTIFY = common dso_local global i32 0, align 4
@BR_UP = common dso_local global i64 0, align 8
@BR_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @asus_hotk_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_hotk_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hotk, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %59

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ACPI_MAX_SYS_NOTIFY, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %59

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @BR_UP, align 8
  %16 = trunc i64 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* @BR_UP, align 8
  %23 = trunc i64 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hotk, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %44

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = load i64, i64* @BR_DOWN, align 8
  %31 = trunc i64 %30 to i32
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* @BR_DOWN, align 8
  %38 = trunc i64 %37 to i32
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hotk, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43, %20
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hotk, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hotk, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = srem i32 %52, 128
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = call i32 @acpi_bus_generate_proc_event(i32 %47, i32 %48, i32 %56)
  br label %59

59:                                               ; preds = %44, %12, %7
  ret void
}

declare dso_local i32 @acpi_bus_generate_proc_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
