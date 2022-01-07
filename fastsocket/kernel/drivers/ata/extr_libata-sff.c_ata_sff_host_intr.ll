; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_host_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_host_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)*, i32 (%struct.ata_queued_cmd*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ata%u: protocol %d task_state %d\0A\00", align 1
@ATA_DFLAG_CDB_INTR = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@ATAPI_PROT_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ata%u: host_stat 0x%X\0A\00", align 1
@ATA_DMA_INTR = common dso_local global i32 0, align 4
@ATA_DMA_ERR = common dso_local global i32 0, align 4
@AC_ERR_HOST_BUS = common dso_local global i32 0, align 4
@HSM_ST_ERR = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"BMDMA stat 0x%x\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_host_intr(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca %struct.ata_eh_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %5, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.ata_eh_info* %11, %struct.ata_eh_info** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, i32, ...) @VPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19, i32 %22)
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %95 [
    i32 129, label %27
    i32 128, label %38
    i32 130, label %94
  ]

27:                                               ; preds = %2
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %140

37:                                               ; preds = %27
  br label %96

38:                                               ; preds = %2
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATA_PROT_DMA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ATAPI_PROT_DMA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %45, %38
  %53 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %54 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %56, align 8
  %58 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %59 = call i32 %57(%struct.ata_port* %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %61 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i8*, i32, i32, ...) @VPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ATA_DMA_INTR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %52
  br label %140

70:                                               ; preds = %52
  %71 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %72 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %74, align 8
  %76 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %77 = call i32 %75(%struct.ata_queued_cmd* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @ATA_DMA_ERR, align 4
  %80 = and i32 %78, %79
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %70
  %84 = load i32, i32* @AC_ERR_HOST_BUS, align 4
  %85 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %86 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @HSM_ST_ERR, align 4
  %90 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %91 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %83, %70
  br label %93

93:                                               ; preds = %92, %45
  br label %96

94:                                               ; preds = %2
  br label %96

95:                                               ; preds = %2
  br label %140

96:                                               ; preds = %94, %93, %37
  %97 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %98 = call i32 @ata_sff_irq_status(%struct.ata_port* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @ATA_BUSY, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %140

104:                                              ; preds = %96
  %105 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %106 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %108, align 8
  %110 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %111 = call i32 %109(%struct.ata_port* %110)
  %112 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %113 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ata_sff_hsm_move(%struct.ata_port* %112, %struct.ata_queued_cmd* %113, i32 %114, i32 0)
  %116 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %117 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %104
  %122 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %123 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ATA_PROT_DMA, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ATAPI_PROT_DMA, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %128, %121
  %136 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %128, %104
  store i32 1, i32* %3, align 4
  br label %146

140:                                              ; preds = %103, %95, %69, %36
  %141 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %142 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %140, %139
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @VPRINTK(i8*, i32, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_sff_irq_status(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_hsm_move(%struct.ata_port*, %struct.ata_queued_cmd*, i32, i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
