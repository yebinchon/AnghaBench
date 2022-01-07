; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_sg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_sg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i32, i32, i32, %struct.ata_port* }
%struct.ata_port = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ENTER, ata%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%d sg elements mapped\0A\00", align 1
@ATA_QCFLAG_DMAMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_sg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sg_setup(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 5
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @VPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_map_sg(i32 %15, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ult i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %29, %28
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @VPRINTK(i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
