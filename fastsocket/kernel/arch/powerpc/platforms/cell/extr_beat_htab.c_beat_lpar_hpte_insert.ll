; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_lpar_hpte_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_htab.c_beat_lpar_hpte_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"hpte_insert(group=%lx, va=%016lx, pa=%016lx, rflags=%lx, vflags=%lx, psize=%d)\0A\00", align 1
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@HPTE_V_VALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c" hpte_v=%016lx, hpte_r=%016lx\0A\00", align 1
@_PAGE_NO_CACHE = common dso_local global i64 0, align 8
@_PAGE_COHERENT = common dso_local global i64 0, align 8
@beat_htab_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" full\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" lpar err %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" -> slot: %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i32, i32)* @beat_lpar_hpte_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @beat_lpar_hpte_insert(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  store i64 -1, i64* %8, align 8
  br label %120

25:                                               ; preds = %7
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @HPTE_V_BOLTED, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  %42 = call i64 @hpte_encode_v(i64 %39, i32 %40, i32 %41)
  %43 = load i64, i64* %13, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @HPTE_V_VALID, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @hpte_encode_r(i64 %47, i32 %48)
  %50 = load i64, i64* %12, align 8
  %51 = or i64 %49, %50
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @HPTE_V_BOLTED, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %38
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* %18, align 8
  %59 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %56, %38
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @_PAGE_NO_CACHE, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i64, i64* @_PAGE_COHERENT, align 8
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %18, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %18, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = call i32 @spin_lock(i32* @beat_htab_lock)
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @beat_read_mask(i64 %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @HPTE_V_BOLTED, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = call i32 @spin_unlock(i32* @beat_htab_lock)
  store i64 -1, i64* %8, align 8
  br label %120

85:                                               ; preds = %70
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %16, align 8
  %88 = shl i64 %87, 48
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i64 @beat_insert_htab_entry(i32 0, i64 %86, i64 %88, i64 %89, i64 %90, i64* %19)
  store i64 %91, i64* %16, align 8
  %92 = call i32 @spin_unlock(i32* @beat_htab_lock)
  %93 = load i64, i64* %16, align 8
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @HPTE_V_BOLTED, align 8
  %101 = and i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %16, align 8
  %105 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %103, %98
  store i64 -2, i64* %8, align 8
  br label %120

107:                                              ; preds = %85
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* @HPTE_V_BOLTED, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %19, align 8
  %114 = call i32 (i8*, ...) @DBG_LOW(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i64, i64* %19, align 8
  %117 = load i64, i64* %9, align 8
  %118 = xor i64 %116, %117
  %119 = and i64 %118, 15
  store i64 %119, i64* %8, align 8
  br label %120

120:                                              ; preds = %115, %106, %83, %24
  %121 = load i64, i64* %8, align 8
  ret i64 %121
}

declare dso_local i32 @DBG_LOW(i8*, ...) #1

declare dso_local i64 @hpte_encode_v(i64, i32, i32) #1

declare dso_local i64 @hpte_encode_r(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @beat_read_mask(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @beat_insert_htab_entry(i32, i64, i64, i64, i64, i64*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
