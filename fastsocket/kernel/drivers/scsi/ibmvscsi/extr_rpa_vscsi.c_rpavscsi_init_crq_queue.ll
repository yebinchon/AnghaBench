; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_rpavscsi_init_crq_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_rpavscsi_init_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_queue = type { i32, %struct.viosrp_crq*, i32, i32, i64 }
%struct.viosrp_crq = type { i32 }
%struct.ibmvscsi_host_data = type { i32, i32 }
%struct.vio_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@H_REG_CRQ = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Partner adapter not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error %d opening adapter\0A\00", align 1
@rpavscsi_task = common dso_local global i64 0, align 8
@rpavscsi_handle_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ibmvscsi\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"couldn't register irq 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error %d enabling interrupts!!!\0A\00", align 1
@H_FREE_CRQ = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_queue*, %struct.ibmvscsi_host_data*, i32)* @rpavscsi_init_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpavscsi_init_crq_queue(%struct.crq_queue* %0, %struct.ibmvscsi_host_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crq_queue*, align 8
  %6 = alloca %struct.ibmvscsi_host_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vio_dev*, align 8
  store %struct.crq_queue* %0, %struct.crq_queue** %5, align 8
  store %struct.ibmvscsi_host_data* %1, %struct.ibmvscsi_host_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %12 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vio_dev* @to_vio_dev(i32 %13)
  store %struct.vio_dev* %14, %struct.vio_dev** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @get_zeroed_page(i32 %15)
  %17 = inttoptr i64 %16 to %struct.viosrp_crq*
  %18 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %19 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %18, i32 0, i32 1
  store %struct.viosrp_crq* %17, %struct.viosrp_crq** %19, align 8
  %20 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %21 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %20, i32 0, i32 1
  %22 = load %struct.viosrp_crq*, %struct.viosrp_crq** %21, align 8
  %23 = icmp ne %struct.viosrp_crq* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %184

25:                                               ; preds = %3
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %31 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %33 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %36 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %35, i32 0, i32 1
  %37 = load %struct.viosrp_crq*, %struct.viosrp_crq** %36, align 8
  %38 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %39 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %45 = call i32 @dma_map_single(i32 %34, %struct.viosrp_crq* %37, i32 %43, i32 %44)
  %46 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %47 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %49 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %52 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @dma_mapping_error(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %25
  br label %178

57:                                               ; preds = %25
  %58 = call i32 (...) @gather_partition_info()
  %59 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %60 = call i32 @set_adapter_info(%struct.ibmvscsi_host_data* %59)
  %61 = load i32, i32* @H_REG_CRQ, align 4
  %62 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %63 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %66 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %61, i32 %64, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @H_RESOURCE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %57
  %74 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %75 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %76 = call i32 @rpavscsi_reset_crq_queue(%struct.crq_queue* %74, %struct.ibmvscsi_host_data* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %57
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %82 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_warn(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %95

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %90 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i32, i8*, ...) @dev_warn(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %163

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %80
  %96 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %97 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %99 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %98, i32 0, i32 3
  %100 = call i32 @spin_lock_init(i32* %99)
  %101 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %102 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %101, i32 0, i32 1
  %103 = load i64, i64* @rpavscsi_task, align 8
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %106 = ptrtoint %struct.ibmvscsi_host_data* %105 to i64
  %107 = call i32 @tasklet_init(i32* %102, i8* %104, i64 %106)
  %108 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %109 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @rpavscsi_handle_event, align 4
  %112 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %113 = bitcast %struct.ibmvscsi_host_data* %112 to i8*
  %114 = call i64 @request_irq(i32 %110, i32 %111, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %95
  %117 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %118 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %121 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_err(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %137

124:                                              ; preds = %95
  %125 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %126 = call i32 @vio_enable_interrupts(%struct.vio_dev* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %131 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %137

135:                                              ; preds = %124
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %4, align 4
  br label %185

137:                                              ; preds = %129, %116
  %138 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %139 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %138, i32 0, i32 1
  %140 = call i32 @tasklet_kill(i32* %139)
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %160, %137
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @msleep(i32 100)
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32, i32* @H_FREE_CRQ, align 4
  %148 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %149 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %147, i32 %150)
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @H_BUSY, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = call i64 @H_IS_LONG_BUSY(i32 %157)
  %159 = icmp ne i64 %158, 0
  br label %160

160:                                              ; preds = %156, %152
  %161 = phi i1 [ true, %152 ], [ %159, %156 ]
  br i1 %161, label %141, label %162

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162, %88
  %164 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %165 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %168 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %171 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = trunc i64 %174 to i32
  %176 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %177 = call i32 @dma_unmap_single(i32 %166, i32 %169, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %163, %56
  %179 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %180 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %179, i32 0, i32 1
  %181 = load %struct.viosrp_crq*, %struct.viosrp_crq** %180, align 8
  %182 = ptrtoint %struct.viosrp_crq* %181 to i64
  %183 = call i32 @free_page(i64 %182)
  br label %184

184:                                              ; preds = %178, %24
  store i32 -1, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %135
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.viosrp_crq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @gather_partition_info(...) #1

declare dso_local i32 @set_adapter_info(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32, ...) #1

declare dso_local i32 @rpavscsi_reset_crq_queue(%struct.crq_queue*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i8*, i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
