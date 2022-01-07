; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nfc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nfc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_nand_host = type { i32, i64 }

@NFC_CONFIG1 = common dso_local global i64 0, align 8
@NFC_INT_MSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mxc_nfc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nfc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mxc_nand_host*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mxc_nand_host*
  store %struct.mxc_nand_host* %8, %struct.mxc_nand_host** %5, align 8
  %9 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %10 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFC_CONFIG1, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readw(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @NFC_INT_MSK, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %20 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NFC_CONFIG1, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writew(i32 %18, i64 %23)
  %25 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %5, align 8
  %26 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %28
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
