; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_get_next_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_nes_get_next_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_qp = type { i32, i32 }
%struct.sk_buff = type { %struct.sk_buff*, i64 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nes_device*, %struct.nes_qp*, %struct.sk_buff*, i32, i32*, i32*, i32*, i32*)* @nes_get_next_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nes_get_next_skb(%struct.nes_device* %0, %struct.nes_qp* %1, %struct.sk_buff* %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nes_device*, align 8
  %11 = alloca %struct.nes_qp*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %10, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %11, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %28 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %27, i32 0, i32 1
  %29 = bitcast i32* %28 to %struct.sk_buff*
  %30 = icmp eq %struct.sk_buff* %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %102

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %12, align 8
  store i32 0, i32* %19, align 4
  br label %46

36:                                               ; preds = %8
  %37 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %38 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %37, i32 0, i32 1
  %39 = call i64 @skb_queue_empty(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %102

42:                                               ; preds = %36
  %43 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %44 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %43, i32 0, i32 1
  %45 = call %struct.sk_buff* @skb_peek(i32* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %12, align 8
  store i32 1, i32* %19, align 4
  br label %46

46:                                               ; preds = %42, %32
  br label %47

47:                                               ; preds = %46, %83
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @nes_get_seq(%struct.sk_buff* %48, i32* %49, i32* %50, i32* %51, i32* %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %57
  br label %100

66:                                               ; preds = %62
  br label %74

67:                                               ; preds = %47
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @after(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %102

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %66
  %75 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load %struct.sk_buff*, %struct.sk_buff** %76, align 8
  %78 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %79 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %78, i32 0, i32 1
  %80 = bitcast i32* %79 to %struct.sk_buff*
  %81 = icmp eq %struct.sk_buff* %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %102

83:                                               ; preds = %74
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %20, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %12, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %89 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %90 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %89, i32 0, i32 1
  %91 = call i32 @skb_unlink(%struct.sk_buff* %88, i32* %90)
  %92 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %94 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %95 = call i32 @nes_mgt_free_skb(%struct.nes_device* %92, %struct.sk_buff* %93, i32 %94)
  %96 = load %struct.nes_qp*, %struct.nes_qp** %11, align 8
  %97 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @nes_rem_ref_cm_node(i32 %98)
  br label %47

100:                                              ; preds = %65
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %9, align 8
  br label %103

102:                                              ; preds = %82, %72, %41, %31
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %103

103:                                              ; preds = %102, %100
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %104
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @nes_get_seq(%struct.sk_buff*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @nes_mgt_free_skb(%struct.nes_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nes_rem_ref_cm_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
