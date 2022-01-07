; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c___tlbiel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c___tlbiel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @__tlbiel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tlbiel(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = and i64 %8, 281474976710655
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %20 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, -4096
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %4, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  call void asm sideeffect ".long 0x7c000224 $| ($0 << 11) $| (0 << 21)", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %19) #1, !srcloc !2
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = shl i64 1, %32
  %34 = sub i64 %33, 1
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %4, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 12
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %4, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = or i64 %48, 1
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  call void asm sideeffect ".long 0x7c000224 $| ($0 << 11) $| (1 << 21)", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %50) #1, !srcloc !3
  br label %51

51:                                               ; preds = %20, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 491}
!3 = !{i32 743}
