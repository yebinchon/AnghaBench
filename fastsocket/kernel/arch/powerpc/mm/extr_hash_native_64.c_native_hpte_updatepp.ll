; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_updatepp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_updatepp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64, i64 }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"    update(va=%016lx, avpnv=%016lx, hash=%016lx, newpp=%x)\00", align 1
@HPTE_V_AVPN = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" -> miss\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" -> hit\0A\00", align 1
@HPTE_R_PP = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32, i32, i32)* @native_hpte_updatepp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_hpte_updatepp(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hash_pte*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %17, i64 %18
  store %struct.hash_pte* %19, %struct.hash_pte** %13, align 8
  store i32 0, i32* %16, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @hpte_encode_v(i64 %20, i32 %21, i32 %22)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @HPTE_V_AVPN, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27, i64 %28, i64 %29)
  %31 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %32 = call i32 @native_lock_hpte(%struct.hash_pte* %31)
  %33 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %34 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @HPTE_V_COMPARE(i64 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %6
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @HPTE_V_VALID, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %6
  %46 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %16, align 4
  br label %67

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %50 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HPTE_R_PP, align 8
  %53 = load i64, i64* @HPTE_R_N, align 8
  %54 = or i64 %52, %53
  %55 = xor i64 %54, -1
  %56 = and i64 %51, %55
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @HPTE_R_PP, align 8
  %59 = load i64, i64* @HPTE_R_N, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @HPTE_R_C, align 8
  %62 = or i64 %60, %61
  %63 = and i64 %57, %62
  %64 = or i64 %56, %63
  %65 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %66 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %47, %45
  %68 = load %struct.hash_pte*, %struct.hash_pte** %13, align 8
  %69 = call i32 @native_unlock_hpte(%struct.hash_pte* %68)
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @tlbie(i64 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  ret i64 %76
}

declare dso_local i64 @hpte_encode_v(i64, i32, i32) #1

declare dso_local i32 @DBG_LOW(i8*, ...) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @HPTE_V_COMPARE(i64, i64) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @tlbie(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
