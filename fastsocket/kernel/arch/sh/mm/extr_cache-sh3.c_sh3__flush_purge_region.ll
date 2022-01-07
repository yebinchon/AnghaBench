; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh3.c_sh3__flush_purge_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh3.c_sh3__flush_purge_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SH_CACHE_ASSOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sh3__flush_purge_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh3__flush_purge_region(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = load i32, i32* @L1_CACHE_BYTES, align 4
  %13 = sub nsw i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = and i64 %11, %15
  store i64 %16, i64* %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  %22 = load i32, i32* @L1_CACHE_BYTES, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = sub i64 %24, 1
  %26 = load i32, i32* @L1_CACHE_BYTES, align 4
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %25, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %49, %2
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = and i64 %37, 4294966272
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0, i32 0), align 8
  %42 = and i64 %40, %41
  %43 = or i64 %39, %42
  %44 = load i64, i64* @SH_CACHE_ASSOC, align 8
  %45 = or i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @ctrl_outl(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @L1_CACHE_BYTES, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %5, align 8
  br label %32

54:                                               ; preds = %32
  ret void
}

declare dso_local i32 @ctrl_outl(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
