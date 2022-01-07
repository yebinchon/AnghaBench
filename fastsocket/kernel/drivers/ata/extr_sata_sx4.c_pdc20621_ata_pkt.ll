; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sx4.c_pdc20621_ata_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sx4.c_pdc20621_ata_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i64, i32, i32 }

@PDC_20621_DIMM_BASE = common dso_local global i32 0, align 4
@PDC_DIMM_WINDOW_STEP = common dso_local global i32 0, align 4
@PDC_DIMM_APKT_PRD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ENTER, dimm_sg == 0x%x, %d\0A\00", align 1
@PDC_DIMM_ATA_PKT = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@PDC_PKT_READ = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i64 0, align 8
@PDC_PKT_NODATA = common dso_local global i32 0, align 4
@ATA_DEVICE_OBS = common dso_local global i32 0, align 4
@ATA_DEV1 = common dso_local global i32 0, align 4
@PDC_PKT_CLEAR_BSY = common dso_local global i32 0, align 4
@ATA_REG_DEVICE = common dso_local global i32 0, align 4
@PDC_REG_DEVCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_taskfile*, i32, i32*, i32)* @pdc20621_ata_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc20621_ata_pkt(%struct.ata_taskfile* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = bitcast i32* %14 to i64*
  store i64* %15, i64** %11, align 8
  %16 = load i32, i32* @PDC_20621_DIMM_BASE, align 4
  %17 = load i32, i32* @PDC_DIMM_WINDOW_STEP, align 4
  %18 = load i32, i32* %8, align 4
  %19 = mul i32 %17, %18
  %20 = add i32 %16, %19
  %21 = load i32, i32* @PDC_DIMM_APKT_PRD, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @VPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @PDC_DIMM_ATA_PKT, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %28 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATA_PROT_DMA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %4
  %33 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %34 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @PDC_PKT_READ, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  br label %66

46:                                               ; preds = %32, %4
  %47 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %48 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ATA_PROT_NODATA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @PDC_PKT_NODATA, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  br label %65

59:                                               ; preds = %46
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 255, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = lshr i32 %84, 2
  store i32 %85, i32* %10, align 4
  %86 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %87 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ATA_PROT_NODATA, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %66
  %92 = load i64*, i64** %11, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 0, i64* %95, align 8
  br label %103

96:                                               ; preds = %66
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @cpu_to_le32(i32 %97)
  %99 = load i64*, i64** %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %98, i64* %102, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i64*, i64** %11, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %104, i64 %107
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, 8
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @ATA_DEVICE_OBS, align 4
  store i32 %114, i32* %12, align 4
  br label %119

115:                                              ; preds = %103
  %116 = load i32, i32* @ATA_DEVICE_OBS, align 4
  %117 = load i32, i32* @ATA_DEV1, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %115, %113
  %120 = load i32, i32* @PDC_PKT_CLEAR_BSY, align 4
  %121 = or i32 32, %120
  %122 = load i32, i32* @ATA_REG_DEVICE, align 4
  %123 = or i32 %121, %122
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %9, align 4
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* @PDC_REG_DEVCTL, align 4
  %136 = or i32 32, %135
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %9, align 4
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %143 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %9, align 4
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %144, i32* %149, align 4
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i32 @VPRINTK(i8*, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
