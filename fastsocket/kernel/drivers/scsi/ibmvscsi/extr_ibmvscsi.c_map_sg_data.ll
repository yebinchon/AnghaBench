; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_sg_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_map_sg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.srp_event_struct = type { %struct.srp_direct_buf*, i64 }
%struct.srp_direct_buf = type { i32 }
%struct.srp_cmd = type { i64 }
%struct.device = type { i32 }
%struct.srp_indirect_buf = type { %struct.srp_direct_buf*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@MAX_INDIRECT_BUFS = common dso_local global i32 0, align 4
@SG_ALL = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't allocate memory for indirect table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.srp_event_struct*, %struct.srp_cmd*, %struct.device*)* @map_sg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_sg_data(%struct.scsi_cmnd* %0, %struct.srp_event_struct* %1, %struct.srp_cmd* %2, %struct.device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.srp_event_struct*, align 8
  %8 = alloca %struct.srp_cmd*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.srp_direct_buf*, align 8
  %13 = alloca %struct.srp_indirect_buf*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store %struct.srp_event_struct* %1, %struct.srp_event_struct** %7, align 8
  store %struct.srp_cmd* %2, %struct.srp_cmd** %8, align 8
  store %struct.device* %3, %struct.device** %9, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %15 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.srp_direct_buf*
  store %struct.srp_direct_buf* %17, %struct.srp_direct_buf** %12, align 8
  %18 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %19 = bitcast %struct.srp_direct_buf* %18 to %struct.srp_indirect_buf*
  store %struct.srp_indirect_buf* %19, %struct.srp_indirect_buf** %13, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %139

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %139

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %32 = load %struct.srp_cmd*, %struct.srp_cmd** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @set_srp_direction(%struct.scsi_cmnd* %31, %struct.srp_cmd* %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %41 = call i8* @map_sg_list(%struct.scsi_cmnd* %38, i32 %39, %struct.srp_direct_buf* %40)
  store i32 1, i32* %5, align 4
  br label %139

42:                                               ; preds = %30
  %43 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %44 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %51 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %54 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %42
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %63 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %62, i32 0, i32 0
  %64 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %63, align 8
  %65 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %64, i64 0
  %66 = call i8* @map_sg_list(%struct.scsi_cmnd* %60, i32 %61, %struct.srp_direct_buf* %65)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %69 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  store i32 1, i32* %5, align 4
  br label %139

70:                                               ; preds = %42
  %71 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %72 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %71, i32 0, i32 0
  %73 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %72, align 8
  %74 = icmp ne %struct.srp_direct_buf* %73, null
  br i1 %74, label %105, label %75

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %9, align 8
  %77 = load i32, i32* @SG_ALL, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %82 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %81, i32 0, i32 1
  %83 = call i64 @dma_alloc_coherent(%struct.device* %76, i32 %80, i64* %82, i32 0)
  %84 = inttoptr i64 %83 to %struct.srp_direct_buf*
  %85 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %86 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %85, i32 0, i32 0
  store %struct.srp_direct_buf* %84, %struct.srp_direct_buf** %86, align 8
  %87 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %88 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %87, i32 0, i32 0
  %89 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %88, align 8
  %90 = icmp ne %struct.srp_direct_buf* %89, null
  br i1 %90, label %104, label %91

91:                                               ; preds = %75
  %92 = load i32, i32* @FW_FEATURE_CMO, align 4
  %93 = call i32 @firmware_has_feature(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @KERN_ERR, align 4
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sdev_printk(i32 %96, i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %95, %91
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %103 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %102)
  store i32 0, i32* %5, align 4
  br label %139

104:                                              ; preds = %75
  br label %105

105:                                              ; preds = %104, %70
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %109 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %108, i32 0, i32 0
  %110 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %109, align 8
  %111 = call i8* @map_sg_list(%struct.scsi_cmnd* %106, i32 %107, %struct.srp_direct_buf* %110)
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %114 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %116 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %119 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i64 %117, i64* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %126 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %13, align 8
  %129 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %128, i32 0, i32 0
  %130 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %129, align 8
  %131 = load %struct.srp_event_struct*, %struct.srp_event_struct** %7, align 8
  %132 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %131, i32 0, i32 0
  %133 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %132, align 8
  %134 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(%struct.srp_direct_buf* %130, %struct.srp_direct_buf* %133, i32 %137)
  store i32 1, i32* %5, align 4
  br label %139

139:                                              ; preds = %105, %101, %59, %37, %28, %24
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_srp_direction(%struct.scsi_cmnd*, %struct.srp_cmd*, i32) #1

declare dso_local i8* @map_sg_list(%struct.scsi_cmnd*, i32, %struct.srp_direct_buf*) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(%struct.srp_direct_buf*, %struct.srp_direct_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
