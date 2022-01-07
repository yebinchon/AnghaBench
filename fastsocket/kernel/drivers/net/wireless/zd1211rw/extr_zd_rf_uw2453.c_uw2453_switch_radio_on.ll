; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_uw2453.c_uw2453_switch_radio_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_uw2453.c_uw2453_switch_radio_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }
%struct.zd_ioreq16 = type { i32, i32, i32 }

@ZD_CR11 = common dso_local global i32 0, align 4
@ZD_CR251 = common dso_local global i32 0, align 4
@RF_RV_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*)* @uw2453_switch_radio_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uw2453_switch_radio_on(%struct.zd_rf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca [2 x %struct.zd_ioreq16], align 16
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  %7 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %8 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %7)
  store %struct.zd_chip* %8, %struct.zd_chip** %5, align 8
  %9 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i32 0, i32 0
  %11 = load i32, i32* @ZD_CR11, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %9, i64 1
  %15 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %14, i32 0, i32 0
  %16 = load i32, i32* @ZD_CR251, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %14, i32 0, i32 1
  store i32 63, i32* %17, align 4
  %18 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %14, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %20 = call i32 @UW2453_REGWRITE(i32 0, i32 155540)
  %21 = load i32, i32* @RF_RV_BITS, align 4
  %22 = call i32 @zd_rfwrite_locked(%struct.zd_chip* %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %29 = call i64 @zd_chip_is_zd1211b(%struct.zd_chip* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 1
  %33 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %32, i32 0, i32 1
  store i32 127, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %36 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %37 = getelementptr inbounds [2 x %struct.zd_ioreq16], [2 x %struct.zd_ioreq16]* %6, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %37)
  %39 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %35, %struct.zd_ioreq16* %36, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_rfwrite_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @UW2453_REGWRITE(i32, i32) #1

declare dso_local i64 @zd_chip_is_zd1211b(%struct.zd_chip*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
