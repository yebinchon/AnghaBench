; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_gmac.c_gmac_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_gmac.c_gmac_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [135 x i8] c"\09----------------------------------------------\0A\09  GMAC registers (base addr = 0x%8x)\0A\09----------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\09Reg No. %d (offset 0x%x): 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gmac_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_dump_regs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 55
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = call i32 @readl(i64 %19)
  %21 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
