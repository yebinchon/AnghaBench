; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-h8300.c_mm_outsw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-h8300.c_mm_outsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64)* @mm_outsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_outsw(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i16*
  store i16* %9, i16** %7, align 8
  br label %10

10:                                               ; preds = %19, %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i16*, i16** %7, align 8
  %15 = load i16, i16* %14, align 2
  %16 = call i32 @bswap(i16 zeroext %15)
  %17 = load i64, i64* %4, align 8
  %18 = inttoptr i64 %17 to i32*
  store volatile i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %6, align 8
  %22 = load i16*, i16** %7, align 8
  %23 = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %23, i16** %7, align 8
  br label %10

24:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bswap(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
