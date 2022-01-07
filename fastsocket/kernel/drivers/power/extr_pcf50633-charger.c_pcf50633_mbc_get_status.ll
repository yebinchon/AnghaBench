; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pcf50633-charger.c_pcf50633_mbc_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_pcf50633-charger.c_pcf50633_mbc_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }
%struct.pcf50633_mbc = type { i64, i64, i64, i64 }

@PCF50633_MBC_USB_ONLINE = common dso_local global i32 0, align 4
@PCF50633_MBC_USB_ACTIVE = common dso_local global i32 0, align 4
@PCF50633_MBC_ADAPTER_ONLINE = common dso_local global i32 0, align 4
@PCF50633_MBC_ADAPTER_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_mbc_get_status(%struct.pcf50633* %0) #0 {
  %2 = alloca %struct.pcf50633*, align 8
  %3 = alloca %struct.pcf50633_mbc*, align 8
  %4 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %2, align 8
  %5 = load %struct.pcf50633*, %struct.pcf50633** %2, align 8
  %6 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pcf50633_mbc* @platform_get_drvdata(i32 %7)
  store %struct.pcf50633_mbc* %8, %struct.pcf50633_mbc** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %3, align 8
  %10 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @PCF50633_MBC_USB_ONLINE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %3, align 8
  %19 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @PCF50633_MBC_USB_ACTIVE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %3, align 8
  %28 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @PCF50633_MBC_ADAPTER_ONLINE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %3, align 8
  %37 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @PCF50633_MBC_ADAPTER_ACTIVE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.pcf50633_mbc* @platform_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
