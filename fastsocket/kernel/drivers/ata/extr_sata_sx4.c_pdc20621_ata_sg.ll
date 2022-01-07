; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sx4.c_pdc20621_ata_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sx4.c_pdc20621_ata_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32 }

@PDC_DIMM_APKT_PRD = common dso_local global i32 0, align 4
@PDC_20621_DIMM_BASE = common dso_local global i32 0, align 4
@PDC_20621_DIMM_DATA = common dso_local global i32 0, align 4
@PDC_DIMM_DATA_STEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ATA sg addr 0x%x, %d\0A\00", align 1
@ATA_PRD_EOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ATA PSG @ %x == (0x%x, 0x%x)\0A\00", align 1
@PDC_DIMM_WINDOW_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_taskfile*, i32*, i32, i32)* @pdc20621_ata_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc20621_ata_sg(%struct.ata_taskfile* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @PDC_DIMM_APKT_PRD, align 4
  %13 = ashr i32 %12, 2
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* @PDC_20621_DIMM_BASE, align 4
  %16 = load i32, i32* @PDC_20621_DIMM_DATA, align 4
  %17 = add i32 %15, %16
  %18 = load i32, i32* @PDC_DIMM_DATA_STEP, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul i32 %18, %19
  %21 = add i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i8*, i32, i32, ...) @VPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ATA_PRD_EOT, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* @PDC_20621_DIMM_BASE, align 4
  %41 = load i32, i32* @PDC_DIMM_WINDOW_STEP, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul i32 %41, %42
  %44 = add i32 %40, %43
  %45 = load i32, i32* @PDC_DIMM_APKT_PRD, align 4
  %46 = add i32 %44, %45
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, i32, ...) @VPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %51, i32 %57)
  ret void
}

declare dso_local i32 @VPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
