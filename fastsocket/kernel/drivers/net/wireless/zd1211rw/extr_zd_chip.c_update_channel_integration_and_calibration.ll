; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_update_channel_integration_and_calibration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_update_channel_integration_and_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_chip = type { i32 }

@update_channel_integration_and_calibration.ioreqs = internal constant [3 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 128, i32 40 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i32 128, i32 42 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32)* @update_channel_integration_and_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_channel_integration_and_calibration(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %8 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %7, i32 0, i32 0
  %9 = call i32 @zd_rf_should_update_pwr_int(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @update_pwr_int(%struct.zd_chip* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %12
  %21 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %22 = call i64 @zd_chip_is_zd1211b(%struct.zd_chip* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @update_ofdm_cal(%struct.zd_chip* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %24
  %33 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @update_pwr_cal(%struct.zd_chip* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %32
  %41 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* @update_channel_integration_and_calibration.ioreqs, i64 0, i64 0))
  %43 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %41, %struct.zd_ioreq16* getelementptr inbounds ([3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* @update_channel_integration_and_calibration.ioreqs, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %20
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %38, %30, %18, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @zd_rf_should_update_pwr_int(i32*) #1

declare dso_local i32 @update_pwr_int(%struct.zd_chip*, i32) #1

declare dso_local i64 @zd_chip_is_zd1211b(%struct.zd_chip*) #1

declare dso_local i32 @update_ofdm_cal(%struct.zd_chip*, i32) #1

declare dso_local i32 @update_pwr_cal(%struct.zd_chip*, i32) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
