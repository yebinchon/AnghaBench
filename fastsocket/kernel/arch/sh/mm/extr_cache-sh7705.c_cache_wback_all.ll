; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh7705.c_cache_wback_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh7705.c_cache_wback_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@SH_CACHE_UPDATED = common dso_local global i32 0, align 4
@SH_CACHE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_wback_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_wback_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 1), align 8
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 2), align 8
  %10 = load i64, i64* %2, align 8
  %11 = shl i64 %10, %9
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %51, %0
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %43, %13
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %2, align 8
  %19 = add i64 %17, %18
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load i32, i32* @SH_CACHE_UPDATED, align 4
  %23 = load i32, i32* @SH_CACHE_VALID, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @ctrl_inl(i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, -1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ctrl_outl(i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %34, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 4), align 8
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %4, align 8
  br label %15

47:                                               ; preds = %15
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 3), align 8
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %1, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %1, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %13, label %55

55:                                               ; preds = %51
  ret void
}

declare dso_local i64 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
