; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_qmath.c_qm_log10.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_qmath.c_qm_log10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG2_LOG_TABLE_SIZE = common dso_local global i32 0, align 4
@log_table = common dso_local global i32* null, align 8
@LOG10_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qm_log10(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @qm_norm32(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 30
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @LOG2_LOG_TABLE_SIZE, align 4
  %25 = add nsw i32 2, %24
  %26 = sub nsw i32 32, %25
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @LOG2_LOG_TABLE_SIZE, align 4
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LOG2_LOG_TABLE_SIZE, align 4
  %35 = add nsw i32 2, %34
  %36 = sub nsw i32 32, %35
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %33, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @LOG2_LOG_TABLE_SIZE, align 4
  %42 = add nsw i32 2, %41
  %43 = add nsw i32 %42, 16
  %44 = sub nsw i32 32, %43
  %45 = ashr i32 %40, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %12, align 8
  %47 = load i32*, i32** @log_table, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load i32*, i32** @log_table, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @log_table, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = call i64 @qm_mulu16(i64 %52, i64 %65)
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @qm_add16(i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 0, %72
  %74 = shl i32 %73, 15
  %75 = call i32 @qm_add32(i32 %71, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @qm_norm32(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 16
  %81 = call i32 @qm_shl32(i32 %78, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i64, i64* @LOG10_2, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @qm_muls16(i32 %82, i32 %84)
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 15, %87
  %89 = sub nsw i32 %88, 16
  %90 = add nsw i32 %89, 1
  %91 = load i32*, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  ret void
}

declare dso_local i32 @qm_norm32(i32) #1

declare dso_local i64 @qm_mulu16(i64, i64) #1

declare dso_local i32 @qm_add16(i32, i32) #1

declare dso_local i32 @qm_add32(i32, i32) #1

declare dso_local i32 @qm_shl32(i32, i32) #1

declare dso_local i32 @qm_muls16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
