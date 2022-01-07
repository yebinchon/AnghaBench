; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_multiply_accumulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/vfp/extr_vfpsingle.c_vfp_single_multiply_accumulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_single = type { i64, i8*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"VFP: s%u = %08x\0A\00", align 1
@NEG_MULTIPLY = common dso_local global i32 0, align 4
@NEG_SUBTRACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*)* @vfp_single_multiply_accumulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_single_multiply_accumulate(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vfp_single, align 8
  %14 = alloca %struct.vfp_single, align 8
  %15 = alloca %struct.vfp_single, align 8
  %16 = alloca %struct.vfp_single, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @vfp_get_float(i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %18, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %18, align 4
  %25 = call i32 @vfp_single_unpack(%struct.vfp_single* %15, i32 %24)
  %26 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %15, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %15, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %15)
  br label %35

35:                                               ; preds = %33, %29, %6
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @vfp_single_unpack(%struct.vfp_single* %16, i32 %36)
  %38 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %16, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %16, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @vfp_single_normalise_denormal(%struct.vfp_single* %16)
  br label %47

47:                                               ; preds = %45, %41, %35
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @vfp_single_multiply(%struct.vfp_single* %14, %struct.vfp_single* %15, %struct.vfp_single* %16, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @NEG_MULTIPLY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %14, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @vfp_sign_negate(i8* %56)
  %58 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %14, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @vfp_get_float(i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @vfp_single_unpack(%struct.vfp_single* %15, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @NEG_SUBTRACT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %15, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @vfp_sign_negate(i8* %73)
  %75 = getelementptr inbounds %struct.vfp_single, %struct.vfp_single* %15, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %59
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @vfp_single_add(%struct.vfp_single* %13, %struct.vfp_single* %15, %struct.vfp_single* %14, i32 %77)
  %79 = load i32, i32* %17, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @vfp_single_normaliseround(i32 %81, %struct.vfp_single* %13, i32 %82, i32 %83, i8* %84)
  ret i32 %85
}

declare dso_local i32 @vfp_get_float(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @vfp_single_unpack(%struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_normalise_denormal(%struct.vfp_single*) #1

declare dso_local i32 @vfp_single_multiply(%struct.vfp_single*, %struct.vfp_single*, %struct.vfp_single*, i32) #1

declare dso_local i8* @vfp_sign_negate(i8*) #1

declare dso_local i32 @vfp_single_add(%struct.vfp_single*, %struct.vfp_single*, %struct.vfp_single*, i32) #1

declare dso_local i32 @vfp_single_normaliseround(i32, %struct.vfp_single*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
