; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_SMB_STATUS = common dso_local global i32 0, align 4
@M_SMB_BUSY = common dso_local global i32 0, align 4
@R_SMB_CMD = common dso_local global i32 0, align 4
@M41T81_CCR_ADDRESS = common dso_local global i32 0, align 4
@V_SMB_TT_WR1BYTE = common dso_local global i32 0, align 4
@R_SMB_START = common dso_local global i32 0, align 4
@V_SMB_TT_RD1BYTE = common dso_local global i32 0, align 4
@M_SMB_ERROR = common dso_local global i32 0, align 4
@R_SMB_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @m41t81_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t81_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %4

4:                                                ; preds = %11, %1
  %5 = load i32, i32* @R_SMB_STATUS, align 4
  %6 = call i32 @SMB_CSR(i32 %5)
  %7 = call i32 @__raw_readq(i32 %6)
  %8 = load i32, i32* @M_SMB_BUSY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %4

12:                                               ; preds = %4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 255
  %15 = load i32, i32* @R_SMB_CMD, align 4
  %16 = call i32 @SMB_CSR(i32 %15)
  %17 = call i32 @__raw_writeq(i32 %14, i32 %16)
  %18 = load i32, i32* @M41T81_CCR_ADDRESS, align 4
  %19 = call i32 @V_SMB_ADDR(i32 %18)
  %20 = load i32, i32* @V_SMB_TT_WR1BYTE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @R_SMB_START, align 4
  %23 = call i32 @SMB_CSR(i32 %22)
  %24 = call i32 @__raw_writeq(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %32, %12
  %26 = load i32, i32* @R_SMB_STATUS, align 4
  %27 = call i32 @SMB_CSR(i32 %26)
  %28 = call i32 @__raw_readq(i32 %27)
  %29 = load i32, i32* @M_SMB_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %25

33:                                               ; preds = %25
  %34 = load i32, i32* @M41T81_CCR_ADDRESS, align 4
  %35 = call i32 @V_SMB_ADDR(i32 %34)
  %36 = load i32, i32* @V_SMB_TT_RD1BYTE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @R_SMB_START, align 4
  %39 = call i32 @SMB_CSR(i32 %38)
  %40 = call i32 @__raw_writeq(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %48, %33
  %42 = load i32, i32* @R_SMB_STATUS, align 4
  %43 = call i32 @SMB_CSR(i32 %42)
  %44 = call i32 @__raw_readq(i32 %43)
  %45 = load i32, i32* @M_SMB_BUSY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %41

49:                                               ; preds = %41
  %50 = load i32, i32* @R_SMB_STATUS, align 4
  %51 = call i32 @SMB_CSR(i32 %50)
  %52 = call i32 @__raw_readq(i32 %51)
  %53 = load i32, i32* @M_SMB_ERROR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* @M_SMB_ERROR, align 4
  %58 = load i32, i32* @R_SMB_STATUS, align 4
  %59 = call i32 @SMB_CSR(i32 %58)
  %60 = call i32 @__raw_writeq(i32 %57, i32 %59)
  store i32 -1, i32* %2, align 4
  br label %66

61:                                               ; preds = %49
  %62 = load i32, i32* @R_SMB_DATA, align 4
  %63 = call i32 @SMB_CSR(i32 %62)
  %64 = call i32 @__raw_readq(i32 %63)
  %65 = and i32 %64, 255
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @SMB_CSR(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @V_SMB_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
