; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_speed_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_speed_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, i64, i64, i32 }
%struct.ata_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ATA_EH_SPDN_NCQ_OFF = common dso_local global i32 0, align 4
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_OFF = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NCQ disabled due to excessive errors\0A\00", align 1
@ATA_EH_SPDN_SPEED_DOWN = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@ata_eh_speed_down.dma_dnxfer_sel = internal constant [2 x i32] [i32 130, i32 131], align 4
@ata_eh_speed_down.pio_dnxfer_sel = internal constant [2 x i32] [i32 128, i32 129], align 4
@ATA_SHIFT_PIO = common dso_local global i64 0, align 8
@ATA_EH_SPDN_FALLBACK_TO_PIO = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i64 0, align 8
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_DNXFER_FORCE_PIO = common dso_local global i32 0, align 4
@ATA_EH_SPDN_KEEP_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32, i32)* @ata_eh_speed_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_speed_down(%struct.ata_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_link*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = call %struct.ata_link* @ata_dev_phys_link(%struct.ata_device* %13)
  store %struct.ata_link* %14, %struct.ata_link** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ata_eh_categorize_error(i32 %15, i32 %16, i32* %9)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %160

20:                                               ; preds = %3
  %21 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ata_ering_record(i32* %22, i32 %23, i32 %24)
  %26 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %27 = call i32 @ata_eh_speed_down_verdict(%struct.ata_device* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ATA_EH_SPDN_NCQ_OFF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %20
  %33 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %37 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %35, %40
  %42 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %46 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %51 = load i32, i32* @KERN_WARNING, align 4
  %52 = call i32 @ata_dev_printk(%struct.ata_device* %50, i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %149

53:                                               ; preds = %32, %20
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ATA_EH_SPDN_SPEED_DOWN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %53
  %59 = load %struct.ata_link*, %struct.ata_link** %8, align 8
  %60 = call i64 @sata_down_spd_limit(%struct.ata_link* %59, i32 0)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @ATA_EH_RESET, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %149

66:                                               ; preds = %58
  %67 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %68 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %105

71:                                               ; preds = %66
  %72 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %73 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %79 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* @ata_eh_speed_down.dma_dnxfer_sel, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  br label %91

84:                                               ; preds = %71
  %85 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %86 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* @ata_eh_speed_down.pio_dnxfer_sel, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %93 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i64 @ata_down_xfermask_limit(%struct.ata_device* %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i32, i32* @ATA_EH_RESET, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %149

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %53
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @ATA_EH_SPDN_FALLBACK_TO_PIO, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %113 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 2
  br i1 %115, label %116, label %148

116:                                              ; preds = %111
  %117 = load %struct.ata_link*, %struct.ata_link** %8, align 8
  %118 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ATA_CBL_SATA, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %116
  %125 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %126 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %124, %116
  %131 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %132 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %138 = load i32, i32* @ATA_DNXFER_FORCE_PIO, align 4
  %139 = call i64 @ata_down_xfermask_limit(%struct.ata_device* %137, i32 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %143 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = load i32, i32* @ATA_EH_RESET, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %149

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %130, %124, %111, %106
  store i32 0, i32* %4, align 4
  br label %160

149:                                              ; preds = %141, %100, %62, %44
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @ATA_EH_SPDN_KEEP_ERRORS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %149
  %155 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %156 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %155, i32 0, i32 4
  %157 = call i32 @ata_ering_clear(i32* %156)
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %148, %19
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.ata_link* @ata_dev_phys_link(%struct.ata_device*) #1

declare dso_local i64 @ata_eh_categorize_error(i32, i32, i32*) #1

declare dso_local i32 @ata_ering_record(i32*, i32, i32) #1

declare dso_local i32 @ata_eh_speed_down_verdict(%struct.ata_device*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*) #1

declare dso_local i64 @sata_down_spd_limit(%struct.ata_link*, i32) #1

declare dso_local i64 @ata_down_xfermask_limit(%struct.ata_device*, i32) #1

declare dso_local i32 @ata_ering_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
