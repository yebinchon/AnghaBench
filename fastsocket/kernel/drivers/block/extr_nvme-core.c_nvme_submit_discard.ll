; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_submit_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i64, i64, i32, %struct.TYPE_3__*, %struct.nvme_command* }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i64, i8*, i8*, i32 }
%struct.nvme_ns = type { i32, i32 }
%struct.bio = type { i32, i32 }
%struct.nvme_iod = type { i32, i64 }
%struct.nvme_dsm_range = type { i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvme_cmd_dsm = common dso_local global i32 0, align 4
@NVME_DSMGMT_AD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, %struct.nvme_ns*, %struct.bio*, %struct.nvme_iod*, i32)* @nvme_submit_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_submit_discard(%struct.nvme_queue* %0, %struct.nvme_ns* %1, %struct.bio* %2, %struct.nvme_iod* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_queue*, align 8
  %8 = alloca %struct.nvme_ns*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.nvme_iod*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvme_dsm_range*, align 8
  %13 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %7, align 8
  store %struct.nvme_ns* %1, %struct.nvme_ns** %8, align 8
  store %struct.bio* %2, %struct.bio** %9, align 8
  store %struct.nvme_iod* %3, %struct.nvme_iod** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %15 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %14, i32 0, i32 4
  %16 = load %struct.nvme_command*, %struct.nvme_command** %15, align 8
  %17 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %18 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i64 %19
  store %struct.nvme_command* %20, %struct.nvme_command** %13, align 8
  %21 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %22 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %28 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %27, i32 0, i32 0
  %29 = call %struct.nvme_dsm_range* @dma_pool_alloc(i32 %25, i32 %26, i32* %28)
  store %struct.nvme_dsm_range* %29, %struct.nvme_dsm_range** %12, align 8
  %30 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %12, align 8
  %31 = icmp ne %struct.nvme_dsm_range* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %115

35:                                               ; preds = %5
  %36 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %12, align 8
  %37 = bitcast %struct.nvme_dsm_range* %36 to i32*
  %38 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %39 = call i32** @iod_list(%struct.nvme_iod* %38)
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %42 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = call i8* @cpu_to_le32(i32 0)
  %44 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %12, align 8
  %45 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bio*, %struct.bio** %9, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %50 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %48, %51
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %12, align 8
  %55 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %57 = load %struct.bio*, %struct.bio** %9, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nvme_block_nr(%struct.nvme_ns* %56, i32 %59)
  %61 = call i8* @cpu_to_le64(i32 %60)
  %62 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %12, align 8
  %63 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %65 = call i32 @memset(%struct.nvme_command* %64, i32 0, i32 48)
  %66 = load i32, i32* @nvme_cmd_dsm, align 4
  %67 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %68 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %72 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %75 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %79 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i8* %77, i8** %80, align 8
  %81 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %82 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @cpu_to_le64(i32 %83)
  %85 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %86 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i8* %84, i8** %87, align 8
  %88 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %89 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @NVME_DSMGMT_AD, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %94 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %97 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %101 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %35
  %105 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %106 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %35
  %108 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %109 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  %112 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @writel(i64 %110, i32 %113)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %107, %32
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local %struct.nvme_dsm_range* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32** @iod_list(%struct.nvme_iod*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @nvme_block_nr(%struct.nvme_ns*, i32) #1

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
