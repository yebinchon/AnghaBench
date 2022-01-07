; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dump_mac_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_mac100.c_mac100_dump_mac_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [131 x i8] c"\09----------------------------------------------\0A\09  MAC100 CSR (base addr = 0x%8x)\0A\09----------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\09control reg (offset 0x%x): 0x%08x\0A\00", align 1
@MAC_CONTROL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"\09addr HI (offset 0x%x): 0x%08x\0A \00", align 1
@MAC_ADDR_HIGH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"\09addr LO (offset 0x%x): 0x%08x\0A\00", align 1
@MAC_ADDR_LOW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"\09multicast hash HI (offset 0x%x): 0x%08x\0A\00", align 1
@MAC_HASH_HIGH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"\09multicast hash LO (offset 0x%x): 0x%08x\0A\00", align 1
@MAC_HASH_LOW = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"\09flow control (offset 0x%x): 0x%08x\0A\00", align 1
@MAC_FLOW_CTRL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"\09VLAN1 tag (offset 0x%x): 0x%08x\0A\00", align 1
@MAC_VLAN1 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"\09VLAN2 tag (offset 0x%x): 0x%08x\0A\00", align 1
@MAC_VLAN2 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"\0A\09MAC management counter registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\09 MMC crtl (offset 0x%x): 0x%08x\0A\00", align 1
@MMC_CONTROL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"\09 MMC High Interrupt (offset 0x%x): 0x%08x\0A\00", align 1
@MMC_HIGH_INTR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [43 x i8] c"\09 MMC Low Interrupt (offset 0x%x): 0x%08x\0A\00", align 1
@MMC_LOW_INTR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"\09 MMC High Interrupt Mask (offset 0x%x): 0x%08x\0A\00", align 1
@MMC_HIGH_INTR_MASK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [48 x i8] c"\09 MMC Low Interrupt Mask (offset 0x%x): 0x%08x\0A\00", align 1
@MMC_LOW_INTR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mac100_dump_mac_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac100_dump_mac_regs(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i64, i64* @MAC_CONTROL, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @MAC_CONTROL, align 8
  %9 = add i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %6, i32 %10)
  %12 = load i64, i64* @MAC_ADDR_HIGH, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @MAC_ADDR_HIGH, align 8
  %15 = add i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %12, i32 %16)
  %18 = load i64, i64* @MAC_ADDR_LOW, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @MAC_ADDR_LOW, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %18, i32 %22)
  %24 = load i64, i64* @MAC_HASH_HIGH, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @MAC_HASH_HIGH, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  %29 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %24, i32 %28)
  %30 = load i64, i64* @MAC_HASH_LOW, align 8
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @MAC_HASH_LOW, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %30, i32 %34)
  %36 = load i64, i64* @MAC_FLOW_CTRL, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @MAC_FLOW_CTRL, align 8
  %39 = add i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  %41 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %36, i32 %40)
  %42 = load i64, i64* @MAC_VLAN1, align 8
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @MAC_VLAN1, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  %47 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %42, i32 %46)
  %48 = load i64, i64* @MAC_VLAN2, align 8
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @MAC_VLAN2, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  %53 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %48, i32 %52)
  %54 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %55 = load i64, i64* @MMC_CONTROL, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @MMC_CONTROL, align 8
  %58 = add i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  %60 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i64 %55, i32 %59)
  %61 = load i64, i64* @MMC_HIGH_INTR, align 8
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @MMC_HIGH_INTR, align 8
  %64 = add i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i64 %61, i32 %65)
  %67 = load i64, i64* @MMC_LOW_INTR, align 8
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* @MMC_LOW_INTR, align 8
  %70 = add i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i64 %67, i32 %71)
  %73 = load i64, i64* @MMC_HIGH_INTR_MASK, align 8
  %74 = load i64, i64* %2, align 8
  %75 = load i64, i64* @MMC_HIGH_INTR_MASK, align 8
  %76 = add i64 %74, %75
  %77 = call i32 @readl(i64 %76)
  %78 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i64 %73, i32 %77)
  %79 = load i64, i64* @MMC_LOW_INTR_MASK, align 8
  %80 = load i64, i64* %2, align 8
  %81 = load i64, i64* @MMC_LOW_INTR_MASK, align 8
  %82 = add i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  %84 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i64 %79, i32 %83)
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
