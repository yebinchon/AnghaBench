; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2a.c_sh2a__flush_purge_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2a.c_sh2a__flush_purge_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CACHE_PHYSADDR_MASK = common dso_local global i64 0, align 8
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sh2a__flush_purge_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh2a__flush_purge_region(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i32, i32* @L1_CACHE_BYTES, align 4
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = and i64 %10, %14
  store i64 %15, i64* %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = load i32, i32* @L1_CACHE_BYTES, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = sub i64 %23, 1
  %25 = load i32, i32* @L1_CACHE_BYTES, align 4
  %26 = sub nsw i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = and i64 %24, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = call i32 (...) @jump_to_uncached()
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %48, %2
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %43, 2032
  %45 = or i64 %42, %44
  %46 = or i64 %45, 8
  %47 = call i32 @ctrl_outl(i64 %41, i64 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @L1_CACHE_BYTES, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %5, align 8
  br label %34

53:                                               ; preds = %34
  %54 = call i32 (...) @back_to_cached()
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
