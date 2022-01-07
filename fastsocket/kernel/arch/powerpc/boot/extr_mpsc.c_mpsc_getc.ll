; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_getc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPSC_INTR_CAUSE_RCC = common dso_local global i32 0, align 4
@mpscintr_base = common dso_local global i64 0, align 8
@MPSC_INTR_CAUSE = common dso_local global i64 0, align 8
@mpsc_base = common dso_local global i64 0, align 8
@MPSC_CHR_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @mpsc_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mpsc_getc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %9, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MPSC_INTR_CAUSE_RCC, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i64, i64* @mpscintr_base, align 8
  %11 = load i64, i64* @MPSC_INTR_CAUSE, align 8
  %12 = add nsw i64 %10, %11
  %13 = inttoptr i64 %12 to i32*
  %14 = call i32 @in_le32(i32* %13)
  store i32 %14, i32* %1, align 4
  br label %3

15:                                               ; preds = %3
  %16 = load i64, i64* @mpsc_base, align 8
  %17 = load i64, i64* @MPSC_CHR_10, align 8
  %18 = add nsw i64 %16, %17
  %19 = add nsw i64 %18, 2
  %20 = inttoptr i64 %19 to i32*
  %21 = call zeroext i8 @in_8(i32* %20)
  store i8 %21, i8* %2, align 1
  %22 = load i64, i64* @mpsc_base, align 8
  %23 = load i64, i64* @MPSC_CHR_10, align 8
  %24 = add nsw i64 %22, %23
  %25 = add nsw i64 %24, 2
  %26 = inttoptr i64 %25 to i32*
  %27 = load i8, i8* %2, align 1
  %28 = call i32 @out_8(i32* %26, i8 zeroext %27)
  %29 = load i64, i64* @mpscintr_base, align 8
  %30 = load i64, i64* @MPSC_INTR_CAUSE, align 8
  %31 = add nsw i64 %29, %30
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @MPSC_INTR_CAUSE_RCC, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @out_le32(i32* %32, i32 %36)
  %38 = load i8, i8* %2, align 1
  ret i8 %38
}

declare dso_local i32 @in_le32(i32*) #1

declare dso_local zeroext i8 @in_8(i32*) #1

declare dso_local i32 @out_8(i32*, i8 zeroext) #1

declare dso_local i32 @out_le32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
