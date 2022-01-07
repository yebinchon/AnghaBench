; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fscale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fp_ext = type { i32 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fscale\0A\00", align 1
@FPDATA = common dso_local global %struct.TYPE_2__* null, align 8
@FPCR_ROUND_RZ = common dso_local global i32 0, align 4
@FPSR_EXC_UNFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fscale(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %8 = load i32, i32* @PINSTR, align 4
  %9 = call i32 @dprint(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %11 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %12 = call i32 @fp_dyadic_check(%struct.fp_ext* %10, %struct.fp_ext* %11)
  %13 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %14 = call i64 @IS_INF(%struct.fp_ext* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %18 = call i32 @fp_set_nan(%struct.fp_ext* %17)
  %19 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %19, %struct.fp_ext** %3, align 8
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %22 = call i64 @IS_INF(%struct.fp_ext* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %25, %struct.fp_ext** %3, align 8
  br label %84

26:                                               ; preds = %20
  %27 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %28 = call i64 @IS_ZERO(%struct.fp_ext* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %32 = call i64 @IS_ZERO(%struct.fp_ext* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %26
  %35 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %35, %struct.fp_ext** %3, align 8
  br label %84

36:                                               ; preds = %30
  %37 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %38 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 16396
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %43 = call i32 @fp_set_ovrflw(%struct.fp_ext* %42)
  %44 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %44, %struct.fp_ext** %3, align 8
  br label %84

45:                                               ; preds = %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FPDATA, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @FPCR_ROUND_RZ, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FPDATA, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %53 = call i32 @fp_conv_ext2long(%struct.fp_ext* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FPDATA, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %58 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 32767
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %66 = call i32 @fp_set_ovrflw(%struct.fp_ext* %65)
  br label %82

67:                                               ; preds = %45
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* @FPSR_EXC_UNFL, align 4
  %72 = call i32 @fp_set_sr(i32 %71)
  %73 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 0, %74
  %76 = call i32 @fp_denormalize(%struct.fp_ext* %73, i32 %75)
  br label %81

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %80 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %70
  br label %82

82:                                               ; preds = %81, %64
  %83 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %83, %struct.fp_ext** %3, align 8
  br label %84

84:                                               ; preds = %82, %41, %34, %24, %16
  %85 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %85
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_dyadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_ovrflw(%struct.fp_ext*) #1

declare dso_local i32 @fp_conv_ext2long(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_sr(i32) #1

declare dso_local i32 @fp_denormalize(%struct.fp_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
