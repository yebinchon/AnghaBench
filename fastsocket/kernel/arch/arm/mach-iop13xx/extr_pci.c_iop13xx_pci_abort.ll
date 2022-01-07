; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_pci_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_pci_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Data abort: address = 0x%08lx fsr = 0x%03x PC = 0x%08lx LR = 0x%08lx\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"IOP13XX_XBG_BECSR: %#10x\00", align 1
@IOP13XX_XBG_BECSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"IOP13XX_XBG_BERAR: %#10x\00", align 1
@IOP13XX_XBG_BERAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"IOP13XX_XBG_BERUAR: %#10x\00", align 1
@IOP13XX_XBG_BERUAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop13xx_pci_abort(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i64, ...) @PRINTK(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %8, i32 %9, i32 %12, i32 %15)
  %17 = load i32, i32* @IOP13XX_XBG_BECSR, align 4
  %18 = call i32 @__raw_readl(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = call i32 (i8*, i64, ...) @PRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @IOP13XX_XBG_BERAR, align 4
  %22 = call i32 @__raw_readl(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = call i32 (i8*, i64, ...) @PRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @IOP13XX_XBG_BERUAR, align 4
  %26 = call i32 @__raw_readl(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = call i32 (i8*, i64, ...) @PRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 1024
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %3
  %38 = call i64 (...) @is_atue_occdr_error()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = call i64 (...) @is_atux_occdr_error()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 0, i32* %4, align 4
  br label %45

44:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @PRINTK(i8*, i64, ...) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i64 @is_atue_occdr_error(...) #1

declare dso_local i64 @is_atux_occdr_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
