; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_k1_workaround_lpt_lp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_k1_workaround_lpt_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@FEXTNVM6 = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_K1_CONFIG = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_K1_ENABLE = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_REQ_PLL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_k1_workaround_lpt_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @FEXTNVM6, align 4
  %10 = call i32 @er32(i32 %9)
  store i32 %10, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %70

13:                                               ; preds = %2
  %14 = load i32, i32* @STATUS, align 4
  %15 = call i32 @er32(i32 %14)
  %16 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %13
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.1*
  %27 = call i64 %24(%struct.e1000_hw.1* %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %79

32:                                               ; preds = %19
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %35 = call i64 @e1000e_read_kmrn_reg_locked(%struct.e1000_hw* %33, i32 %34, i32* %8)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %61

39:                                               ; preds = %32
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %41 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @E1000_KMRNCTRLSTA_K1_ENABLE, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw* %40, i32 %41, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %61

50:                                               ; preds = %39
  %51 = call i32 @usleep_range(i32 10, i32 20)
  %52 = load i32, i32* @FEXTNVM6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ew32(i32 %52, i32 %55)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw* %57, i32 %58, i32 %59)
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %50, %49, %38
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.0*
  %69 = call i32 %66(%struct.e1000_hw.0* %68)
  br label %77

70:                                               ; preds = %13, %2
  %71 = load i32, i32* @FEXTNVM6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = call i32 @ew32(i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %70, %61
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %30
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000e_read_kmrn_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
