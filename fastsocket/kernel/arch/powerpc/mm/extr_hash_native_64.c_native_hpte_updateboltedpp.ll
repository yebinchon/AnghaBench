; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_updateboltedpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_native_hpte_updateboltedpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_pte = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"could not find page to bolt\0A\00", align 1
@htab_address = common dso_local global %struct.hash_pte* null, align 8
@HPTE_R_PP = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32)* @native_hpte_updateboltedpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_hpte_updateboltedpp(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hash_pte*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @get_kernel_vsid(i64 %13, i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @hpt_va(i64 %16, i64 %17, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @native_hpte_find(i64 %20, i32 %21, i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %4
  %29 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %29, i64 %30
  store %struct.hash_pte* %31, %struct.hash_pte** %12, align 8
  %32 = load %struct.hash_pte*, %struct.hash_pte** %12, align 8
  %33 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HPTE_R_PP, align 8
  %36 = load i64, i64* @HPTE_R_N, align 8
  %37 = or i64 %35, %36
  %38 = xor i64 %37, -1
  %39 = and i64 %34, %38
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @HPTE_R_PP, align 8
  %42 = load i64, i64* @HPTE_R_N, align 8
  %43 = or i64 %41, %42
  %44 = and i64 %40, %43
  %45 = or i64 %39, %44
  %46 = load %struct.hash_pte*, %struct.hash_pte** %12, align 8
  %47 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tlbie(i64 %48, i32 %49, i32 %50, i32 0)
  ret void
}

declare dso_local i64 @get_kernel_vsid(i64, i32) #1

declare dso_local i64 @hpt_va(i64, i64, i32) #1

declare dso_local i64 @native_hpte_find(i64, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @tlbie(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
