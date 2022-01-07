; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i64 }
%struct.sk_buff = type { i32, i32 }
%union.Vmxnet3_GenericDesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i32 }

@VMXNET3_RCD_CSUM_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*, %struct.sk_buff*, %union.Vmxnet3_GenericDesc*)* @vmxnet3_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_rx_csum(%struct.vmxnet3_adapter* %0, %struct.sk_buff* %1, %union.Vmxnet3_GenericDesc* %2) #0 {
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %union.Vmxnet3_GenericDesc* %2, %union.Vmxnet3_GenericDesc** %6, align 8
  %7 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %8 = bitcast %union.Vmxnet3_GenericDesc* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %91, label %12

12:                                               ; preds = %3
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %12
  %18 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %19 = bitcast %union.Vmxnet3_GenericDesc* %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = load i32, i32* @VMXNET3_RCD_CSUM_OK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @VMXNET3_RCD_CSUM_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %17
  %29 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %33 = bitcast %union.Vmxnet3_GenericDesc* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %39 = bitcast %union.Vmxnet3_GenericDesc* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %28
  %44 = phi i1 [ true, %28 ], [ %42, %37 ]
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %49 = bitcast %union.Vmxnet3_GenericDesc* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %43
  %54 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %55 = bitcast %union.Vmxnet3_GenericDesc* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %53, %43
  %60 = phi i1 [ true, %43 ], [ %58, %53 ]
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %65 = bitcast %union.Vmxnet3_GenericDesc* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @BUG_ON(i32 %67)
  br label %90

69:                                               ; preds = %17
  %70 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %71 = bitcast %union.Vmxnet3_GenericDesc* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %77 = bitcast %union.Vmxnet3_GenericDesc* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @htons(i64 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %89

86:                                               ; preds = %69
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %87)
  br label %89

89:                                               ; preds = %86, %75
  br label %90

90:                                               ; preds = %89, %59
  br label %94

91:                                               ; preds = %12, %3
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %90
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
