; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_jmicron.c_jmicron_pre_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_jmicron.c_jmicron_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i8* null, align 8
@ATA_CBL_PATA80 = common dso_local global i8* null, align 8
@ATA_CBL_SATA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @jmicron_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmicron_pre_reset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 0
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %6, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pci_dev* @to_pci_dev(i32 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %7, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 4, %24
  %26 = shl i32 1, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %30, i32 64, i32* %8)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %117

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 8388608
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 128, i32* %44, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 130, i32* %45, align 4
  br label %49

46:                                               ; preds = %39
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 128, i32* %47, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 128, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %50, i32 128, i32* %9)
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 16777216
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 129, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 4194304
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = xor i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %113 [
    i32 130, label %69
    i32 129, label %89
    i32 128, label %109
  ]

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %117

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** @ATA_CBL_PATA40, align 8
  %82 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %83 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %88

84:                                               ; preds = %76
  %85 = load i8*, i8** @ATA_CBL_PATA80, align 8
  %86 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %113

89:                                               ; preds = %64
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 2097152
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %117

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 524288
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8*, i8** @ATA_CBL_PATA40, align 8
  %102 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %103 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %108

104:                                              ; preds = %96
  %105 = load i8*, i8** @ATA_CBL_PATA80, align 8
  %106 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %107 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %113

109:                                              ; preds = %64
  %110 = load i8*, i8** @ATA_CBL_SATA, align 8
  %111 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %112 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %64, %109, %108, %88
  %114 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @ata_sff_prereset(%struct.ata_link* %114, i64 %115)
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %93, %73, %36
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ata_sff_prereset(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
