; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_lp3971_ldo_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_lp3971.c_lp3971_ldo_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp3971 = type { i32 }

@LP3971_LDO1 = common dso_local global i32 0, align 4
@LDO_VOL_MIN_IDX = common dso_local global i64 0, align 8
@LDO_VOL_MAX_IDX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LDO_VOL_CONTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @lp3971_ldo_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3971_ldo_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lp3971*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %15 = call %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.lp3971* %15, %struct.lp3971** %8, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %17 = call i32 @rdev_get_id(%struct.regulator_dev* %16)
  %18 = load i32, i32* @LP3971_LDO1, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 1000
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @LDO_VOL_VALUE_MAP(i32 %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* @LDO_VOL_MIN_IDX, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i64, i64* @LDO_VOL_MAX_IDX, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %32
  %43 = load i64, i64* @LDO_VOL_MIN_IDX, align 8
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %57, %42
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @LDO_VOL_MAX_IDX, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %60

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %13, align 8
  br label %44

60:                                               ; preds = %55, %44
  %61 = load i32*, i32** %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %80

70:                                               ; preds = %60
  %71 = load %struct.lp3971*, %struct.lp3971** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @LP3971_LDO_VOL_CONTR_REG(i32 %72)
  %74 = load i32, i32* @LDO_VOL_CONTR_MASK, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @LDO_VOL_CONTR_SHIFT(i32 %75)
  %77 = shl i32 %74, %76
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @lp3971_set_bits(%struct.lp3971* %71, i32 %73, i32 %77, i64 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %70, %67, %39
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.lp3971* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32* @LDO_VOL_VALUE_MAP(i32) #1

declare dso_local i32 @lp3971_set_bits(%struct.lp3971*, i32, i32, i64) #1

declare dso_local i32 @LP3971_LDO_VOL_CONTR_REG(i32) #1

declare dso_local i32 @LDO_VOL_CONTR_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
