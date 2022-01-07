; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_port_free_tx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_port_free_tx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i32, i32, i64, i64, i32*, i32 }

@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VNET_TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnet_port*)* @vnet_port_free_tx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnet_port_free_tx_bufs(%struct.vnet_port* %0) #0 {
  %2 = alloca %struct.vnet_port*, align 8
  %3 = alloca %struct.vio_dring_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %2, align 8
  %6 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %7 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.vio_dring_state*, %struct.vio_dring_state** %8, align 8
  %10 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %11 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %9, i64 %10
  store %struct.vio_dring_state* %11, %struct.vio_dring_state** %3, align 8
  %12 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %13 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %18 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %22 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %25 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %28 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %32 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %35 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ldc_free_exp_dring(i32 %20, i32* %23, i32 %30, i32 %33, i64 %36)
  %38 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %39 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %41 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %43 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %45 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.vio_dring_state*, %struct.vio_dring_state** %3, align 8
  %47 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %16, %1
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %97, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @VNET_TX_RING_SIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %49
  %54 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %55 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %97

66:                                               ; preds = %53
  %67 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %68 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %72 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %80 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ldc_unmap(i32 %70, i32 %78, i32 %86)
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @kfree(i8* %88)
  %90 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %91 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %66, %65
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %49

100:                                              ; preds = %49
  ret void
}

declare dso_local i32 @ldc_free_exp_dring(i32, i32*, i32, i32, i64) #1

declare dso_local i32 @ldc_unmap(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
