; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_send_adapter_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_send_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { %struct.srp_target* }
%struct.srp_target = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vio_port = type { i32, i32 }
%struct.mad_adapter_info_data = type { i32, i32, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad dma_alloc_coherent %p\0A\00", align 1
@H_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Client connect: %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"16.a\00", align 1
@partition_name = common dso_local global i32 0, align 4
@partition_number = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Error sending adapter info %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_adapter_info(%struct.iu_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.srp_target*, align 8
  %9 = alloca %struct.vio_port*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mad_adapter_info_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iu_entry* %0, %struct.iu_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %15 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %14, i32 0, i32 0
  %16 = load %struct.srp_target*, %struct.srp_target** %15, align 8
  store %struct.srp_target* %16, %struct.srp_target** %8, align 8
  %17 = load %struct.srp_target*, %struct.srp_target** %8, align 8
  %18 = call %struct.vio_port* @target_to_port(%struct.srp_target* %17)
  store %struct.vio_port* %18, %struct.vio_port** %9, align 8
  %19 = load %struct.srp_target*, %struct.srp_target** %8, align 8
  %20 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %19, i32 0, i32 1
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %20, align 8
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %10, align 8
  %22 = load %struct.srp_target*, %struct.srp_target** %8, align 8
  %23 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mad_adapter_info_data* @dma_alloc_coherent(i32 %24, i32 32, i32* %11, i32 %25)
  store %struct.mad_adapter_info_data* %26, %struct.mad_adapter_info_data** %12, align 8
  %27 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %28 = icmp ne %struct.mad_adapter_info_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load %struct.srp_target*, %struct.srp_target** %8, align 8
  %31 = call i32 (i8*, ...) @eprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.srp_target* %30)
  store i32 1, i32* %4, align 4
  br label %104

32:                                               ; preds = %3
  %33 = load %struct.vio_port*, %struct.vio_port** %9, align 8
  %34 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.vio_port*, %struct.vio_port** %9, align 8
  %38 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @h_copy_rdma(i32 32, i32 %35, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @H_SUCCESS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %47 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %50 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %45, %32
  %54 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %55 = call i32 @memset(%struct.mad_adapter_info_data* %54, i32 0, i32 32)
  %56 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %57 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %61 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @partition_name, align 4
  %64 = call i32 @strncpy(i32 %62, i32 %63, i32 4)
  %65 = load i32, i32* @partition_number, align 4
  %66 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %67 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %69 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %71 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %70, i32 0, i32 1
  store i32 2, i32* %71, align 4
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 9
  %78 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %79 = getelementptr inbounds %struct.mad_adapter_info_data, %struct.mad_adapter_info_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.vio_port*, %struct.vio_port** %9, align 8
  %83 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.vio_port*, %struct.vio_port** %9, align 8
  %87 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @h_copy_rdma(i32 32, i32 %84, i32 %85, i32 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.srp_target*, %struct.srp_target** %8, align 8
  %92 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mad_adapter_info_data*, %struct.mad_adapter_info_data** %12, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @dma_free_coherent(i32 %93, i32 32, %struct.mad_adapter_info_data* %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @H_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %53
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (i8*, ...) @eprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  store i32 1, i32* %4, align 4
  br label %104

103:                                              ; preds = %53
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %100, %29
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.vio_port* @target_to_port(%struct.srp_target*) #1

declare dso_local %struct.mad_adapter_info_data* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @eprintk(i8*, ...) #1

declare dso_local i32 @h_copy_rdma(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.mad_adapter_info_data*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.mad_adapter_info_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
