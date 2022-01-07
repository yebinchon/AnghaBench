; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_undi_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_undi_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"UNDI producer [%d] rings bd -> 0x%04x, rcq -> 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64, i64)* @bnx2x_prev_unload_undi_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_prev_unload_undi_inc(%struct.bnx2x* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @BNX2X_PREV_UNDI_PROD_ADDR(i64 %11)
  %13 = call i32 @REG_RD(%struct.bnx2x* %10, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @BNX2X_PREV_UNDI_RCQ(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @BNX2X_PREV_UNDI_BD(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @BNX2X_PREV_UNDI_PROD(i64 %22, i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @BNX2X_PREV_UNDI_PROD_ADDR(i64 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @REG_WR(%struct.bnx2x* %25, i32 %27, i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31, i64 %32)
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_PREV_UNDI_PROD_ADDR(i64) #1

declare dso_local i64 @BNX2X_PREV_UNDI_RCQ(i32) #1

declare dso_local i64 @BNX2X_PREV_UNDI_BD(i32) #1

declare dso_local i32 @BNX2X_PREV_UNDI_PROD(i64, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
