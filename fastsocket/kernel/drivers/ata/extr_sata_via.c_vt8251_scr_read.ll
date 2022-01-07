; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_via.c_vt8251_scr_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_via.c_vt8251_scr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@vt8251_scr_read.ipm_tbl = internal constant [4 x i32] [i32 1, i32 2, i32 6, i32 0], align 16
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32, i32*)* @vt8251_scr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8251_scr_read(%struct.ata_link* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %8, align 8
  %20 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %21 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 2, %24
  %26 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %27 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %89 [
    i32 128, label %31
    i32 129, label %58
    i32 130, label %70
  ]

31:                                               ; preds = %3
  %32 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 160, %33
  %35 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i32 %34, i32* %11)
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 3
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 16
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, 32
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, 16
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 2
  %52 = and i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* @vt8251_scr_read.ipm_tbl, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %92

58:                                               ; preds = %3
  %59 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 21127
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 4
  %68 = add nsw i32 176, %67
  %69 = call i32 @pci_read_config_dword(%struct.pci_dev* %65, i32 %68, i32* %10)
  br label %92

70:                                               ; preds = %3
  %71 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 164, %72
  %74 = call i32 @pci_read_config_byte(%struct.pci_dev* %71, i32 %73, i32* %11)
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 2
  %77 = shl i32 %76, 1
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 1
  %80 = or i32 %77, %79
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = ashr i32 %83, 2
  %85 = and i32 %84, 3
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %92

89:                                               ; preds = %3
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %95

92:                                               ; preds = %70, %58, %49
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
