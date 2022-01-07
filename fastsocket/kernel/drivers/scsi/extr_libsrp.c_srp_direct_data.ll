; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_direct_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libsrp.c_srp_direct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.srp_direct_buf = type { i32 }
%struct.scatterlist = type { i32 }
%struct.iu_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%p %u %u %d\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"fail to map %p %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.srp_direct_buf*, i32, i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)*, i32, i32)* @srp_direct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_direct_data(%struct.scsi_cmnd* %0, %struct.srp_direct_buf* %1, i32 %2, i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.srp_direct_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iu_entry*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %8, align 8
  store %struct.srp_direct_buf* %1, %struct.srp_direct_buf** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)* %3, i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.iu_entry* null, %struct.iu_entry** %14, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %15, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %6
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.iu_entry*
  store %struct.iu_entry* %26, %struct.iu_entry** %14, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %28 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %27)
  store %struct.scatterlist* %28, %struct.scatterlist** %15, align 8
  %29 = load %struct.iu_entry*, %struct.iu_entry** %14, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %31 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %30)
  %32 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %9, align 8
  %33 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %36 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %35)
  %37 = call i32 @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.iu_entry* %29, i32 %31, i32 %34, i32 %36)
  %38 = load %struct.iu_entry*, %struct.iu_entry** %14, align 8
  %39 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %45 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %44)
  %46 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %47 = call i32 @dma_map_sg(i32 %42, %struct.scatterlist* %43, i32 %45, i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %21
  %51 = load %struct.iu_entry*, %struct.iu_entry** %14, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %53 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %52)
  %54 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.iu_entry* %51, i32 %53)
  store i32 0, i32* %7, align 4
  br label %89

55:                                               ; preds = %21
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %57 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %56)
  %58 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %9, align 8
  %59 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @min(i32 %57, i32 %60)
  store i32 %61, i32* %18, align 4
  br label %66

62:                                               ; preds = %6
  %63 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %9, align 8
  %64 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)*, i32 (%struct.scsi_cmnd*, %struct.scatterlist*, i32, %struct.srp_direct_buf*, i32, i32, i32)** %11, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 %67(%struct.scsi_cmnd* %68, %struct.scatterlist* %69, i32 %70, %struct.srp_direct_buf* %71, i32 1, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load %struct.iu_entry*, %struct.iu_entry** %14, align 8
  %79 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %86 = call i32 @dma_unmap_sg(i32 %82, %struct.scatterlist* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %77, %66
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %50
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @dprintk(i8*, %struct.iu_entry*, i32, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @printk(i8*, %struct.iu_entry*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
