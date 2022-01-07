; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_cache.c_invalidate_dcache_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_cache.c_invalidate_dcache_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalidate_dcache_region(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0, i32 0), align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = sub i64 %11, 1
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @flush_dcache_line(i8* %23)
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @flush_dcache_line(i8* %35)
  %37 = load i64, i64* %9, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %51, %41
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @invalidate_dcache_line(i8* %49)
  br label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %5, align 8
  br label %43

55:                                               ; preds = %43
  %56 = call i32 (...) @flush_write_buffer()
  ret void
}

declare dso_local i32 @flush_dcache_line(i8*) #1

declare dso_local i32 @invalidate_dcache_line(i8*) #1

declare dso_local i32 @flush_write_buffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
