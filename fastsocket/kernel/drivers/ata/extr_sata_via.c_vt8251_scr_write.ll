; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_via.c_vt8251_scr_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_via.c_vt8251_scr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32, i32)* @vt8251_scr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8251_scr_write(%struct.ata_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %8, align 8
  %19 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %20 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 2, %23
  %25 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %26 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %63 [
    i32 128, label %30
    i32 129, label %43
  ]

30:                                               ; preds = %3
  %31 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 21127
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 4
  %40 = add nsw i32 176, %39
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pci_write_config_dword(%struct.pci_dev* %37, i32 %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %66

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 4
  %46 = ashr i32 %45, 1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 1
  %49 = or i32 %46, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 3
  %55 = shl i32 %54, 2
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 164, %59
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @pci_write_config_byte(%struct.pci_dev* %58, i32 %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %66

63:                                               ; preds = %3
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %43, %30
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
