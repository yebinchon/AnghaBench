; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_cfg_ceir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_winbond-cir.c_wbcir_cfg_ceir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i64, i64 }

@protocol = common dso_local global i32 0, align 4
@invert = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CTL = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_STS = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_EV_EN = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CFG1 = common dso_local global i64 0, align 8
@WBCIR_REG_ECEIR_CCTL = common dso_local global i64 0, align 8
@WBCIR_REG_ECEIR_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbcir_data*)* @wbcir_cfg_ceir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_cfg_ceir(%struct.wbcir_data* %0) #0 {
  %2 = alloca %struct.wbcir_data*, align 8
  %3 = alloca i32, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %2, align 8
  %4 = load i32, i32* @protocol, align 4
  %5 = shl i32 %4, 4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @invert, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %14 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 %12, i64 %17)
  %19 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %20 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WBCIR_REG_WCEIR_STS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @wbcir_set_bits(i64 %23, i32 23, i32 23)
  %25 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %26 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @wbcir_set_bits(i64 %29, i32 0, i32 7)
  %31 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %32 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WBCIR_REG_WCEIR_CFG1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @wbcir_set_bits(i64 %35, i32 74, i32 127)
  %37 = load i64, i64* @invert, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %11
  %40 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %41 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 4, i64 %44)
  br label %53

46:                                               ; preds = %11
  %47 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %48 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 0, i64 %51)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %55 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WBCIR_REG_ECEIR_CTS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 16, i64 %58)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
