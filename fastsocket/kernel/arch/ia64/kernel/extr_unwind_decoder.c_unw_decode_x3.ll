; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_x3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_x3(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  %15 = load i8, i8* %13, align 1
  store i8 %15, i8* %7, align 1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %8, align 1
  %19 = call i32 @unw_decode_uleb128(i8** %4)
  store i32 %19, i32* %11, align 4
  %20 = call i32 @unw_decode_uleb128(i8** %4)
  store i32 %20, i32* %12, align 4
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 63
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %10, align 1
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 127
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %9, align 1
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load i32, i32* @X3, align 4
  %35 = load i8, i8* %10, align 1
  %36 = load i32, i32* %11, align 4
  %37 = load i8, i8* %9, align 1
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @UNW_DEC_SPILL_SPREL_P(i32 %34, i8 zeroext %35, i32 %36, i8 zeroext %37, i32 %38, i8* %39)
  br label %49

41:                                               ; preds = %3
  %42 = load i32, i32* @X3, align 4
  %43 = load i8, i8* %10, align 1
  %44 = load i32, i32* %11, align 4
  %45 = load i8, i8* %9, align 1
  %46 = load i32, i32* %12, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @UNW_DEC_SPILL_PSPREL_P(i32 %42, i8 zeroext %43, i32 %44, i8 zeroext %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_SPILL_SPREL_P(i32, i8 zeroext, i32, i8 zeroext, i32, i8*) #1

declare dso_local i32 @UNW_DEC_SPILL_PSPREL_P(i32, i8 zeroext, i32, i8 zeroext, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
