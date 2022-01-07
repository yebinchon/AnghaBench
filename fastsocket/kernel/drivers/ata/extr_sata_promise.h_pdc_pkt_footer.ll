; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.h_pdc_pkt_footer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.h_pdc_pkt_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32 }

@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_REG_DEVICE = common dso_local global i32 0, align 4
@PDC_LAST_REG = common dso_local global i32 0, align 4
@ATA_REG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_taskfile*, i32*, i32)* @pdc_pkt_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_pkt_footer(%struct.ata_taskfile* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %8 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32, i32* @ATA_REG_DEVICE, align 4
  %15 = or i32 32, %14
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %22 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  br label %29

29:                                               ; preds = %13, %3
  %30 = load i32, i32* @PDC_LAST_REG, align 4
  %31 = or i32 32, %30
  %32 = load i32, i32* @ATA_REG_CMD, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %40 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
