; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_round_to_table_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_clock24xx.c_omap2_round_to_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.prcm_config = type { i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@virt_prcm_set = common dso_local global %struct.clk zeroinitializer, align 4
@EINVAL = common dso_local global i64 0, align 8
@rate_table = common dso_local global %struct.prcm_config* null, align 8
@cpu_mask = common dso_local global i32 0, align 4
@sys_ck = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*, i64)* @omap2_round_to_table_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omap2_round_to_table_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.prcm_config*, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = icmp ne %struct.clk* %8, @virt_prcm_set
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* @EINVAL, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %3, align 8
  br label %53

13:                                               ; preds = %2
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.prcm_config*, %struct.prcm_config** @rate_table, align 8
  store %struct.prcm_config* %16, %struct.prcm_config** %6, align 8
  br label %17

17:                                               ; preds = %48, %13
  %18 = load %struct.prcm_config*, %struct.prcm_config** %6, align 8
  %19 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load %struct.prcm_config*, %struct.prcm_config** %6, align 8
  %24 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @cpu_mask, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %48

30:                                               ; preds = %22
  %31 = load %struct.prcm_config*, %struct.prcm_config** %6, align 8
  %32 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_ck, i32 0, i32 0), align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %48

37:                                               ; preds = %30
  %38 = load %struct.prcm_config*, %struct.prcm_config** %6, align 8
  %39 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load %struct.prcm_config*, %struct.prcm_config** %6, align 8
  %42 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %36, %29
  %49 = load %struct.prcm_config*, %struct.prcm_config** %6, align 8
  %50 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %49, i32 1
  store %struct.prcm_config* %50, %struct.prcm_config** %6, align 8
  br label %17

51:                                               ; preds = %46, %17
  %52 = load i64, i64* %7, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %10
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
