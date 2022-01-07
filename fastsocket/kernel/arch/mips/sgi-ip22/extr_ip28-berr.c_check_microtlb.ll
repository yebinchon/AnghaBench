; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip28-berr.c_check_microtlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip28-berr.c_check_microtlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sgimc = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_err_addr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @check_microtlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_microtlb(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = and i64 %12, 2147483647
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = lshr i64 %18, 21
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 1
  %22 = ashr i32 %21, 22
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 14, i32 12
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 6
  %40 = shl i32 %39, 12
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = lshr i64 %42, %44
  %46 = and i64 %45, 511
  %47 = mul i64 8, %46
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @addr_is_ram(i64 %50, i32 8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %32
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @PHYS_TO_XKSEG_UNCACHED(i64 %54)
  %56 = inttoptr i64 %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  %59 = and i64 %58, 63
  %60 = shl i64 %59, 6
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %61, %65
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* @cpu_err_addr, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %32
  br label %74

74:                                               ; preds = %73, %25
  br label %75

75:                                               ; preds = %74, %17, %3
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @addr_is_ram(i64, i32) #1

declare dso_local i64 @PHYS_TO_XKSEG_UNCACHED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
