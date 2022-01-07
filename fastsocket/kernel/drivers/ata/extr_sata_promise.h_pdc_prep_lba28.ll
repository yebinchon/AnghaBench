; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.h_pdc_prep_lba28.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.h_pdc_prep_lba28.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32 }

@ATA_REG_FEATURE = common dso_local global i32 0, align 4
@ATA_REG_NSECT = common dso_local global i32 0, align 4
@ATA_REG_LBAL = common dso_local global i32 0, align 4
@ATA_REG_LBAM = common dso_local global i32 0, align 4
@ATA_REG_LBAH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_taskfile*, i32*, i32)* @pdc_prep_lba28 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_prep_lba28(%struct.ata_taskfile* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @ATA_REG_FEATURE, align 4
  %8 = or i32 32, %7
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  store i32 %8, i32* %13, align 4
  %14 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %15 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* @ATA_REG_NSECT, align 4
  %23 = or i32 32, %22
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %30 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @ATA_REG_LBAL, align 4
  %38 = or i32 32, %37
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %45 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @ATA_REG_LBAM, align 4
  %53 = or i32 32, %52
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %60 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* @ATA_REG_LBAH, align 4
  %68 = or i32 32, %67
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
