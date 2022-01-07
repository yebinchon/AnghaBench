; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_dma_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_dma_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_fcoe = type { i32 }
%struct.device = type { i32 }
%struct.ixgbe_fcoe_ddp_pool = type { i64, i64, %struct.dma_pool* }
%struct.dma_pool = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"ixgbe_fcoe_ddp_%d\00", align 1
@IXGBE_FCPTR_MAX = common dso_local global i32 0, align 4
@IXGBE_FCPTR_ALIGN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_fcoe*, %struct.device*, i32)* @ixgbe_fcoe_dma_pool_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_fcoe_dma_pool_alloc(%struct.ixgbe_fcoe* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_fcoe*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_fcoe_ddp_pool*, align 8
  %9 = alloca %struct.dma_pool*, align 8
  %10 = alloca [32 x i8], align 16
  store %struct.ixgbe_fcoe* %0, %struct.ixgbe_fcoe** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @snprintf(i8* %11, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @IXGBE_FCPTR_MAX, align 4
  %17 = load i32, i32* @IXGBE_FCPTR_ALIGN, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call %struct.dma_pool* @dma_pool_create(i8* %14, %struct.device* %15, i32 %16, i32 %17, i32 %18)
  store %struct.dma_pool* %19, %struct.dma_pool** %9, align 8
  %20 = load %struct.dma_pool*, %struct.dma_pool** %9, align 8
  %21 = icmp ne %struct.dma_pool* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.ixgbe_fcoe_ddp_pool* @per_cpu_ptr(i32 %28, i32 %29)
  store %struct.ixgbe_fcoe_ddp_pool* %30, %struct.ixgbe_fcoe_ddp_pool** %8, align 8
  %31 = load %struct.dma_pool*, %struct.dma_pool** %9, align 8
  %32 = load %struct.ixgbe_fcoe_ddp_pool*, %struct.ixgbe_fcoe_ddp_pool** %8, align 8
  %33 = getelementptr inbounds %struct.ixgbe_fcoe_ddp_pool, %struct.ixgbe_fcoe_ddp_pool* %32, i32 0, i32 2
  store %struct.dma_pool* %31, %struct.dma_pool** %33, align 8
  %34 = load %struct.ixgbe_fcoe_ddp_pool*, %struct.ixgbe_fcoe_ddp_pool** %8, align 8
  %35 = getelementptr inbounds %struct.ixgbe_fcoe_ddp_pool, %struct.ixgbe_fcoe_ddp_pool* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.ixgbe_fcoe_ddp_pool*, %struct.ixgbe_fcoe_ddp_pool** %8, align 8
  %37 = getelementptr inbounds %struct.ixgbe_fcoe_ddp_pool, %struct.ixgbe_fcoe_ddp_pool* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %25, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dma_pool* @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #1

declare dso_local %struct.ixgbe_fcoe_ddp_pool* @per_cpu_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
