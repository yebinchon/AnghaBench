; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_single_arg_2_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/math-emu/extr_fpu_trig.c_single_arg_2_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EXP_OVER = common dso_local global i32 0, align 4
@EX_Invalid = common dso_local global i32 0, align 4
@control_word = common dso_local global i32 0, align 4
@CW_Invalid = common dso_local global i32 0, align 4
@TAG_Special = common dso_local global i32 0, align 4
@CONST_QNaN = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EX_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @single_arg_2_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_arg_2_error(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %70 [
    i32 128, label %7
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @exponent(%struct.TYPE_6__* %8)
  %10 = load i32, i32* @EXP_OVER, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -2147483648
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i1 [ false, %7 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1073741824
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EX_Invalid, align 4
  %31 = call i32 @EXCEPTION(i32 %30)
  %32 = load i32, i32* @control_word, align 4
  %33 = load i32, i32* @CW_Invalid, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 1073741824
  store i32 %40, i32* %38, align 4
  %41 = call i32 (...) @push()
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i32, i32* @TAG_Special, align 4
  %44 = call i32 @FPU_copy_to_reg0(%struct.TYPE_6__* %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %29
  br label %69

46:                                               ; preds = %23, %18
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = call i32 (...) @push()
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = load i32, i32* @TAG_Special, align 4
  %53 = call i32 @FPU_copy_to_reg0(%struct.TYPE_6__* %51, i32 %52)
  br label %68

54:                                               ; preds = %46
  %55 = load i32, i32* @EX_Invalid, align 4
  %56 = call i32 @EXCEPTION(i32 %55)
  %57 = load i32, i32* @control_word, align 4
  %58 = load i32, i32* @CW_Invalid, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* @TAG_Special, align 4
  %63 = call i32 @FPU_copy_to_reg0(%struct.TYPE_6__* @CONST_QNaN, i32 %62)
  %64 = call i32 (...) @push()
  %65 = load i32, i32* @TAG_Special, align 4
  %66 = call i32 @FPU_copy_to_reg0(%struct.TYPE_6__* @CONST_QNaN, i32 %65)
  br label %67

67:                                               ; preds = %61, %54
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %2, %69
  ret void
}

declare dso_local i32 @exponent(%struct.TYPE_6__*) #1

declare dso_local i32 @EXCEPTION(i32) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @FPU_copy_to_reg0(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
