; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fadd_nonnumber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fadd_nonnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32 }

@VFP_INFINITY = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@vfp_double_default_qnan = common dso_local global %struct.vfp_double zeroinitializer, align 4
@VFP_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfp_double*, %struct.vfp_double*, %struct.vfp_double*, i32)* @vfp_double_fadd_nonnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_fadd_nonnumber(%struct.vfp_double* %0, %struct.vfp_double* %1, %struct.vfp_double* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfp_double*, align 8
  %7 = alloca %struct.vfp_double*, align 8
  %8 = alloca %struct.vfp_double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vfp_double* %0, %struct.vfp_double** %6, align 8
  store %struct.vfp_double* %1, %struct.vfp_double** %7, align 8
  store %struct.vfp_double* %2, %struct.vfp_double** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %15 = call i32 @vfp_double_type(%struct.vfp_double* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %17 = call i32 @vfp_double_type(%struct.vfp_double* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @VFP_INFINITY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %26 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %29 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %34, i32* %11, align 4
  store %struct.vfp_double* @vfp_double_default_qnan, %struct.vfp_double** %10, align 8
  br label %37

35:                                               ; preds = %24
  %36 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  store %struct.vfp_double* %36, %struct.vfp_double** %10, align 8
  br label %37

37:                                               ; preds = %35, %33
  br label %57

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @VFP_INFINITY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @VFP_NUMBER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  store %struct.vfp_double* %49, %struct.vfp_double** %10, align 8
  br label %56

50:                                               ; preds = %43, %38
  %51 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %52 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %53 = load %struct.vfp_double*, %struct.vfp_double** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @vfp_propagate_nan(%struct.vfp_double* %51, %struct.vfp_double* %52, %struct.vfp_double* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %63

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %37
  %58 = load %struct.vfp_double*, %struct.vfp_double** %6, align 8
  %59 = load %struct.vfp_double*, %struct.vfp_double** %10, align 8
  %60 = bitcast %struct.vfp_double* %58 to i8*
  %61 = bitcast %struct.vfp_double* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @vfp_double_type(%struct.vfp_double*) #1

declare dso_local i32 @vfp_propagate_nan(%struct.vfp_double*, %struct.vfp_double*, %struct.vfp_double*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
