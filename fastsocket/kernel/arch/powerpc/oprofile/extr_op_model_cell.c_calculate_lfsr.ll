; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_calculate_lfsr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_calculate_lfsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V2_16 = common dso_local global i32 0, align 4
@V2_19 = common dso_local global i32 0, align 4
@V2_22 = common dso_local global i32 0, align 4
@ENTRIES = common dso_local global i32 0, align 4
@initial_lfsr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calculate_lfsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_lfsr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = ashr i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %64

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @V2_16, align 4
  %11 = sub nsw i32 %9, %10
  %12 = ashr i32 %11, 19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @V2_16, align 4
  %17 = sub nsw i32 %15, %16
  %18 = ashr i32 %17, 12
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @V2_16, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @V2_19, align 4
  %25 = sub nsw i32 %23, %24
  %26 = ashr i32 %25, 22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @V2_16, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* @V2_19, align 4
  %33 = sub nsw i32 %31, %32
  %34 = ashr i32 %33, 15
  %35 = add nsw i32 %34, 1
  %36 = add nsw i32 %35, 128
  store i32 %36, i32* %3, align 4
  br label %62

37:                                               ; preds = %20
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @V2_16, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* @V2_19, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* @V2_22, align 4
  %44 = sub nsw i32 %42, %43
  %45 = ashr i32 %44, 24
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @V2_16, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* @V2_19, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* @V2_22, align 4
  %54 = sub nsw i32 %52, %53
  %55 = ashr i32 %54, 18
  %56 = add nsw i32 %55, 1
  %57 = add nsw i32 %56, 256
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %37
  %59 = load i32, i32* @ENTRIES, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %47
  br label %62

62:                                               ; preds = %61, %28
  br label %63

63:                                               ; preds = %62, %14
  br label %64

64:                                               ; preds = %63, %7
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ENTRIES, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68, %64
  %72 = load i32, i32* @ENTRIES, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** @initial_lfsr, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
