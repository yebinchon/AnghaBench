; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpsc_base = common dso_local global i64 0, align 8
@MPSC_CHR_1 = common dso_local global i64 0, align 8
@chr1 = common dso_local global i32 0, align 4
@MPSC_CHR_2 = common dso_local global i64 0, align 8
@MPSC_CHR_2_TA = common dso_local global i32 0, align 4
@MPSC_CHR_2_TCS = common dso_local global i32 0, align 4
@MPSC_CHR_2_RA = common dso_local global i32 0, align 4
@MPSC_CHR_2_CRD = common dso_local global i32 0, align 4
@MPSC_CHR_2_EH = common dso_local global i32 0, align 4
@chr2 = common dso_local global i32 0, align 4
@MPSC_CHR_4 = common dso_local global i64 0, align 8
@MPSC_CHR_4_Z = common dso_local global i32 0, align 4
@MPSC_CHR_5 = common dso_local global i64 0, align 8
@MPSC_CHR_5_CTL1_INTR = common dso_local global i32 0, align 4
@MPSC_CHR_5_CTL1_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mpsc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_open() #0 {
  %1 = load i64, i64* @mpsc_base, align 8
  %2 = load i64, i64* @MPSC_CHR_1, align 8
  %3 = add nsw i64 %1, %2
  %4 = inttoptr i64 %3 to i32*
  %5 = call i32 @in_le32(i32* %4)
  %6 = and i32 %5, 16711680
  store i32 %6, i32* @chr1, align 4
  %7 = load i64, i64* @mpsc_base, align 8
  %8 = load i64, i64* @MPSC_CHR_2, align 8
  %9 = add nsw i64 %7, %8
  %10 = inttoptr i64 %9 to i32*
  %11 = call i32 @in_le32(i32* %10)
  %12 = load i32, i32* @MPSC_CHR_2_TA, align 4
  %13 = load i32, i32* @MPSC_CHR_2_TCS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MPSC_CHR_2_RA, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MPSC_CHR_2_CRD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MPSC_CHR_2_EH, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %11, %21
  store i32 %22, i32* @chr2, align 4
  %23 = load i64, i64* @mpsc_base, align 8
  %24 = load i64, i64* @MPSC_CHR_4, align 8
  %25 = add nsw i64 %23, %24
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* @MPSC_CHR_4_Z, align 4
  %28 = call i32 @out_le32(i32* %26, i32 %27)
  %29 = load i64, i64* @mpsc_base, align 8
  %30 = load i64, i64* @MPSC_CHR_5, align 8
  %31 = add nsw i64 %29, %30
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* @MPSC_CHR_5_CTL1_INTR, align 4
  %34 = load i32, i32* @MPSC_CHR_5_CTL1_VALID, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @out_le32(i32* %32, i32 %35)
  %37 = load i64, i64* @mpsc_base, align 8
  %38 = load i64, i64* @MPSC_CHR_2, align 8
  %39 = add nsw i64 %37, %38
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* @chr2, align 4
  %42 = load i32, i32* @MPSC_CHR_2_EH, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @out_le32(i32* %40, i32 %43)
  ret i32 0
}

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
