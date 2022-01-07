; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_module.c_apply_r_mips_lo16_rel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_module.c_apply_r_mips_lo16_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_hi16 = type { i64, i64*, %struct.mips_hi16* }
%struct.module = type { i32 }

@mips_hi16_list = common dso_local global %struct.mips_hi16* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"module %s: dangerous R_MIPS_LO16 REL relocation\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i64*, i64)* @apply_r_mips_lo16_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_r_mips_lo16_rel(%struct.module* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mips_hi16*, align 8
  %12 = alloca %struct.mips_hi16*, align 8
  %13 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = and i64 %16, 65535
  %18 = xor i64 %17, 32768
  %19 = sub i64 %18, 32768
  store i64 %19, i64* %10, align 8
  %20 = load %struct.mips_hi16*, %struct.mips_hi16** @mips_hi16_list, align 8
  %21 = icmp ne %struct.mips_hi16* %20, null
  br i1 %21, label %22, label %71

22:                                               ; preds = %3
  %23 = load %struct.mips_hi16*, %struct.mips_hi16** @mips_hi16_list, align 8
  store %struct.mips_hi16* %23, %struct.mips_hi16** %11, align 8
  br label %24

24:                                               ; preds = %34, %22
  %25 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %26 = icmp ne %struct.mips_hi16* %25, null
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %30 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %82

34:                                               ; preds = %27
  %35 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %36 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = and i64 %39, 65535
  %41 = shl i64 %40, 16
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = ashr i64 %47, 16
  %49 = load i64, i64* %9, align 8
  %50 = and i64 %49, 32768
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %48, %53
  %55 = and i64 %54, 65535
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %13, align 8
  %57 = and i64 %56, -65536
  %58 = load i64, i64* %9, align 8
  %59 = or i64 %57, %58
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %62 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  store i64 %60, i64* %63, align 8
  %64 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %65 = getelementptr inbounds %struct.mips_hi16, %struct.mips_hi16* %64, i32 0, i32 2
  %66 = load %struct.mips_hi16*, %struct.mips_hi16** %65, align 8
  store %struct.mips_hi16* %66, %struct.mips_hi16** %12, align 8
  %67 = load %struct.mips_hi16*, %struct.mips_hi16** %11, align 8
  %68 = call i32 @kfree(%struct.mips_hi16* %67)
  %69 = load %struct.mips_hi16*, %struct.mips_hi16** %12, align 8
  store %struct.mips_hi16* %69, %struct.mips_hi16** %11, align 8
  br label %24

70:                                               ; preds = %24
  store %struct.mips_hi16* null, %struct.mips_hi16** @mips_hi16_list, align 8
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %72, %73
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = and i64 %75, -65536
  %77 = load i64, i64* %9, align 8
  %78 = and i64 %77, 65535
  %79 = or i64 %76, %78
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64*, i64** %6, align 8
  store i64 %80, i64* %81, align 8
  store i32 0, i32* %4, align 4
  br label %89

82:                                               ; preds = %33
  %83 = load %struct.module*, %struct.module** %5, align 8
  %84 = getelementptr inbounds %struct.module, %struct.module* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @ENOEXEC, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %82, %71
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @kfree(%struct.mips_hi16*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
