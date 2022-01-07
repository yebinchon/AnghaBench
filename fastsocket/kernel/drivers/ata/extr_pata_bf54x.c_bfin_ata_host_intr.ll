; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_bf54x.c_bfin_ata_host_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_bf54x.c_bfin_ata_host_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)*, i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*)*, i32 (%struct.ata_queued_cmd*)* }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, %struct.ata_queued_cmd*)* @bfin_ata_host_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_ata_host_intr(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
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
  br label %160

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
  br label %160

70:                                               ; preds = %52
  %71 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %72 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
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
  br label %160

96:                                               ; preds = %94, %93, %37
  %97 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %98 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %100, align 8
  %102 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %103 = call i32 %101(%struct.ata_port* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @ATA_BUSY, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %159

109:                                              ; preds = %96
  %110 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %111 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %113, align 8
  %115 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %116 = call i32 %114(%struct.ata_port* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @ATA_BUSY, align 4
  %119 = and i32 %117, %118
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %159

123:                                              ; preds = %109
  %124 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %125 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %127, align 8
  %129 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %130 = call i32 %128(%struct.ata_port* %129)
  %131 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %132 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @ata_sff_hsm_move(%struct.ata_port* %131, %struct.ata_queued_cmd* %132, i32 %133, i32 0)
  %135 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %136 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %123
  %141 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %142 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ATA_PROT_DMA, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %149 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ATAPI_PROT_DMA, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %147, %140
  %155 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %154, %147, %123
  br label %159

159:                                              ; preds = %158, %122, %108
  store i32 1, i32* %3, align 4
  br label %166

160:                                              ; preds = %95, %69, %36
  %161 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %162 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %160, %159
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @VPRINTK(i8*, i32, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_sff_hsm_move(%struct.ata_port*, %struct.ata_queued_cmd*, i32, i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
