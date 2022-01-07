; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_show_measurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_show_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.il_priv = type { i32, i32, i32 }
%struct.il_spectrum_notification = type { i32 }

@MEASUREMENT_READY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @il3945_show_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_show_measurement(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.il_spectrum_notification, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.il_priv* @dev_get_drvdata(%struct.device* %15)
  store %struct.il_priv* %16, %struct.il_priv** %8, align 8
  store i32 4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = bitcast %struct.il_spectrum_notification* %9 to i32*
  store i32* %17, i32** %13, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %14, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MEASUREMENT_READY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  store i32 0, i32* %4, align 4
  br label %89

33:                                               ; preds = %3
  %34 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @memcpy(%struct.il_spectrum_notification* %9, i32* %35, i32 %36)
  %38 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %80, %33
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i1 [ false, %44 ], [ %51, %47 ]
  br i1 %53, label %54, label %87

54:                                               ; preds = %52
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %64, %65
  %67 = call i32 @hex_dump_to_buffer(i32* %58, i32 %59, i32 16, i32 1, i8* %63, i32 %66, i32 1)
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %54
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 10, i8* %79, align 1
  br label %80

80:                                               ; preds = %74, %54
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 16
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @min(i32 %83, i32 16)
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %44

87:                                               ; preds = %52
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %28
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.il_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.il_spectrum_notification*, i32*, i32) #1

declare dso_local i32 @hex_dump_to_buffer(i32*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
