; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_p6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_p6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_p6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_p6(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 16
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %8, align 1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @P6, align 4
  %22 = load i8, i8* %8, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @UNW_DEC_GR_MEM(i32 %21, i8 zeroext %22, i8* %23)
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @P6, align 4
  %27 = load i8, i8* %8, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @UNW_DEC_FR_MEM(i32 %26, i8 zeroext %27, i8* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

declare dso_local i32 @UNW_DEC_GR_MEM(i32, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_FR_MEM(i32, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
