; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_putc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpsc_base = common dso_local global i64 0, align 8
@MPSC_CHR_2 = common dso_local global i64 0, align 8
@MPSC_CHR_2_TCS = common dso_local global i32 0, align 4
@MPSC_CHR_1 = common dso_local global i64 0, align 8
@chr1 = common dso_local global i8 0, align 1
@chr2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @mpsc_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_putc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  br label %3

3:                                                ; preds = %12, %1
  %4 = load i64, i64* @mpsc_base, align 8
  %5 = load i64, i64* @MPSC_CHR_2, align 8
  %6 = add nsw i64 %4, %5
  %7 = inttoptr i64 %6 to i32*
  %8 = call i32 @in_le32(i32* %7)
  %9 = load i32, i32* @MPSC_CHR_2_TCS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %3

13:                                               ; preds = %3
  %14 = load i64, i64* @mpsc_base, align 8
  %15 = load i64, i64* @MPSC_CHR_1, align 8
  %16 = add nsw i64 %14, %15
  %17 = inttoptr i64 %16 to i32*
  %18 = load i8, i8* @chr1, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = call i32 @out_le32(i32* %17, i32 %22)
  %24 = load i64, i64* @mpsc_base, align 8
  %25 = load i64, i64* @MPSC_CHR_2, align 8
  %26 = add nsw i64 %24, %25
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @chr2, align 4
  %29 = load i32, i32* @MPSC_CHR_2_TCS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @out_le32(i32* %27, i32 %30)
  ret void
}

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
