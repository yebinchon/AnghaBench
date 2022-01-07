; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.vmxnet3_tx_buf_info* }
%struct.TYPE_3__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64, i64, i32, i8* }
%struct.vmxnet3_tx_buf_info = type { i64, i32* }
%struct.vmxnet3_adapter = type { i32 }

@VMXNET3_MAP_NONE = common dso_local global i64 0, align 8
@VMXNET3_INIT_GEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_tq_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_tq_cleanup(%struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_queue*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmxnet3_tx_buf_info*, align 8
  store %struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_tx_queue** %3, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %4, align 8
  br label %7

7:                                                ; preds = %42, %2
  %8 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %11, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %7
  %18 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %18, i32 0, i32 2
  %20 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %19, align 8
  %21 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %20, i64 %24
  store %struct.vmxnet3_tx_buf_info* %25, %struct.vmxnet3_tx_buf_info** %6, align 8
  %26 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %6, align 8
  %27 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vmxnet3_unmap_tx_buf(%struct.vmxnet3_tx_buf_info* %26, i32 %29)
  %31 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %6, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %17
  %36 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %6, align 8
  %37 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @dev_kfree_skb_any(i32* %38)
  %40 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %6, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %17
  %43 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %43, i32 0, i32 1
  %45 = call i32 @vmxnet3_cmd_ring_adv_next2comp(%struct.TYPE_4__* %44)
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %50 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %47
  %55 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %55, i32 0, i32 2
  %57 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %57, i64 %59
  %61 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %54
  %65 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %65, i32 0, i32 2
  %67 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %67, i64 %69
  %71 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VMXNET3_MAP_NONE, align 8
  %74 = icmp ne i64 %72, %73
  br label %75

75:                                               ; preds = %64, %54
  %76 = phi i1 [ true, %54 ], [ %74, %64 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %47

82:                                               ; preds = %47
  %83 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %84 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %85 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i8* %83, i8** %86, align 8
  %87 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %88 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %91 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load i8*, i8** @VMXNET3_INIT_GEN, align 8
  %94 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %3, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  ret void
}

declare dso_local i32 @vmxnet3_unmap_tx_buf(%struct.vmxnet3_tx_buf_info*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @vmxnet3_cmd_ring_adv_next2comp(%struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
