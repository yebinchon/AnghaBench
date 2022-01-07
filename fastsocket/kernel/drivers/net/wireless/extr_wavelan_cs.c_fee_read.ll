; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_fee_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wavelan_cs.c_fee_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmw_fee_addr = common dso_local global i32 0, align 4
@mmw_fee_ctrl = common dso_local global i32 0, align 4
@MMW_FEE_CTRL_READ = common dso_local global i32 0, align 4
@mmr_fee_data_h = common dso_local global i32 0, align 4
@mmr_fee_data_l = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32)* @fee_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fee_read(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @mmw_fee_addr, align 4
  %15 = call i32 @mmwoff(i32 0, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @mmc_out(i32 %13, i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %25, %4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  %24 = icmp sgt i32 %22, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @mmw_fee_ctrl, align 4
  %28 = call i32 @mmwoff(i32 0, i32 %27)
  %29 = load i32, i32* @MMW_FEE_CTRL_READ, align 4
  %30 = call i32 @mmc_out(i32 %26, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @fee_wait(i32 %31, i32 10, i32 100)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @mmr_fee_data_h, align 4
  %35 = call i32 @mmroff(i32 0, i32 %34)
  %36 = call i32 @mmc_in(i32 %33, i32 %35)
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @mmr_fee_data_l, align 4
  %40 = call i32 @mmroff(i32 0, i32 %39)
  %41 = call i32 @mmc_in(i32 %38, i32 %40)
  %42 = or i32 %37, %41
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 -1
  store i32* %44, i32** %7, align 8
  store i32 %42, i32* %44, align 4
  br label %21

45:                                               ; preds = %21
  ret void
}

declare dso_local i32 @mmc_out(i32, i32, i32) #1

declare dso_local i32 @mmwoff(i32, i32) #1

declare dso_local i32 @fee_wait(i32, i32, i32) #1

declare dso_local i32 @mmc_in(i32, i32) #1

declare dso_local i32 @mmroff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
