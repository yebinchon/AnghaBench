; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_map_sg_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_map_sg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64 }
%struct.ibmvfc_event = type { i32, %struct.srp_direct_buf* }
%struct.srp_direct_buf = type { i32, i64, i32 }
%struct.ibmvfc_cmd = type { i32, %struct.TYPE_2__, %struct.srp_direct_buf }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.ibmvfc_host = type { i64, i32 }

@IBMVFC_NO_MEM_DESC = common dso_local global i32 0, align 4
@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to map DMA buffer for command\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@IBMVFC_WRITE = common dso_local global i32 0, align 4
@IBMVFC_WRDATA = common dso_local global i32 0, align 4
@IBMVFC_READ = common dso_local global i32 0, align 4
@IBMVFC_RDDATA = common dso_local global i32 0, align 4
@IBMVFC_SCATTERLIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't allocate memory for scatterlist\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.ibmvfc_event*, %struct.ibmvfc_cmd*, %struct.device*)* @ibmvfc_map_sg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_map_sg_data(%struct.scsi_cmnd* %0, %struct.ibmvfc_event* %1, %struct.ibmvfc_cmd* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.ibmvfc_event*, align 8
  %8 = alloca %struct.ibmvfc_cmd*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.srp_direct_buf*, align 8
  %12 = alloca %struct.ibmvfc_host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.ibmvfc_event* %1, %struct.ibmvfc_event** %7, align 8
  store %struct.ibmvfc_cmd* %2, %struct.ibmvfc_cmd** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  %13 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %13, i32 0, i32 2
  store %struct.srp_direct_buf* %14, %struct.srp_direct_buf** %11, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = call %struct.ibmvfc_host* @dev_get_drvdata(%struct.device* %15)
  store %struct.ibmvfc_host* %16, %struct.ibmvfc_host** %12, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %18 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @IBMVFC_NO_MEM_DESC, align 4
  %23 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  store i32 0, i32* %5, align 4
  br label %144

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  %35 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IBMVFC_DEFAULT_LOG_LEVEL, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %42 = call i32 @scmd_printk(i32 %40, %struct.scsi_cmnd* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %144

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMA_TO_DEVICE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32, i32* @IBMVFC_WRITE, align 4
  %54 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %55 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @IBMVFC_WRDATA, align 4
  %59 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %58
  store i32 %63, i32* %61, align 4
  br label %76

64:                                               ; preds = %46
  %65 = load i32, i32* @IBMVFC_READ, align 4
  %66 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @IBMVFC_RDDATA, align 4
  %71 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %72 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %64, %52
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %83 = call i32 @ibmvfc_map_sg_list(%struct.scsi_cmnd* %80, i32 %81, %struct.srp_direct_buf* %82)
  store i32 0, i32* %5, align 4
  br label %144

84:                                               ; preds = %76
  %85 = load i32, i32* @IBMVFC_SCATTERLIST, align 4
  %86 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %8, align 8
  %87 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %91 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %90, i32 0, i32 1
  %92 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %91, align 8
  %93 = icmp ne %struct.srp_direct_buf* %92, null
  br i1 %93, label %124, label %94

94:                                               ; preds = %84
  %95 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  %96 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %100 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %99, i32 0, i32 0
  %101 = call %struct.srp_direct_buf* @dma_pool_alloc(i32 %97, i32 %98, i32* %100)
  %102 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %103 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %102, i32 0, i32 1
  store %struct.srp_direct_buf* %101, %struct.srp_direct_buf** %103, align 8
  %104 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %105 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %104, i32 0, i32 1
  %106 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %105, align 8
  %107 = icmp ne %struct.srp_direct_buf* %106, null
  br i1 %107, label %123, label %108

108:                                              ; preds = %94
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %110 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %109)
  %111 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %12, align 8
  %112 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @IBMVFC_DEFAULT_LOG_LEVEL, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load i32, i32* @KERN_ERR, align 4
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %119 = call i32 @scmd_printk(i32 %117, %struct.scsi_cmnd* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %144

123:                                              ; preds = %94
  br label %124

124:                                              ; preds = %123, %84
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %128 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %127, i32 0, i32 1
  %129 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %128, align 8
  %130 = call i32 @ibmvfc_map_sg_list(%struct.scsi_cmnd* %125, i32 %126, %struct.srp_direct_buf* %129)
  %131 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %7, align 8
  %132 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %135 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 24
  %139 = trunc i64 %138 to i32
  %140 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %141 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %11, align 8
  %143 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %124, %120, %79, %43, %21
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.ibmvfc_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @ibmvfc_map_sg_list(%struct.scsi_cmnd*, i32, %struct.srp_direct_buf*) #1

declare dso_local %struct.srp_direct_buf* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
