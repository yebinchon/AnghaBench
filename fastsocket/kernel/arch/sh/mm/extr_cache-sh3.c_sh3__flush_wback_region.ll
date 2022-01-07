; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh3.c_sh3__flush_wback_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh3.c_sh3__flush_wback_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CACHE_PHYSADDR_MASK = common dso_local global i64 0, align 8
@SH_CACHE_UPDATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sh3__flush_wback_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh3__flush_wback_region(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i32, i32* @L1_CACHE_BYTES, align 4
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = and i64 %15, %19
  store i64 %20, i64* %7, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = load i32, i32* @L1_CACHE_BYTES, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %25, %27
  %29 = sub i64 %28, 1
  %30 = load i32, i32* @L1_CACHE_BYTES, align 4
  %31 = sub nsw i32 %30, 1
  %32 = xor i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = and i64 %29, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %85, %2
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %36
  %41 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  store i64 %41, i64* %10, align 8
  store i64 0, i64* %6, align 8
  br label %42

42:                                               ; preds = %81, %40
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @__pa(i64 %47)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 1), align 8
  %52 = and i64 %50, %51
  %53 = or i64 %49, %52
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @local_irq_save(i64 %54)
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @ctrl_inl(i64 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %60 = and i64 %58, %59
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* @CACHE_PHYSADDR_MASK, align 8
  %63 = and i64 %61, %62
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %46
  %66 = load i64, i64* @SH_CACHE_UPDATED, align 8
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %11, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @ctrl_outl(i64 %70, i64 %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @local_irq_restore(i64 %73)
  br label %84

75:                                               ; preds = %46
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @local_irq_restore(i64 %76)
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 2), align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %42

84:                                               ; preds = %65, %42
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* @L1_CACHE_BYTES, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %5, align 8
  br label %36

90:                                               ; preds = %36
  ret void
}

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
