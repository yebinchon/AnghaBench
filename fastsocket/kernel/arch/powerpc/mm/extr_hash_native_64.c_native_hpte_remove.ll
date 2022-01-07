; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"    remove(group=%lx)\0A\00", align 1
@HPTES_PER_GROUP = common dso_local global i32 0, align 4
@htab_address = common dso_local global %struct.hash_pte* null, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @native_hpte_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_hpte_remove(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hash_pte*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @DBG_LOW(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = call i32 (...) @mftb()
  %11 = and i32 %10, 7
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %59, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HPTES_PER_GROUP, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %17, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %19, i64 %21
  store %struct.hash_pte* %22, %struct.hash_pte** %4, align 8
  %23 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %24 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @HPTE_V_VALID, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %16
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @HPTE_V_BOLTED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %37 = call i32 @native_lock_hpte(%struct.hash_pte* %36)
  %38 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %39 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @HPTE_V_VALID, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @HPTE_V_BOLTED, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %62

51:                                               ; preds = %45, %35
  %52 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %53 = call i32 @native_unlock_hpte(%struct.hash_pte* %52)
  br label %54

54:                                               ; preds = %51, %30, %16
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 7
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %12

62:                                               ; preds = %50, %12
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @HPTES_PER_GROUP, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i64 -1, i64* %2, align 8
  br label %72

67:                                               ; preds = %62
  %68 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %69 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @DBG_LOW(i8*, i64) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
