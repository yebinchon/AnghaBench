; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_put_host_cmd_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_put_host_cmd_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_cmd_pool = type { i64, i32, i32 }

@host_cmd_pool_mutex = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@scsi_cmd_dma_pool = common dso_local global %struct.scsi_host_cmd_pool zeroinitializer, align 8
@scsi_cmd_pool = common dso_local global %struct.scsi_host_cmd_pool zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @scsi_put_host_cmd_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_put_host_cmd_pool(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_host_cmd_pool*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @host_cmd_pool_mutex)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @__GFP_DMA, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, %struct.scsi_host_cmd_pool* @scsi_cmd_dma_pool, %struct.scsi_host_cmd_pool* @scsi_cmd_pool
  store %struct.scsi_host_cmd_pool* %10, %struct.scsi_host_cmd_pool** %3, align 8
  %11 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %1
  %23 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kmem_cache_destroy(i32 %25)
  %27 = load %struct.scsi_host_cmd_pool*, %struct.scsi_host_cmd_pool** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_host_cmd_pool, %struct.scsi_host_cmd_pool* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @kmem_cache_destroy(i32 %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = call i32 @mutex_unlock(i32* @host_cmd_pool_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
