; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_crq_queue_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_crq_queue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_queue = type { i32, %struct.viosrp_crq*, i32, i32, i64 }
%struct.viosrp_crq = type { i32 }
%struct.srp_target = type { i32 }
%struct.vio_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error 0x%x opening virtual adapter\0A\00", align 1
@ibmvstgt_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ibmvstgt\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_queue*, %struct.srp_target*)* @crq_queue_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crq_queue_create(%struct.crq_queue* %0, %struct.srp_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crq_queue*, align 8
  %5 = alloca %struct.srp_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vio_port*, align 8
  store %struct.crq_queue* %0, %struct.crq_queue** %4, align 8
  store %struct.srp_target* %1, %struct.srp_target** %5, align 8
  %8 = load %struct.srp_target*, %struct.srp_target** %5, align 8
  %9 = call %struct.vio_port* @target_to_port(%struct.srp_target* %8)
  store %struct.vio_port* %9, %struct.vio_port** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @get_zeroed_page(i32 %10)
  %12 = inttoptr i64 %11 to %struct.viosrp_crq*
  %13 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %14 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %13, i32 0, i32 1
  store %struct.viosrp_crq* %12, %struct.viosrp_crq** %14, align 8
  %15 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %16 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %15, i32 0, i32 1
  %17 = load %struct.viosrp_crq*, %struct.viosrp_crq** %16, align 8
  %18 = icmp ne %struct.viosrp_crq* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %173

20:                                               ; preds = %2
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %26 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.srp_target*, %struct.srp_target** %5, align 8
  %28 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %31 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %30, i32 0, i32 1
  %32 = load %struct.viosrp_crq*, %struct.viosrp_crq** %31, align 8
  %33 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %34 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %40 = call i32 @dma_map_single(i32 %29, %struct.viosrp_crq* %32, i32 %38, i32 %39)
  %41 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %42 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.srp_target*, %struct.srp_target** %5, align 8
  %44 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %47 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @dma_mapping_error(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %20
  br label %167

52:                                               ; preds = %20
  %53 = load %struct.vio_port*, %struct.vio_port** %7, align 8
  %54 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %59 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i32 @h_reg_crq(i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @H_RESOURCE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %82, %66
  %68 = load %struct.vio_port*, %struct.vio_port** %7, align 8
  %69 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @h_free_crq(i32 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @H_BUSY, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @H_IS_LONG_BUSY(i32 %79)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i1 [ true, %74 ], [ %81, %78 ]
  br i1 %83, label %67, label %84

84:                                               ; preds = %82
  %85 = load %struct.vio_port*, %struct.vio_port** %7, align 8
  %86 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %91 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = call i32 @h_reg_crq(i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %84, %52
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @H_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @eprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %152

105:                                              ; preds = %99, %95
  %106 = load %struct.vio_port*, %struct.vio_port** %7, align 8
  %107 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IRQF_DISABLED, align 4
  %112 = load %struct.srp_target*, %struct.srp_target** %5, align 8
  %113 = call i32 @request_irq(i32 %110, i32* @ibmvstgt_interrupt, i32 %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.srp_target* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %133

117:                                              ; preds = %105
  %118 = load %struct.vio_port*, %struct.vio_port** %7, align 8
  %119 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = call i32 @vio_enable_interrupts(%struct.TYPE_2__* %120)
  %122 = load %struct.vio_port*, %struct.vio_port** %7, align 8
  %123 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @h_send_crq(i32 %126, i32 0, i32 0)
  %128 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %129 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  %130 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %131 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %130, i32 0, i32 3
  %132 = call i32 @spin_lock_init(i32* %131)
  store i32 0, i32* %3, align 4
  br label %176

133:                                              ; preds = %116
  br label %134

134:                                              ; preds = %149, %133
  %135 = load %struct.vio_port*, %struct.vio_port** %7, align 8
  %136 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @h_free_crq(i32 %139)
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @H_BUSY, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = call i64 @H_IS_LONG_BUSY(i32 %146)
  %148 = icmp ne i64 %147, 0
  br label %149

149:                                              ; preds = %145, %141
  %150 = phi i1 [ true, %141 ], [ %148, %145 ]
  br i1 %150, label %134, label %151

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151, %102
  %153 = load %struct.srp_target*, %struct.srp_target** %5, align 8
  %154 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %157 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %160 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %166 = call i32 @dma_unmap_single(i32 %155, i32 %158, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %152, %51
  %168 = load %struct.crq_queue*, %struct.crq_queue** %4, align 8
  %169 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %168, i32 0, i32 1
  %170 = load %struct.viosrp_crq*, %struct.viosrp_crq** %169, align 8
  %171 = ptrtoint %struct.viosrp_crq* %170 to i64
  %172 = call i32 @free_page(i64 %171)
  br label %173

173:                                              ; preds = %167, %19
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %173, %117
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.vio_port* @target_to_port(%struct.srp_target*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.viosrp_crq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @h_reg_crq(i32, i32, i32) #1

declare dso_local i32 @h_free_crq(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @eprintk(i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i8*, %struct.srp_target*) #1

declare dso_local i32 @vio_enable_interrupts(%struct.TYPE_2__*) #1

declare dso_local i32 @h_send_crq(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
