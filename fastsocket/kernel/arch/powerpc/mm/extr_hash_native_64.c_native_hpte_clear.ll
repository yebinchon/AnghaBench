; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64 }

@htab_address = common dso_local global %struct.hash_pte* null, align 8
@htab_hash_mask = common dso_local global i32 0, align 4
@native_tlbie_lock = common dso_local global i32 0, align 4
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @native_hpte_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_hpte_clear() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hash_pte*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  store %struct.hash_pte* %10, %struct.hash_pte** %4, align 8
  %11 = load i32, i32* @htab_hash_mask, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = call i32 @spin_lock(i32* @native_tlbie_lock)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @HPTES_PER_GROUP, align 8
  %19 = mul i64 %17, %18
  store i64 %19, i64* %2, align 8
  store i64 0, i64* %1, align 8
  br label %20

20:                                               ; preds = %43, %0
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %26 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @HPTE_V_VALID, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @hpte_decode(%struct.hash_pte* %33, i64 %34, i32* %8, i32* %9, i64* %6)
  %36 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %37 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @__tlbie(i64 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %1, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %1, align 8
  %46 = load %struct.hash_pte*, %struct.hash_pte** %4, align 8
  %47 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %46, i32 1
  store %struct.hash_pte* %47, %struct.hash_pte** %4, align 8
  br label %20

48:                                               ; preds = %20
  call void asm sideeffect "eieio; tlbsync; ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %49 = call i32 @spin_unlock(i32* @native_tlbie_lock)
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hpte_decode(%struct.hash_pte*, i64, i32*, i32*, i64*) #1

declare dso_local i32 @__tlbie(i64, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1145}
