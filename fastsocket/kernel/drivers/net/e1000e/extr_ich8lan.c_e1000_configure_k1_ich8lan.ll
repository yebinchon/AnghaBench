; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_configure_k1_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_configure_k1_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_KMRNCTRLSTA_K1_CONFIG = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_K1_ENABLE = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SPD_BYPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_configure_k1_ich8lan(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %13 = call i64 @e1000e_read_kmrn_reg_locked(%struct.e1000_hw* %11, i32 %12, i32* %10)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %3, align 8
  br label %72

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @E1000_KMRNCTRLSTA_K1_ENABLE, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @E1000_KMRNCTRLSTA_K1_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw* %31, i32 %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %72

39:                                               ; preds = %30
  %40 = call i32 @usleep_range(i32 20, i32 40)
  %41 = load i32, i32* @CTRL_EXT, align 4
  %42 = call i32 @er32(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @CTRL, align 4
  %44 = call i32 @er32(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %47 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @CTRL, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ew32(i32 %54, i32 %55)
  %57 = load i32, i32* @CTRL_EXT, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @E1000_CTRL_EXT_SPD_BYPS, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @ew32(i32 %57, i32 %60)
  %62 = call i32 (...) @e1e_flush()
  %63 = call i32 @usleep_range(i32 20, i32 40)
  %64 = load i32, i32* @CTRL, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ew32(i32 %64, i32 %65)
  %67 = load i32, i32* @CTRL_EXT, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ew32(i32 %67, i32 %68)
  %70 = call i32 (...) @e1e_flush()
  %71 = call i32 @usleep_range(i32 20, i32 40)
  store i64 0, i64* %3, align 8
  br label %72

72:                                               ; preds = %39, %37, %16
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i64 @e1000e_read_kmrn_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
