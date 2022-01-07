; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_get_fc_host_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_attr.c_qla2x00_get_fc_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, %struct.qla_hw_data*, %struct.link_statistics }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qla_hw_data = type { i32, i32, i32 }
%struct.link_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_qla_host = type { i32, i32 }

@UNLOADING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for stats.\0A\00", align 1
@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@LOOP_READY = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @qla2x00_get_fc_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @qla2x00_get_fc_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.link_statistics*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fc_host_statistics*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %11 = call %struct.TYPE_7__* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %4, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.scsi_qla_host* @pci_get_drvdata(i32 %17)
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = bitcast %struct.link_statistics* %20 to %struct.fc_host_statistics*
  store %struct.fc_host_statistics* %21, %struct.fc_host_statistics** %9, align 8
  %22 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %23 = bitcast %struct.fc_host_statistics* %22 to %struct.link_statistics*
  %24 = call i32 @memset(%struct.link_statistics* %23, i32 -1, i32 84)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %28 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %182

31:                                               ; preds = %1
  %32 = load i32, i32* @UNLOADING, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %182

38:                                               ; preds = %31
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_channel_offline(i32 %41)
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %182

46:                                               ; preds = %38
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.link_statistics* @dma_pool_alloc(i32 %49, i32 %50, i32* %8)
  store %struct.link_statistics* %51, %struct.link_statistics** %7, align 8
  %52 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %53 = icmp eq %struct.link_statistics* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @ql_log_warn, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = call i32 @ql_log(i32 %55, %struct.TYPE_7__* %56, i32 28797, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %182

58:                                               ; preds = %46
  %59 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %60 = load i32, i32* @DMA_POOL_SIZE, align 4
  %61 = call i32 @memset(%struct.link_statistics* %59, i32 0, i32 %60)
  %62 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %64 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %68 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host* %67, %struct.link_statistics* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %95

71:                                               ; preds = %58
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %72, i32 0, i32 1
  %74 = call i64 @atomic_read(i32* %73)
  %75 = load i64, i64* @LOOP_READY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = call i32 @qla2x00_reset_active(%struct.TYPE_7__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %88 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @qla2x00_get_link_status(%struct.scsi_qla_host* %87, i32 %90, %struct.link_statistics* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %86, %81, %77, %71
  br label %95

95:                                               ; preds = %94, %66
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @QLA_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %175

100:                                              ; preds = %95
  %101 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %102 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %101, i32 0, i32 19
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %105 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %104, i32 0, i32 20
  store i32 %103, i32* %105, align 4
  %106 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %107 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %106, i32 0, i32 17
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %110 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %109, i32 0, i32 18
  store i32 %108, i32* %110, align 4
  %111 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %112 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %115 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %114, i32 0, i32 16
  store i32 %113, i32* %115, align 4
  %116 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %117 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %120 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %119, i32 0, i32 14
  store i32 %118, i32* %120, align 4
  %121 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %122 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %125 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %124, i32 0, i32 12
  store i32 %123, i32* %125, align 4
  %126 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %127 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %130 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %129, i32 0, i32 10
  store i32 %128, i32* %130, align 4
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %132 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %100
  %135 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %136 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %139 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  %140 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %141 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %144 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 4
  %145 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %146 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %149 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %151 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %154 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 4
  %155 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %156 = getelementptr inbounds %struct.link_statistics, %struct.link_statistics* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %159 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %134, %100
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 20
  %166 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %167 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 20
  %173 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %174 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %160, %99
  %176 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %177 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.link_statistics*, %struct.link_statistics** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @dma_pool_free(i32 %178, %struct.link_statistics* %179, i32 %180)
  br label %182

182:                                              ; preds = %175, %54, %45, %37, %30
  %183 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  ret %struct.fc_host_statistics* %183
}

declare dso_local %struct.TYPE_7__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.scsi_qla_host* @pci_get_drvdata(i32) #1

declare dso_local i32 @memset(%struct.link_statistics*, i32, i32) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local %struct.link_statistics* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_get_isp_stats(%struct.scsi_qla_host*, %struct.link_statistics*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @qla2x00_reset_active(%struct.TYPE_7__*) #1

declare dso_local i32 @qla2x00_get_link_status(%struct.scsi_qla_host*, i32, %struct.link_statistics*, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.link_statistics*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
