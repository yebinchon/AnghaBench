; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2a.c_sh2a_flush_icache_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh2a.c_sh2a_flush_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flusher_data = type { i32, i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@CACHE_PHYSADDR_MASK = common dso_local global i64 0, align 8
@SH_CACHE_UPDATED = common dso_local global i64 0, align 8
@CACHE_IC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh2a_flush_icache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh2a_flush_icache_range(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flusher_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.flusher_data*
  store %struct.flusher_data* %12, %struct.flusher_data** %3, align 8
  %13 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %14 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @L1_CACHE_BYTES, align 4
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = load %struct.flusher_data*, %struct.flusher_data** %3, align 8
  %22 = getelementptr inbounds %struct.flusher_data, %struct.flusher_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @L1_CACHE_BYTES, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @L1_CACHE_BYTES, align 4
  %28 = sub nsw i32 %27, 1
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = call i32 (...) @jump_to_uncached()
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %87, %1
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %41, 2032
  store i64 %42, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %77, %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %80

46:                                               ; preds = %43
  %47 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %48 = load i64, i64* %8, align 8
  %49 = or i64 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 11
  %52 = sext i32 %51 to i64
  %53 = or i64 %49, %52
  %54 = call i64 @ctrl_inl(i64 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %60 = and i64 %58, %59
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %46
  %63 = load i64, i64* @SH_CACHE_UPDATED, align 8
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %10, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %69 = load i64, i64* %8, align 8
  %70 = or i64 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 11
  %73 = sext i32 %72 to i64
  %74 = or i64 %70, %73
  %75 = call i32 @ctrl_outl(i64 %67, i64 %74)
  br label %76

76:                                               ; preds = %62, %46
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %43

80:                                               ; preds = %43
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @CACHE_IC_ADDRESS_ARRAY, align 8
  %83 = load i64, i64* %8, align 8
  %84 = or i64 %82, %83
  %85 = or i64 %84, 8
  %86 = call i32 @ctrl_outl(i64 %81, i64 %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @L1_CACHE_BYTES, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %36

92:                                               ; preds = %36
  %93 = call i32 (...) @back_to_cached()
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @local_irq_restore(i64 %94)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @jump_to_uncached(...) #1

declare dso_local i64 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

declare dso_local i32 @back_to_cached(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
