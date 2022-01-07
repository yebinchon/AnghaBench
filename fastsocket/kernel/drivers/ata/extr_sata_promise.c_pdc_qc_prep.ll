; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_qc_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.pdc_port_priv* }
%struct.pdc_port_priv = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pdc_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.pdc_port_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %8, align 8
  store %struct.pdc_port_priv* %9, %struct.pdc_port_priv** %3, align 8
  %10 = call i32 @VPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %75 [
    i32 129, label %15
    i32 128, label %18
    i32 130, label %66
    i32 132, label %69
    i32 131, label %72
  ]

15:                                               ; preds = %1
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = call i32 @pdc_fill_sg(%struct.ata_queued_cmd* %16)
  br label %18

18:                                               ; preds = %1, %15
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %19, i32 0, i32 0
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %3, align 8
  %32 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pdc_pkt_header(%struct.TYPE_9__* %20, i32 %25, i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %18
  %43 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %43, i32 0, i32 0
  %45 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %3, align 8
  %46 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pdc_prep_lba48(%struct.TYPE_9__* %44, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %58

50:                                               ; preds = %18
  %51 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %52 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %51, i32 0, i32 0
  %53 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %3, align 8
  %54 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @pdc_prep_lba28(%struct.TYPE_9__* %52, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %42
  %59 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %60 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %59, i32 0, i32 0
  %61 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %3, align 8
  %62 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pdc_pkt_footer(%struct.TYPE_9__* %60, i32 %63, i32 %64)
  br label %76

66:                                               ; preds = %1
  %67 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %68 = call i32 @pdc_fill_sg(%struct.ata_queued_cmd* %67)
  br label %76

69:                                               ; preds = %1
  %70 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %71 = call i32 @pdc_fill_sg(%struct.ata_queued_cmd* %70)
  br label %72

72:                                               ; preds = %1, %69
  %73 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %74 = call i32 @pdc_atapi_pkt(%struct.ata_queued_cmd* %73)
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %75, %72, %66, %58
  ret void
}

declare dso_local i32 @VPRINTK(i8*) #1

declare dso_local i32 @pdc_fill_sg(%struct.ata_queued_cmd*) #1

declare dso_local i32 @pdc_pkt_header(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @pdc_prep_lba48(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @pdc_prep_lba28(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @pdc_pkt_footer(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @pdc_atapi_pkt(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
