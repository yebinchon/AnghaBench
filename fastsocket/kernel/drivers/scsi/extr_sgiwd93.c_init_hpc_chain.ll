; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sgiwd93.c_init_hpc_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sgiwd93.c_init_hpc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip22_hostdata = type { i64, i64 }
%struct.hpc_chunk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@HPC_DMA_SIZE = common dso_local global i64 0, align 8
@HPCDMA_EOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip22_hostdata*)* @init_hpc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hpc_chain(%struct.ip22_hostdata* %0) #0 {
  %2 = alloca %struct.ip22_hostdata*, align 8
  %3 = alloca %struct.hpc_chunk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ip22_hostdata* %0, %struct.ip22_hostdata** %2, align 8
  %7 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %2, align 8
  %8 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hpc_chunk*
  store %struct.hpc_chunk* %10, %struct.hpc_chunk** %3, align 8
  %11 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %2, align 8
  %12 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.hpc_chunk*, %struct.hpc_chunk** %3, align 8
  %15 = ptrtoint %struct.hpc_chunk* %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @HPC_DMA_SIZE, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %23, %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 16
  %26 = load %struct.hpc_chunk*, %struct.hpc_chunk** %3, align 8
  %27 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @HPCDMA_EOX, align 4
  %30 = load %struct.hpc_chunk*, %struct.hpc_chunk** %3, align 8
  %31 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.hpc_chunk*, %struct.hpc_chunk** %3, align 8
  %34 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %33, i32 1
  store %struct.hpc_chunk* %34, %struct.hpc_chunk** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 16
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 16
  store i64 %38, i64* %5, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.hpc_chunk*, %struct.hpc_chunk** %3, align 8
  %41 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %40, i32 -1
  store %struct.hpc_chunk* %41, %struct.hpc_chunk** %3, align 8
  %42 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %2, align 8
  %43 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hpc_chunk*, %struct.hpc_chunk** %3, align 8
  %46 = getelementptr inbounds %struct.hpc_chunk, %struct.hpc_chunk* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
