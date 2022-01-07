; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_rdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scatterlist = type { i32 }
%struct.srp_direct_buf = type { i32, i64 }
%struct.iu_entry = type { %struct.srp_target* }
%struct.srp_target = type { i32 }
%struct.vio_port = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"rdma error %d %d %ld\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"out of sg %p %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)* @ibmvstgt_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvstgt_rdma(%struct.scsi_cmnd* %0, %struct.scatterlist* %1, i32 %2, %struct.srp_direct_buf* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.srp_direct_buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iu_entry*, align 8
  %17 = alloca %struct.srp_target*, align 8
  %18 = alloca %struct.vio_port*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.srp_direct_buf* %3, %struct.srp_direct_buf** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.iu_entry*
  store %struct.iu_entry* %32, %struct.iu_entry** %16, align 8
  %33 = load %struct.iu_entry*, %struct.iu_entry** %16, align 8
  %34 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %33, i32 0, i32 0
  %35 = load %struct.srp_target*, %struct.srp_target** %34, align 8
  store %struct.srp_target* %35, %struct.srp_target** %17, align 8
  %36 = load %struct.srp_target*, %struct.srp_target** %17, align 8
  %37 = call %struct.vio_port* @target_to_port(%struct.srp_target* %36)
  store %struct.vio_port* %37, %struct.vio_port** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %38 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %39 = load i32, i32* %23, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i64 %40
  %42 = call i64 @sg_dma_address(%struct.scatterlist* %41)
  store i64 %42, i64* %19, align 8
  store i32 0, i32* %22, align 4
  br label %43

43:                                               ; preds = %178, %7
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i1 [ false, %43 ], [ %49, %47 ]
  br i1 %51, label %52, label %181

52:                                               ; preds = %50
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %55 = load i32, i32* %22, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %54, i64 %56
  %58 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @min(i32 %53, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %62

62:                                               ; preds = %173, %52
  %63 = load i32, i32* %26, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %174

65:                                               ; preds = %62
  %66 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i64 %68
  %70 = call i32 @sg_dma_len(%struct.scatterlist* %69)
  %71 = load i32, i32* %24, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %26, align 4
  %74 = call i8* @min(i32 %72, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %27, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @DMA_TO_DEVICE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %65
  %80 = load i32, i32* %27, align 4
  %81 = load %struct.vio_port*, %struct.vio_port** %18, align 8
  %82 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %85 = load i32, i32* %22, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %84, i64 %86
  %88 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %25, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load %struct.vio_port*, %struct.vio_port** %18, align 8
  %94 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %19, align 8
  %97 = load i32, i32* %24, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i64 @h_copy_rdma(i32 %80, i32 %83, i64 %92, i32 %95, i64 %99)
  store i64 %100, i64* %20, align 8
  br label %123

101:                                              ; preds = %65
  %102 = load i32, i32* %27, align 4
  %103 = load %struct.vio_port*, %struct.vio_port** %18, align 8
  %104 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %19, align 8
  %107 = load i32, i32* %24, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.vio_port*, %struct.vio_port** %18, align 8
  %111 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %12, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %113, i64 %115
  %117 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %25, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = call i64 @h_copy_rdma(i32 %102, i32 %105, i64 %109, i32 %112, i64 %121)
  store i64 %122, i64* %20, align 8
  br label %123

123:                                              ; preds = %101, %79
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* @H_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %27, align 4
  %130 = load i64, i64* %20, align 8
  %131 = call i32 (i8*, ...) @eprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %129, i64 %130)
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %182

134:                                              ; preds = %123
  %135 = load i32, i32* %27, align 4
  %136 = load i32, i32* %26, align 4
  %137 = sub i32 %136, %135
  store i32 %137, i32* %26, align 4
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %25, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %25, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %24, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* %21, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %24, align 4
  %148 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %149 = load i32, i32* %23, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %148, i64 %150
  %152 = call i32 @sg_dma_len(%struct.scatterlist* %151)
  %153 = icmp eq i32 %147, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %134
  %155 = load i32, i32* %23, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %157 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %157, i64 %159
  %161 = call i64 @sg_dma_address(%struct.scatterlist* %160)
  store i64 %161, i64* %19, align 8
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %154
  %166 = load %struct.iu_entry*, %struct.iu_entry** %16, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 (i8*, ...) @eprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.iu_entry* %166, i32 %167, i32 %168)
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  br label %182

172:                                              ; preds = %154
  br label %173

173:                                              ; preds = %172, %134
  br label %62

174:                                              ; preds = %62
  %175 = load i32, i32* %26, align 4
  %176 = load i32, i32* %15, align 4
  %177 = sub i32 %176, %175
  store i32 %177, i32* %15, align 4
  br label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %22, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %22, align 4
  br label %43

181:                                              ; preds = %50
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %181, %165, %127
  %183 = load i32, i32* %8, align 4
  ret i32 %183
}

declare dso_local %struct.vio_port* @target_to_port(%struct.srp_target*) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @h_copy_rdma(i32, i32, i64, i32, i64) #1

declare dso_local i32 @eprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
