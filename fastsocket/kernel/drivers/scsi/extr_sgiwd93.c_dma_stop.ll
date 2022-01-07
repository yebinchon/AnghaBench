; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sgiwd93.c_dma_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sgiwd93.c_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ip22_hostdata = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.hpc3_scsiregs = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"dma_stop: status<%d> \00", align 1
@HPC3_SCTRL_FLUSH = common dso_local global i32 0, align 4
@HPC3_SCTRL_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_cmnd*, i32)* @dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_stop(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip22_hostdata*, align 8
  %8 = alloca %struct.hpc3_scsiregs*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = call %struct.ip22_hostdata* @host_to_hostdata(%struct.Scsi_Host* %9)
  store %struct.ip22_hostdata* %10, %struct.ip22_hostdata** %7, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = icmp ne %struct.scsi_cmnd* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %80

14:                                               ; preds = %3
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  br label %80

27:                                               ; preds = %20
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.hpc3_scsiregs*
  store %struct.hpc3_scsiregs* %35, %struct.hpc3_scsiregs** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %7, align 8
  %39 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %27
  %44 = load i32, i32* @HPC3_SCTRL_FLUSH, align 4
  %45 = load %struct.hpc3_scsiregs*, %struct.hpc3_scsiregs** %8, align 8
  %46 = getelementptr inbounds %struct.hpc3_scsiregs, %struct.hpc3_scsiregs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %56, %43
  %50 = load %struct.hpc3_scsiregs*, %struct.hpc3_scsiregs** %8, align 8
  %51 = getelementptr inbounds %struct.hpc3_scsiregs, %struct.hpc3_scsiregs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HPC3_SCTRL_ACTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 (...) @barrier()
  br label %49

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.hpc3_scsiregs*, %struct.hpc3_scsiregs** %8, align 8
  %61 = getelementptr inbounds %struct.hpc3_scsiregs, %struct.hpc3_scsiregs* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %7, align 8
  %63 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %7, align 8
  %74 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @DMA_DIR(i64 %76)
  %78 = call i32 @dma_unmap_single(i32 %64, i32 %68, i32 %72, i32 %77)
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %59, %26, %13
  ret void
}

declare dso_local %struct.ip22_hostdata* @host_to_hostdata(%struct.Scsi_Host*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @DMA_DIR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
