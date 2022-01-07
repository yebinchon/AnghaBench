; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_push_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_nic_push_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32, %struct.efx_tx_buffer* }
%struct.efx_tx_buffer = type { i32, i32, i32 }

@EFX_TX_BUF_CONT = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_CONT = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_BYTE_COUNT = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_BUF_REGION = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_BUF_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_nic_push_buffers(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_tx_buffer*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %7 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %14 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  br label %19

19:                                               ; preds = %62, %1
  %20 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %24 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %27, i32 0, i32 4
  %29 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %29, i64 %31
  store %struct.efx_tx_buffer* %32, %struct.efx_tx_buffer** %3, align 8
  %33 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @efx_tx_desc(%struct.efx_tx_queue* %33, i32 %34)
  store i32* %35, i32** %4, align 8
  %36 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %37 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @EFX_TX_BUF_CONT, align 4
  %41 = icmp ne i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUILD_BUG_ON(i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FSF_AZ_TX_KER_CONT, align 4
  %47 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @EFX_TX_BUF_CONT, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @FSF_AZ_TX_KER_BYTE_COUNT, align 4
  %53 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %3, align 8
  %54 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FSF_AZ_TX_KER_BUF_REGION, align 4
  %57 = load i32, i32* @FSF_AZ_TX_KER_BUF_ADDR, align 4
  %58 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %3, align 8
  %59 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @EFX_POPULATE_QWORD_4(i32 %45, i32 %46, i32 %51, i32 %52, i32 %55, i32 %56, i32 0, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %19
  %63 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %64 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %67 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %19, label %70

70:                                               ; preds = %62
  %71 = call i32 (...) @wmb()
  %72 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @efx_may_push_tx_desc(%struct.efx_tx_queue* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %80 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  %83 = call i32* @efx_tx_desc(%struct.efx_tx_queue* %77, i32 %82)
  store i32* %83, i32** %4, align 8
  %84 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @efx_push_tx_desc(%struct.efx_tx_queue* %84, i32* %85)
  %87 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %88 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %94

91:                                               ; preds = %70
  %92 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %93 = call i32 @efx_notify_tx_desc(%struct.efx_tx_queue* %92)
  br label %94

94:                                               ; preds = %91, %76
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @efx_tx_desc(%struct.efx_tx_queue*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EFX_POPULATE_QWORD_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @efx_may_push_tx_desc(%struct.efx_tx_queue*, i32) #1

declare dso_local i32 @efx_push_tx_desc(%struct.efx_tx_queue*, i32*) #1

declare dso_local i32 @efx_notify_tx_desc(%struct.efx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
