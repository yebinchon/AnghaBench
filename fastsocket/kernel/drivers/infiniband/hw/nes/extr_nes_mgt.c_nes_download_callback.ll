; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_download_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_download_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_cqp_request = type { %struct.pau_fpdu_info* }
%struct.pau_fpdu_info = type { i32, i32, i64, i32, %struct.TYPE_2__*, %struct.nes_qp* }
%struct.TYPE_2__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.nes_qp = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_cqp_request*)* @nes_download_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_download_callback(%struct.nes_device* %0, %struct.nes_cqp_request* %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_cqp_request*, align 8
  %5 = alloca %struct.pau_fpdu_info*, align 8
  %6 = alloca %struct.nes_qp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store %struct.nes_cqp_request* %1, %struct.nes_cqp_request** %4, align 8
  %9 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %10 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %9, i32 0, i32 0
  %11 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %10, align 8
  store %struct.pau_fpdu_info* %11, %struct.pau_fpdu_info** %5, align 8
  %12 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %13 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %12, i32 0, i32 5
  %14 = load %struct.nes_qp*, %struct.nes_qp** %13, align 8
  store %struct.nes_qp* %14, %struct.nes_qp** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %49, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %18 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %23 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %7, align 8
  %30 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %31 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %21
  %40 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %43 = call i32 @nes_mgt_free_skb(%struct.nes_device* %40, %struct.sk_buff* %41, i32 %42)
  %44 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %45 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nes_rem_ref_cm_node(i32 %46)
  br label %48

48:                                               ; preds = %39, %21
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %54 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %59 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %62 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %65 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %68 = getelementptr inbounds %struct.pau_fpdu_info, %struct.pau_fpdu_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pci_free_consistent(i32 %60, i32 %63, i64 %66, i32 %69)
  br label %71

71:                                               ; preds = %57, %52
  %72 = load %struct.pau_fpdu_info*, %struct.pau_fpdu_info** %5, align 8
  %73 = call i32 @kfree(%struct.pau_fpdu_info* %72)
  ret void
}

declare dso_local i32 @nes_mgt_free_skb(%struct.nes_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nes_rem_ref_cm_node(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.pau_fpdu_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
