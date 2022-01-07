; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_map_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_map_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.esp*, %struct.scatterlist*, i32, i32)* }
%struct.scatterlist = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.esp_cmd_priv = type { i32, %struct.TYPE_4__, %struct.scatterlist*, i64 }
%struct.TYPE_4__ = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.scsi_cmnd*)* @esp_map_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_map_dma(%struct.esp* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.esp_cmd_priv*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = call %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd* %10)
  store %struct.esp_cmd_priv* %11, %struct.esp_cmd_priv** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %12)
  store %struct.scatterlist* %13, %struct.scatterlist** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DMA_NONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.esp*, %struct.esp** %3, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.esp*, %struct.scatterlist*, i32, i32)*, i32 (%struct.esp*, %struct.scatterlist*, i32, i32)** %25, align 8
  %27 = load %struct.esp*, %struct.esp** %3, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %30 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 %26(%struct.esp* %27, %struct.scatterlist* %28, i32 %30, i32 %31)
  %33 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %5, align 8
  %34 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %37 = call i64 @sg_dma_len(%struct.scatterlist* %36)
  %38 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %5, align 8
  %39 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %41 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %5, align 8
  %42 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %41, i32 0, i32 2
  store %struct.scatterlist* %40, %struct.scatterlist** %42, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %60, %21
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %5, align 8
  %46 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i64 %53
  %55 = call i64 @sg_dma_len(%struct.scatterlist* %54)
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.esp_cmd_priv*, %struct.esp_cmd_priv** %5, align 8
  %66 = getelementptr inbounds %struct.esp_cmd_priv, %struct.esp_cmd_priv* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %20
  ret void
}

declare dso_local %struct.esp_cmd_priv* @ESP_CMD_PRIV(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
