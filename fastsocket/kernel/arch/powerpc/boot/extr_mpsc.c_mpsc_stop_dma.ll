; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_stop_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mpsc.c_mpsc_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpsc_base = common dso_local global i64 0, align 8
@MPSC_CHR_2 = common dso_local global i64 0, align 8
@MPSC_CHR_2_TA = common dso_local global i32 0, align 4
@MPSC_CHR_2_RA = common dso_local global i32 0, align 4
@SDMA_SDCM = common dso_local global i32 0, align 4
@SDMA_SDCM_AR = common dso_local global i32 0, align 4
@SDMA_SDCM_AT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mpsc_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_stop_dma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @mpsc_base, align 8
  %4 = load i64, i64* @MPSC_CHR_2, align 8
  %5 = add nsw i64 %3, %4
  %6 = inttoptr i64 %5 to i32*
  %7 = load i32, i32* @MPSC_CHR_2_TA, align 4
  %8 = load i32, i32* @MPSC_CHR_2_RA, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @out_le32(i32* %6, i32 %9)
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @SDMA_SDCM, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* @SDMA_SDCM_AR, align 4
  %17 = load i32, i32* @SDMA_SDCM_AT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @out_le32(i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @SDMA_SDCM, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = bitcast i8* %24 to i32*
  %26 = call i32 @in_le32(i32* %25)
  %27 = load i32, i32* @SDMA_SDCM_AR, align 4
  %28 = load i32, i32* @SDMA_SDCM_AT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 @udelay(i32 100)
  br label %20

34:                                               ; preds = %20
  ret void
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
