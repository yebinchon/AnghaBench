; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_ddp_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_ddp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_fcoe = type { i32, %struct.ixgbe_fcoe_ddp* }
%struct.ixgbe_fcoe_ddp = type { i32, i32*, i32, i32, i32, i64, i64 }
%struct.ixgbe_adapter = type { %struct.TYPE_2__*, i32, %struct.ixgbe_fcoe }
%struct.TYPE_2__ = type { i32 }

@IXGBE_FCOE_DDP_MAX = common dso_local global i64 0, align 8
@IXGBE_FCFLT = common dso_local global i32 0, align 4
@IXGBE_FCFLTRW = common dso_local global i32 0, align 4
@IXGBE_FCFLTRW_WE = common dso_local global i64 0, align 8
@IXGBE_FCBUFF = common dso_local global i32 0, align 4
@IXGBE_FCDMARW = common dso_local global i32 0, align 4
@IXGBE_FCDMARW_WE = common dso_local global i64 0, align 8
@IXGBE_FCDMARW_RE = common dso_local global i64 0, align 8
@IXGBE_FCBUFF_VALID = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fcoe_ddp_put(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_fcoe*, align 8
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca %struct.ixgbe_fcoe_ddp*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %127

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @IXGBE_FCOE_DDP_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %127

18:                                               ; preds = %13
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %19)
  store %struct.ixgbe_adapter* %20, %struct.ixgbe_adapter** %7, align 8
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 2
  store %struct.ixgbe_fcoe* %22, %struct.ixgbe_fcoe** %6, align 8
  %23 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %6, align 8
  %24 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %23, i32 0, i32 1
  %25 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %25, i64 %26
  store %struct.ixgbe_fcoe_ddp* %27, %struct.ixgbe_fcoe_ddp** %8, align 8
  %28 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %29 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %127

33:                                               ; preds = %18
  %34 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %35 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %38 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %33
  %42 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %6, align 8
  %43 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* @IXGBE_FCFLT, align 4
  %48 = call i32 @IXGBE_WRITE_REG(i32* %46, i32 %47, i64 0)
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* @IXGBE_FCFLTRW, align 4
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @IXGBE_FCFLTRW_WE, align 8
  %54 = or i64 %52, %53
  %55 = call i32 @IXGBE_WRITE_REG(i32* %50, i32 %51, i64 %54)
  %56 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %57 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* @IXGBE_FCBUFF, align 4
  %59 = call i32 @IXGBE_WRITE_REG(i32* %57, i32 %58, i64 0)
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* @IXGBE_FCDMARW, align 4
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @IXGBE_FCDMARW_WE, align 8
  %65 = or i64 %63, %64
  %66 = call i32 @IXGBE_WRITE_REG(i32* %61, i32 %62, i64 %65)
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* @IXGBE_FCDMARW, align 4
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @IXGBE_FCDMARW_RE, align 8
  %72 = or i64 %70, %71
  %73 = call i32 @IXGBE_WRITE_REG(i32* %68, i32 %69, i64 %72)
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* @IXGBE_FCBUFF, align 4
  %77 = call i32 @IXGBE_READ_REG(i32* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %6, align 8
  %79 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @IXGBE_FCBUFF_VALID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %41
  %86 = call i32 @udelay(i32 100)
  br label %87

87:                                               ; preds = %85, %41
  br label %88

88:                                               ; preds = %87, %33
  %89 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %90 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %99 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %102 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %105 = call i32 @dma_unmap_sg(i32* %97, i64 %100, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %93, %88
  %107 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %108 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %113 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %116 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %119 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dma_pool_free(i32* %114, i32 %117, i32 %120)
  %122 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %123 = getelementptr inbounds %struct.ixgbe_fcoe_ddp, %struct.ixgbe_fcoe_ddp* %122, i32 0, i32 1
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %111, %106
  %125 = load %struct.ixgbe_fcoe_ddp*, %struct.ixgbe_fcoe_ddp** %8, align 8
  %126 = call i32 @ixgbe_fcoe_clear_ddp(%struct.ixgbe_fcoe_ddp* %125)
  br label %127

127:                                              ; preds = %124, %32, %17, %12
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(i32*, i32, i64) #1

declare dso_local i32 @IXGBE_READ_REG(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i64, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32*, i32, i32) #1

declare dso_local i32 @ixgbe_fcoe_clear_ddp(%struct.ixgbe_fcoe_ddp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
