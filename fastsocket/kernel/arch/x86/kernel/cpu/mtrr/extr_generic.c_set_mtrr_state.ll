; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_generic.c_set_mtrr_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_generic.c_set_mtrr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32* }

@num_var_ranges = common dso_local global i32 0, align 4
@mtrr_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MTRR_CHANGE_MASK_VARIABLE = common dso_local global i64 0, align 8
@MTRR_CHANGE_MASK_FIXED = common dso_local global i64 0, align 8
@deftype_lo = common dso_local global i32 0, align 4
@MTRR_CHANGE_MASK_DEFTYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @set_mtrr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_mtrr_state() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %20, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @num_var_ranges, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 4), align 8
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = call i64 @set_mtrr_var_ranges(i32 %8, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load i64, i64* @MTRR_CHANGE_MASK_VARIABLE, align 8
  %17 = load i64, i64* %1, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %1, align 8
  br label %19

19:                                               ; preds = %15, %7
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %2, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %3

23:                                               ; preds = %3
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 3), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 2), align 8
  %28 = call i64 @set_fixed_ranges(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @MTRR_CHANGE_MASK_FIXED, align 8
  %32 = load i64, i64* %1, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %1, align 8
  br label %34

34:                                               ; preds = %30, %26, %23
  %35 = load i32, i32* @deftype_lo, align 4
  %36 = and i32 %35, 255
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 0), align 8
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @deftype_lo, align 4
  %41 = and i32 %40, 3072
  %42 = ashr i32 %41, 10
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 1), align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39, %34
  %46 = load i32, i32* @deftype_lo, align 4
  %47 = and i32 %46, -3328
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 0), align 8
  %49 = or i32 %47, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 1), align 4
  %51 = shl i32 %50, 10
  %52 = or i32 %49, %51
  store i32 %52, i32* @deftype_lo, align 4
  %53 = load i64, i64* @MTRR_CHANGE_MASK_DEFTYPE, align 8
  %54 = load i64, i64* %1, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %1, align 8
  br label %56

56:                                               ; preds = %45, %39
  %57 = load i64, i64* %1, align 8
  ret i64 %57
}

declare dso_local i64 @set_mtrr_var_ranges(i32, i32*) #1

declare dso_local i64 @set_fixed_ranges(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
