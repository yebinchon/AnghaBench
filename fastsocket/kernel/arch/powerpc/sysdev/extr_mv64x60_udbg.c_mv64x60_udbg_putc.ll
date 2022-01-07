; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mv64x60_udbg.c_mv64x60_udbg_putc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mv64x60_udbg.c_mv64x60_udbg_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpsc_base = common dso_local global i64 0, align 8
@MPSC_0_CR2_OFFSET = common dso_local global i64 0, align 8
@MPSC_CHR_2_TCS = common dso_local global i32 0, align 4
@MPSC_0_CR1_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @mv64x60_udbg_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64x60_udbg_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @mv64x60_udbg_putc(i8 signext 13)
  br label %7

7:                                                ; preds = %6, %1
  br label %8

8:                                                ; preds = %16, %7
  %9 = load i64, i64* @mpsc_base, align 8
  %10 = load i64, i64* @MPSC_0_CR2_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @in_le32(i64 %11)
  %13 = load i32, i32* @MPSC_CHR_2_TCS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %8

17:                                               ; preds = %8
  %18 = load i64, i64* @mpsc_base, align 8
  %19 = load i64, i64* @MPSC_0_CR1_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i8, i8* %2, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 @out_le32(i64 %20, i32 %22)
  %24 = load i64, i64* @mpsc_base, align 8
  %25 = load i64, i64* @MPSC_0_CR2_OFFSET, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @MPSC_CHR_2_TCS, align 4
  %28 = call i32 @out_le32(i64 %26, i32 %27)
  ret void
}

declare dso_local i32 @in_le32(i64) #1

declare dso_local i32 @out_le32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
