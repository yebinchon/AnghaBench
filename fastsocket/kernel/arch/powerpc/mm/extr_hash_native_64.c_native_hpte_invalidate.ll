; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64 }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"    invalidate(va=%016lx, hash: %x)\0A\00", align 1
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, i32)* @native_hpte_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_hpte_invalidate(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hash_pte*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %15, i64 %16
  store %struct.hash_pte* %17, %struct.hash_pte** %11, align 8
  %18 = load i64, i64* %14, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @DBG_LOW(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @hpte_encode_v(i64 %23, i32 %24, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.hash_pte*, %struct.hash_pte** %11, align 8
  %28 = call i32 @native_lock_hpte(%struct.hash_pte* %27)
  %29 = load %struct.hash_pte*, %struct.hash_pte** %11, align 8
  %30 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @HPTE_V_COMPARE(i64 %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %5
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @HPTE_V_VALID, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %5
  %42 = load %struct.hash_pte*, %struct.hash_pte** %11, align 8
  %43 = call i32 @native_unlock_hpte(%struct.hash_pte* %42)
  br label %47

44:                                               ; preds = %36
  %45 = load %struct.hash_pte*, %struct.hash_pte** %11, align 8
  %46 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @tlbie(i64 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @local_irq_restore(i64 %53)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @DBG_LOW(i8*, i64, i64) #1

declare dso_local i64 @hpte_encode_v(i64, i32, i32) #1

declare dso_local i32 @native_lock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @HPTE_V_COMPARE(i64, i64) #1

declare dso_local i32 @native_unlock_hpte(%struct.hash_pte*) #1

declare dso_local i32 @tlbie(i64, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
