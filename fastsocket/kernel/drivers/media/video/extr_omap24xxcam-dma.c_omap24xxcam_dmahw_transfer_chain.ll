; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dmahw_transfer_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam-dma.c_omap24xxcam_dmahw_transfer_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CAMDMA_CHANNELS = common dso_local global i32 0, align 4
@CAMDMA_CLNK_CTRL_ENABLE_LNK = common dso_local global i32 0, align 4
@CAMDMA_CCR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @omap24xxcam_dmahw_transfer_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_dmahw_transfer_chain(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CAMDMA_CLNK_CTRL(i32 %19)
  %21 = load i32, i32* @CAMDMA_CLNK_CTRL_ENABLE_LNK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @omap24xxcam_reg_out(i64 %18, i32 %20, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %52, %17
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @CAMDMA_CCR(i32 %32)
  %34 = call i32 @omap24xxcam_reg_in(i64 %31, i32 %33)
  %35 = load i32, i32* @CAMDMA_CCR_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %53

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @omap24xxcam_dmahw_transfer_start(i64 %44, i32 %45)
  br label %53

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @NUM_CAMDMA_CHANNELS, align 4
  %51 = srem i32 %49, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47
  br label %30

53:                                               ; preds = %43, %30
  ret void
}

declare dso_local i32 @omap24xxcam_reg_out(i64, i32, i32) #1

declare dso_local i32 @CAMDMA_CLNK_CTRL(i32) #1

declare dso_local i32 @omap24xxcam_reg_in(i64, i32) #1

declare dso_local i32 @CAMDMA_CCR(i32) #1

declare dso_local i32 @omap24xxcam_dmahw_transfer_start(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
