; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_get_host_cmd_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_get_host_cmd_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_cmd_pool = type { i32, i8*, i8*, i32, i32, i32 }

@host_cmd_pool_mutex = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@scsi_cmd_dma_pool = common dso_local global %struct.scsi_host_cmd_pool zeroinitializer, align 8
@scsi_cmd_pool = common dso_local global %struct.scsi_host_cmd_pool zeroinitializer, align 8
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_host_cmd_pool* (i32)* @scsi_get_host_cmd_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_host_cmd_pool* @scsi_get_host_cmd_pool(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_host_cmd_pool*, align 8
  %4 = alloca %struct.scsi_host_cmd_pool*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.scsi_host_cmd_pool* null, %struct.scsi_host_cmd_pool** %3, align 8
  %5 = call i32 @mutex_lock(i32* @host_cmd_pool_mutex)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @__GFP_DMA, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, %struct.scsi_host_cmd_pool* @scsi_cmd_dma_pool, %struct.scsi_host_cmd_pool* @scsi_cmd_pool
  store %struct.scsi_host_cmd_pool* %11, %struct.scsi_host_cmd_pool** %4, align 8
  %12 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %1
  %17 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @kmem_cache_create(i32 %19, i32 4, i32 0, i32 %22, i32* null)
  %24 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %58

31:                                               ; preds = %16
  %32 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %36 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @kmem_cache_create(i32 %34, i32 %35, i32 0, i32 %38, i32* null)
  %40 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %31
  %47 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @kmem_cache_destroy(i8* %49)
  br label %58

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %4, align 8
  store %struct.scsi_host_cmd_pool* %57, %struct.scsi_host_cmd_pool** %3, align 8
  br label %58

58:                                               ; preds = %52, %46, %30
  %59 = call i32 @mutex_unlock(i32* @host_cmd_pool_mutex)
  %60 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %3, align 8
  ret %struct.scsi_host_cmd_pool* %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_destroy(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
