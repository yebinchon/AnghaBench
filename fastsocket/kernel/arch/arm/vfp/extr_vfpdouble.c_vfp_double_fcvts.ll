; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fcvts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fcvts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i32, i32 }
%struct.vfp_single = type { i32, i32, i32 }

@VFP_SNAN = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@VFP_DENORMAL = common dso_local global i32 0, align 4
@VFP_INFINITY = common dso_local global i32 0, align 4
@VFP_NAN = common dso_local global i32 0, align 4
@VFP_QNAN = common dso_local global i32 0, align 4
@VFP_SINGLE_SIGNIFICAND_QNAN = common dso_local global i32 0, align 4
@VFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fcvts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_double_fcvts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_fcvts(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_double, align 4
  %11 = alloca %struct.vfp_single, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @vfp_get_double(i32 %14)
  %16 = call i32 @vfp_double_unpack(%struct.vfp_double* %10, i32 %15)
  %17 = call i32 @vfp_double_type(%struct.vfp_double* %10)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @VFP_SNAN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %21, %4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @VFP_DENORMAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @vfp_double_normalise_denormal(%struct.vfp_double* %10)
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vfp_hi64to32jamming(i32 %35)
  %37 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @VFP_INFINITY, align 4
  %40 = load i32, i32* @VFP_NAN, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 0
  store i32 255, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @VFP_QNAN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @VFP_SINGLE_SIGNIFICAND_QNAN, align 4
  %51 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %44
  br label %73

55:                                               ; preds = %30
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @VFP_ZERO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %67

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 896
  %66 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %11, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %60
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @vfp_single_normaliseround(i32 %69, %struct.vfp_single* %11, i32 %70, i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %54
  %74 = call i32 @vfp_single_pack(%struct.vfp_single* %11)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @vfp_put_float(i32 %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @vfp_double_unpack(%struct.vfp_double*, i32) #1

declare dso_local i32 @vfp_get_double(i32) #1

declare dso_local i32 @vfp_double_type(%struct.vfp_double*) #1

declare dso_local i32 @vfp_double_normalise_denormal(%struct.vfp_double*) #1

declare dso_local i32 @vfp_hi64to32jamming(i32) #1

declare dso_local i32 @vfp_single_normaliseround(i32, %struct.vfp_single*, i32, i32, i8*) #1

declare dso_local i32 @vfp_put_float(i32, i32) #1

declare dso_local i32 @vfp_single_pack(%struct.vfp_single*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
