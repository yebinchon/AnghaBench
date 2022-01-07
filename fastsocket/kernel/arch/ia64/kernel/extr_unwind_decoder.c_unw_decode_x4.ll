; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_x4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_x4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_x4(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  %20 = load i8, i8* %18, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %9, align 1
  %24 = call i32 @unw_decode_uleb128(i8** %4)
  store i32 %24, i32* %14, align 4
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 63
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %10, align 1
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 127
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %11, align 1
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 7
  %36 = and i32 %35, 1
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %12, align 1
  %38 = load i8, i8* %9, align 1
  store i8 %38, i8* %13, align 1
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %3
  %44 = load i8, i8* %9, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @X4, align 4
  %49 = load i8, i8* %10, align 1
  %50 = load i32, i32* %14, align 4
  %51 = load i8, i8* %11, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @UNW_DEC_RESTORE_P(i32 %48, i8 zeroext %49, i32 %50, i8 zeroext %51, i8* %52)
  br label %63

54:                                               ; preds = %43, %3
  %55 = load i32, i32* @X4, align 4
  %56 = load i8, i8* %10, align 1
  %57 = load i32, i32* %14, align 4
  %58 = load i8, i8* %11, align 1
  %59 = load i8, i8* %12, align 1
  %60 = load i8, i8* %13, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @UNW_DEC_SPILL_REG_P(i32 %55, i8 zeroext %56, i32 %57, i8 zeroext %58, i8 zeroext %59, i8 zeroext %60, i8* %61)
  br label %63

63:                                               ; preds = %54, %47
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_RESTORE_P(i32, i8 zeroext, i32, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_SPILL_REG_P(i32, i8 zeroext, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
