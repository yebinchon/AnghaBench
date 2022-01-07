; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_lbc.c_fsl_upm_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_lbc.c_fsl_upm_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fsl_upm = type { i32, i32* }

@fsl_lbc_regs = common dso_local global %struct.TYPE_4__* null, align 8
@BR_MSEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BR_PS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_upm_find(i32 %0, %struct.fsl_upm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_upm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fsl_upm* %1, %struct.fsl_upm** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @fsl_lbc_find(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fsl_lbc_regs, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @in_be32(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BR_MSEL, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %41 [
    i32 133, label %26
    i32 132, label %31
    i32 131, label %36
  ]

26:                                               ; preds = %14
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fsl_lbc_regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.fsl_upm*, %struct.fsl_upm** %5, align 8
  %30 = getelementptr inbounds %struct.fsl_upm, %struct.fsl_upm* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  br label %44

31:                                               ; preds = %14
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fsl_lbc_regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.fsl_upm*, %struct.fsl_upm** %5, align 8
  %35 = getelementptr inbounds %struct.fsl_upm, %struct.fsl_upm* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  br label %44

36:                                               ; preds = %14
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fsl_lbc_regs, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.fsl_upm*, %struct.fsl_upm** %5, align 8
  %40 = getelementptr inbounds %struct.fsl_upm, %struct.fsl_upm* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  br label %44

41:                                               ; preds = %14
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %36, %31, %26
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BR_PS, align 4
  %47 = and i32 %45, %46
  switch i32 %47, label %57 [
    i32 128, label %48
    i32 130, label %51
    i32 129, label %54
  ]

48:                                               ; preds = %44
  %49 = load %struct.fsl_upm*, %struct.fsl_upm** %5, align 8
  %50 = getelementptr inbounds %struct.fsl_upm, %struct.fsl_upm* %49, i32 0, i32 0
  store i32 8, i32* %50, align 8
  br label %60

51:                                               ; preds = %44
  %52 = load %struct.fsl_upm*, %struct.fsl_upm** %5, align 8
  %53 = getelementptr inbounds %struct.fsl_upm, %struct.fsl_upm* %52, i32 0, i32 0
  store i32 16, i32* %53, align 8
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.fsl_upm*, %struct.fsl_upm** %5, align 8
  %56 = getelementptr inbounds %struct.fsl_upm, %struct.fsl_upm* %55, i32 0, i32 0
  store i32 32, i32* %56, align 8
  br label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %54, %51, %48
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %41, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @fsl_lbc_find(i32) #1

declare dso_local i32 @in_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
