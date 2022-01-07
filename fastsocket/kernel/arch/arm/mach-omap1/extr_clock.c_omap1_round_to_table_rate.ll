; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_round_to_table_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_round_to_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.mpu_rate = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@virtual_ck_mpu = common dso_local global %struct.clk zeroinitializer, align 4
@EINVAL = common dso_local global i64 0, align 8
@rate_table = common dso_local global %struct.mpu_rate* null, align 8
@ck_ref = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*, i64)* @omap1_round_to_table_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap1_round_to_table_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mpu_rate*, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = icmp ne %struct.clk* %8, @virtual_ck_mpu
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* @EINVAL, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %3, align 8
  br label %45

13:                                               ; preds = %2
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.mpu_rate*, %struct.mpu_rate** @rate_table, align 8
  store %struct.mpu_rate* %16, %struct.mpu_rate** %6, align 8
  br label %17

17:                                               ; preds = %40, %13
  %18 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %19 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %24 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ck_ref, i32 0, i32 0), align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %40

29:                                               ; preds = %22
  %30 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %31 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %34 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %42 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %41, i32 1
  store %struct.mpu_rate* %42, %struct.mpu_rate** %6, align 8
  br label %17

43:                                               ; preds = %38, %17
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %43, %10
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
