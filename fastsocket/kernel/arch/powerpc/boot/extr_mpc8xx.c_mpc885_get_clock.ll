; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpc8xx.c_mpc885_get_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpc8xx.c_mpc885_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"mpc885_get_clock: Couldn't get IMMR base.\0D\0A\00", align 1
@MPC8XX_PLPRCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Warning: PLPRCR[MFI] value of %d out-of-bounds\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc885_get_clock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = call i32* (...) @fsl_get_immr()
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* @MPC8XX_PLPRCR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @in_be32(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 15
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 5, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 1
  %33 = and i32 %32, 15
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 20
  %36 = and i32 %35, 3
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 22
  %39 = and i32 %38, 31
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 27
  %42 = and i32 %41, 31
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %30
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = sdiv i32 %51, %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %48, %30
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = sdiv i32 %58, %60
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32* @fsl_get_immr(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @in_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
