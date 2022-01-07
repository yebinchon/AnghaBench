; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_rx_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_rx_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.rx_ring_info*, %struct.TYPE_2__* }
%struct.rx_ring_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies_64 = common dso_local global i32 0, align 4
@RX_DMA_CK_DIV = common dso_local global i32 0, align 4
@RED_RAN_INIT = common dso_local global i32 0, align 4
@RED_RAN_INIT_OPMODE = common dso_local global i32 0, align 4
@RED_RAN_INIT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_rx_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_rx_channels(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %9 = load i32, i32* @jiffies_64, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @niu_lock_parent(%struct.niu* %10, i64 %11)
  %13 = load i32, i32* @RX_DMA_CK_DIV, align 4
  %14 = load %struct.niu*, %struct.niu** %3, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nw64(i32 %13, i32 %18)
  %20 = load i32, i32* @RED_RAN_INIT, align 4
  %21 = load i32, i32* @RED_RAN_INIT_OPMODE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RED_RAN_INIT_VAL, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %21, %24
  %26 = call i32 @nw64(i32 %20, i32 %25)
  %27 = load %struct.niu*, %struct.niu** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @niu_unlock_parent(%struct.niu* %27, i64 %28)
  %30 = load %struct.niu*, %struct.niu** %3, align 8
  %31 = call i32 @niu_init_rdc_groups(%struct.niu* %30)
  %32 = load %struct.niu*, %struct.niu** %3, align 8
  %33 = call i32 @niu_init_drr_weight(%struct.niu* %32)
  %34 = load %struct.niu*, %struct.niu** %3, align 8
  %35 = call i32 @niu_init_hostinfo(%struct.niu* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.niu*, %struct.niu** %3, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load %struct.niu*, %struct.niu** %3, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 1
  %50 = load %struct.rx_ring_info*, %struct.rx_ring_info** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %50, i64 %52
  store %struct.rx_ring_info* %53, %struct.rx_ring_info** %8, align 8
  %54 = load %struct.niu*, %struct.niu** %3, align 8
  %55 = load %struct.rx_ring_info*, %struct.rx_ring_info** %8, align 8
  %56 = call i32 @niu_init_one_rx_channel(%struct.niu* %54, %struct.rx_ring_info* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %41

65:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %38
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @niu_lock_parent(%struct.niu*, i64) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @niu_unlock_parent(%struct.niu*, i64) #1

declare dso_local i32 @niu_init_rdc_groups(%struct.niu*) #1

declare dso_local i32 @niu_init_drr_weight(%struct.niu*) #1

declare dso_local i32 @niu_init_hostinfo(%struct.niu*) #1

declare dso_local i32 @niu_init_one_rx_channel(%struct.niu*, %struct.rx_ring_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
