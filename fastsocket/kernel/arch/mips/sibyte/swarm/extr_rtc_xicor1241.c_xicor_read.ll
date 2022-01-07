; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_xicor1241.c_xicor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_SMB_STATUS = common dso_local global i32 0, align 4
@M_SMB_BUSY = common dso_local global i32 0, align 4
@R_SMB_CMD = common dso_local global i32 0, align 4
@R_SMB_DATA = common dso_local global i32 0, align 4
@X1241_CCR_ADDRESS = common dso_local global i32 0, align 4
@V_SMB_TT_WR2BYTE = common dso_local global i32 0, align 4
@R_SMB_START = common dso_local global i32 0, align 4
@V_SMB_TT_RD1BYTE = common dso_local global i32 0, align 4
@M_SMB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xicor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xicor_read(i32 %0) #0 {
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
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 7
  %16 = load i32, i32* @R_SMB_CMD, align 4
  %17 = call i32 @SMB_CSR(i32 %16)
  %18 = call i32 @__raw_writeq(i32 %15, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 255
  %21 = load i32, i32* @R_SMB_DATA, align 4
  %22 = call i32 @SMB_CSR(i32 %21)
  %23 = call i32 @__raw_writeq(i32 %20, i32 %22)
  %24 = load i32, i32* @X1241_CCR_ADDRESS, align 4
  %25 = call i32 @V_SMB_ADDR(i32 %24)
  %26 = load i32, i32* @V_SMB_TT_WR2BYTE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @R_SMB_START, align 4
  %29 = call i32 @SMB_CSR(i32 %28)
  %30 = call i32 @__raw_writeq(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %38, %12
  %32 = load i32, i32* @R_SMB_STATUS, align 4
  %33 = call i32 @SMB_CSR(i32 %32)
  %34 = call i32 @__raw_readq(i32 %33)
  %35 = load i32, i32* @M_SMB_BUSY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %31

39:                                               ; preds = %31
  %40 = load i32, i32* @X1241_CCR_ADDRESS, align 4
  %41 = call i32 @V_SMB_ADDR(i32 %40)
  %42 = load i32, i32* @V_SMB_TT_RD1BYTE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @R_SMB_START, align 4
  %45 = call i32 @SMB_CSR(i32 %44)
  %46 = call i32 @__raw_writeq(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %54, %39
  %48 = load i32, i32* @R_SMB_STATUS, align 4
  %49 = call i32 @SMB_CSR(i32 %48)
  %50 = call i32 @__raw_readq(i32 %49)
  %51 = load i32, i32* @M_SMB_BUSY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %47

55:                                               ; preds = %47
  %56 = load i32, i32* @R_SMB_STATUS, align 4
  %57 = call i32 @SMB_CSR(i32 %56)
  %58 = call i32 @__raw_readq(i32 %57)
  %59 = load i32, i32* @M_SMB_ERROR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @M_SMB_ERROR, align 4
  %64 = load i32, i32* @R_SMB_STATUS, align 4
  %65 = call i32 @SMB_CSR(i32 %64)
  %66 = call i32 @__raw_writeq(i32 %63, i32 %65)
  store i32 -1, i32* %2, align 4
  br label %72

67:                                               ; preds = %55
  %68 = load i32, i32* @R_SMB_DATA, align 4
  %69 = call i32 @SMB_CSR(i32 %68)
  %70 = call i32 @__raw_readq(i32 %69)
  %71 = and i32 %70, 255
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %2, align 4
  ret i32 %73
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
