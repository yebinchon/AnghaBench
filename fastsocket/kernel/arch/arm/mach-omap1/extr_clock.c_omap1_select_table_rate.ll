; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_select_table_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_clock.c_omap1_select_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.mpu_rate = type { i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@virtual_ck_mpu = common dso_local global %struct.clk zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@rate_table = common dso_local global %struct.mpu_rate* null, align 8
@ck_ref = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ck_dpll1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @omap1_select_table_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap1_select_table_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mpu_rate*, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = icmp ne %struct.clk* %7, @virtual_ck_mpu
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %82

12:                                               ; preds = %2
  %13 = load %struct.mpu_rate*, %struct.mpu_rate** @rate_table, align 8
  store %struct.mpu_rate* %13, %struct.mpu_rate** %6, align 8
  br label %14

14:                                               ; preds = %47, %12
  %15 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %16 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %21 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ck_ref, i32 0, i32 0), align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %47

26:                                               ; preds = %19
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ck_dpll1, i32 0, i32 0), align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %34 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ck_dpll1, i32 0, i32 0), align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %47

39:                                               ; preds = %32, %26
  %40 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %41 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %50

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %38, %25
  %48 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %49 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %48, i32 1
  store %struct.mpu_rate* %49, %struct.mpu_rate** %6, align 8
  br label %14

50:                                               ; preds = %45, %14
  %51 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %52 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %82

58:                                               ; preds = %50
  %59 = call i64 (...) @cpu_is_omap730()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %63 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %66 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, 8192
  %69 = call i32 @omap_sram_reprogram_clock(i32 %64, i32 %68)
  br label %78

70:                                               ; preds = %58
  %71 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %72 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %75 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @omap_sram_reprogram_clock(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %70, %61
  %79 = load %struct.mpu_rate*, %struct.mpu_rate** %6, align 8
  %80 = getelementptr inbounds %struct.mpu_rate, %struct.mpu_rate* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ck_dpll1, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %55, %9
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @cpu_is_omap730(...) #1

declare dso_local i32 @omap_sram_reprogram_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
