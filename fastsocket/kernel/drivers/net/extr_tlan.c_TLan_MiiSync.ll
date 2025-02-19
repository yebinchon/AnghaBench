; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_MiiSync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_MiiSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLAN_NET_SIO = common dso_local global i64 0, align 8
@TLAN_DIO_ADR = common dso_local global i64 0, align 8
@TLAN_DIO_DATA = common dso_local global i64 0, align 8
@TLAN_NET_SIO_MTXEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @TLan_MiiSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_MiiSync(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @TLAN_NET_SIO, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @TLAN_DIO_ADR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outw(i64 %5, i64 %8)
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @TLAN_DIO_DATA, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @TLAN_NET_SIO, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* @TLAN_NET_SIO_MTXEN, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @TLan_ClearBit(i32 %15, i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %28, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @TLan_ClearBit(i32 %22, i64 %23)
  %25 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @TLan_SetBit(i32 %25, i64 %26)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %18

31:                                               ; preds = %18
  ret void
}

declare dso_local i32 @outw(i64, i64) #1

declare dso_local i32 @TLan_ClearBit(i32, i64) #1

declare dso_local i32 @TLan_SetBit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
