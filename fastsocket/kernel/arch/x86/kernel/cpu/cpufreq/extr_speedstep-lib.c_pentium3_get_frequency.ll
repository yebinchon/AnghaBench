; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-lib.c_pentium3_get_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_speedstep-lib.c_pentium3_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { i32, i32 }

@__const.pentium3_get_frequency.msr_decode_mult = private unnamed_addr constant [15 x %struct.anon] [%struct.anon { i32 30, i32 1 }, %struct.anon { i32 35, i32 5 }, %struct.anon { i32 40, i32 2 }, %struct.anon { i32 45, i32 6 }, %struct.anon { i32 50, i32 0 }, %struct.anon { i32 55, i32 4 }, %struct.anon { i32 60, i32 11 }, %struct.anon { i32 65, i32 15 }, %struct.anon { i32 70, i32 9 }, %struct.anon { i32 75, i32 13 }, %struct.anon { i32 80, i32 10 }, %struct.anon { i32 85, i32 38 }, %struct.anon { i32 90, i32 32 }, %struct.anon { i32 100, i32 43 }, %struct.anon { i32 0, i32 255 }], align 16
@__const.pentium3_get_frequency.msr_decode_fsb = private unnamed_addr constant [4 x %struct.anon.0] [%struct.anon.0 { i32 66, i32 0 }, %struct.anon.0 { i32 100, i32 2 }, %struct.anon.0 { i32 133, i32 1 }, %struct.anon.0 { i32 0, i32 255 }], align 16
@MSR_IA32_EBL_CR_POWERON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"P3 - MSR_IA32_EBL_CR_POWERON: 0x%x 0x%x\0A\00", align 1
@SPEEDSTEP_CPU_PIII_C_EARLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"workaround for early PIIIs\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"speed is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pentium3_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pentium3_get_frequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [15 x %struct.anon], align 16
  %5 = alloca [4 x %struct.anon.0], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = bitcast [15 x %struct.anon]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([15 x %struct.anon]* @__const.pentium3_get_frequency.msr_decode_mult to i8*), i64 120, i1 false)
  %11 = bitcast [4 x %struct.anon.0]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x %struct.anon.0]* @__const.pentium3_get_frequency.msr_decode_fsb to i8*), i64 32, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @MSR_IA32_EBL_CR_POWERON, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @rdmsr(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 786432
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 18
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %40, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %5, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %5, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %102

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SPEEDSTEP_CPU_PIII_C_EARLY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 62914560
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 197132288
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 22
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %73, %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* %4, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* %4, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 255
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %102

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* %4, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %5, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul i32 %81, %86
  %88 = mul i32 %87, 100
  %89 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [15 x %struct.anon], [15 x %struct.anon]* %4, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %5, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul i32 %94, %99
  %101 = mul i32 %100, 100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %76, %72, %39
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #2

declare dso_local i32 @dprintk(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
