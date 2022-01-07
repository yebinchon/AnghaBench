; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_nortel.c_orinoco_nortel_cor_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_nortel.c_orinoco_nortel_cor_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.orinoco_pci_card* }
%struct.orinoco_pci_card = type { i64, i64 }

@COR_OFFSET = common dso_local global i64 0, align 8
@COR_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*)* @orinoco_nortel_cor_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_nortel_cor_reset(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca %struct.orinoco_pci_card*, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  %4 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %5 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %4, i32 0, i32 0
  %6 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %5, align 8
  store %struct.orinoco_pci_card* %6, %struct.orinoco_pci_card** %3, align 8
  %7 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %8 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 2
  %11 = call i32 @iowrite16(i32 8, i64 %10)
  %12 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %13 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @COR_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread16(i64 %16)
  %18 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %19 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @COR_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite16(i32 128, i64 %22)
  %24 = call i32 @mdelay(i32 1)
  %25 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %26 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @COR_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @iowrite16(i32 0, i64 %29)
  %31 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %32 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @COR_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite16(i32 0, i64 %35)
  %37 = call i32 @mdelay(i32 1)
  %38 = load i32, i32* @COR_VALUE, align 4
  %39 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %40 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @COR_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite16(i32 %38, i64 %43)
  %45 = load i32, i32* @COR_VALUE, align 4
  %46 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %47 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @COR_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite16(i32 %45, i64 %50)
  %52 = call i32 @mdelay(i32 1)
  %53 = load %struct.orinoco_pci_card*, %struct.orinoco_pci_card** %3, align 8
  %54 = getelementptr inbounds %struct.orinoco_pci_card, %struct.orinoco_pci_card* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 2
  %57 = call i32 @iowrite16(i32 552, i64 %56)
  ret i32 0
}

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
