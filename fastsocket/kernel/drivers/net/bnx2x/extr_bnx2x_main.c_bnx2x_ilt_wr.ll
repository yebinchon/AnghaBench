; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_ilt_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_ilt_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PXP2_REG_RQ_ONCHIP_AT = common dso_local global i32 0, align 4
@PXP2_REG_RQ_ONCHIP_AT_B0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_ilt_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ilt_wr(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = call i64 @CHIP_IS_E1(%struct.bnx2x* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @PXP2_REG_RQ_ONCHIP_AT, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 8
  %16 = add nsw i32 %13, %15
  store i32 %16, i32* %7, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @PXP2_REG_RQ_ONCHIP_AT_B0, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 8
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ONCHIP_ADDR1(i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ONCHIP_ADDR2(i32 %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = call i32 @REG_WR_DMAE(%struct.bnx2x* %29, i32 %30, i32* %31, i32 2)
  ret void
}

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @ONCHIP_ADDR1(i32) #1

declare dso_local i32 @ONCHIP_ADDR2(i32) #1

declare dso_local i32 @REG_WR_DMAE(%struct.bnx2x*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
