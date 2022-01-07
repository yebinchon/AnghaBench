; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_tx_d_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc4s8s_l1.c_tx_d_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc4s8s_l1 = type { i32, i32, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i8*)* }
%struct.sk_buff = type { i32*, i64, i64 }

@R_FIFO = common dso_local global i32 0, align 4
@A_F1 = common dso_local global i32 0, align 4
@A_F2 = common dso_local global i32 0, align 4
@MAX_F_CNT = common dso_local global i32 0, align 4
@PH_DATA = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@A_FIFO_DATA0 = common dso_local global i32 0, align 4
@A_INC_RES_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc4s8s_l1*)* @tx_d_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_d_frame(%struct.hfc4s8s_l1* %0) #0 {
  %2 = alloca %struct.hfc4s8s_l1*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.hfc4s8s_l1* %0, %struct.hfc4s8s_l1** %2, align 8
  %8 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %9 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %137

13:                                               ; preds = %1
  %14 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %15 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @R_FIFO, align 4
  %18 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %19 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 %21, 4
  %23 = call i32 @Write_hfc8(i32 %16, i32 %17, i32 %22)
  %24 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %25 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wait_busy(i32 %26)
  %28 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %29 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @A_F1, align 4
  %32 = call i32 @Read_hfc8(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %34 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @A_F2, align 4
  %37 = call i32 @Read_hfc8_stable(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, i32* @MAX_F_CNT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %13
  br label %137

45:                                               ; preds = %13
  %46 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %47 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %52 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  %54 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %55 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %57 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_4__*, i32, i8*)*, i32 (%struct.TYPE_4__*, i32, i8*)** %59, align 8
  %61 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %62 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* @PH_DATA, align 4
  %65 = load i32, i32* @CONFIRM, align 4
  %66 = or i32 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 %60(%struct.TYPE_4__* %63, i32 %66, i8* %68)
  br label %70

70:                                               ; preds = %50, %45
  %71 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %72 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %71, i32 0, i32 4
  %73 = call %struct.sk_buff* @skb_dequeue(i32* %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %3, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %75, label %137

75:                                               ; preds = %70
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %6, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %7, align 8
  %82 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %83 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @A_FIFO_DATA0, align 4
  %86 = call i32 @SetRegAddr(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %90, %75
  %88 = load i64, i64* %7, align 8
  %89 = icmp sge i64 %88, 4
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %92 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @A_FIFO_DATA0, align 4
  %95 = call i32 @SetRegAddr(i32 %93, i32 %94)
  %96 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %97 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = bitcast i32* %99 to i64*
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i32, i64, ...) @fWrite_hfc32(i32 %98, i64 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32* %104, i32** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub nsw i64 %105, 4
  store i64 %106, i64* %7, align 8
  br label %87

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %112, %107
  %109 = load i64, i64* %7, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %7, align 8
  %111 = icmp ne i64 %109, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %114 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %6, align 8
  %118 = load i32, i32* %116, align 4
  %119 = call i32 (i32, i32, ...) @fWrite_hfc8(i32 %115, i32 %118)
  br label %108

120:                                              ; preds = %108
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %125 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %127 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @A_INC_RES_FIFO, align 4
  %130 = call i32 @Write_hfc8(i32 %128, i32 %129, i32 1)
  %131 = load %struct.hfc4s8s_l1*, %struct.hfc4s8s_l1** %2, align 8
  %132 = getelementptr inbounds %struct.hfc4s8s_l1, %struct.hfc4s8s_l1* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @wait_busy(i32 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = call i32 @dev_kfree_skb(%struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %12, %44, %120, %70
  ret void
}

declare dso_local i32 @Write_hfc8(i32, i32, i32) #1

declare dso_local i32 @wait_busy(i32) #1

declare dso_local i32 @Read_hfc8(i32, i32) #1

declare dso_local i32 @Read_hfc8_stable(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @SetRegAddr(i32, i32) #1

declare dso_local i32 @fWrite_hfc32(i32, i64, ...) #1

declare dso_local i32 @fWrite_hfc8(i32, i32, ...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
