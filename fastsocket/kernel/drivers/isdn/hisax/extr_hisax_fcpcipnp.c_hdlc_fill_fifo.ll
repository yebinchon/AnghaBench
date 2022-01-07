; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_bcs = type { i32, i64, i32, i32, %struct.TYPE_4__, %struct.sk_buff*, %struct.fritz_adapter* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64, i8* }
%struct.fritz_adapter = type { i32, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"hdlc_fill_fifo\00", align 1
@HDLC_CMD_XME = common dso_local global i32 0, align 4
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"hdlc_fill_fifo %d/%d\00", align 1
@AVM_DATA = common dso_local global i64 0, align 8
@HDLC_FIFO = common dso_local global i64 0, align 8
@AVM_HDLC_FIFO_2 = common dso_local global i64 0, align 8
@AVM_HDLC_FIFO_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritz_bcs*)* @hdlc_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_fill_fifo(%struct.fritz_bcs* %0) #0 {
  %2 = alloca %struct.fritz_bcs*, align 8
  %3 = alloca %struct.fritz_adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.fritz_bcs* %0, %struct.fritz_bcs** %2, align 8
  %8 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %9 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %8, i32 0, i32 6
  %10 = load %struct.fritz_adapter*, %struct.fritz_adapter** %9, align 8
  store %struct.fritz_adapter* %10, %struct.fritz_adapter** %3, align 8
  %11 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %12 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %11, i32 0, i32 5
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = call i32 (i32, i8*, ...) @DBG(i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* @HDLC_CMD_XME, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %24 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %30 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %29, i32 0, i32 5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %35 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp sgt i64 %33, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %41 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  br label %64

43:                                               ; preds = %1
  %44 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %45 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %44, i32 0, i32 5
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %51 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @L1_MODE_TRANS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load i32, i32* @HDLC_CMD_XME, align 4
  %57 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %58 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %55, %43
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %67 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %66, i32 0, i32 5
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32, i8*, ...) @DBG(i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %70)
  %72 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %73 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %72, i32 0, i32 5
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %7, align 8
  %77 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %78 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %77, i32 0, i32 5
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @skb_pull(%struct.sk_buff* %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %84 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %89 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %64
  br label %95

93:                                               ; preds = %64
  %94 = load i32, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 0, %92 ], [ %94, %93 ]
  %97 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %98 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  %101 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %168 [
    i32 130, label %104
    i32 129, label %127
    i32 128, label %149
  ]

104:                                              ; preds = %95
  %105 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %105, i32 0, i32 1
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @spin_lock_irqsave(i32* %106, i64 %107)
  %109 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %110 = call i32 @__fcpci_write_ctrl(%struct.fritz_bcs* %109, i32 3)
  %111 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AVM_DATA, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i64, i64* @HDLC_FIFO, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 3
  %121 = sdiv i32 %120, 4
  %122 = call i32 @outsl(i64 %117, i8* %118, i32 %121)
  %123 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %123, i32 0, i32 1
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  br label %168

127:                                              ; preds = %95
  %128 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %129 = call i32 @fcpci2_write_ctrl(%struct.fritz_bcs* %128, i32 3)
  %130 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %134 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i64, i64* @AVM_HDLC_FIFO_2, align 8
  br label %141

139:                                              ; preds = %127
  %140 = load i64, i64* @AVM_HDLC_FIFO_1, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i64 [ %138, %137 ], [ %140, %139 ]
  %143 = add nsw i64 %132, %142
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 3
  %147 = sdiv i32 %146, 4
  %148 = call i32 @outsl(i64 %143, i8* %144, i32 %147)
  br label %168

149:                                              ; preds = %95
  %150 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %150, i32 0, i32 1
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @spin_lock_irqsave(i32* %151, i64 %152)
  %154 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %155 = call i32 @__fcpnp_write_ctrl(%struct.fritz_bcs* %154, i32 3)
  %156 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @AVM_DATA, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i8*, i8** %7, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @outsb(i64 %160, i8* %161, i32 %162)
  %164 = load %struct.fritz_adapter*, %struct.fritz_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %164, i32 0, i32 1
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  br label %168

168:                                              ; preds = %95, %149, %141, %104
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__fcpci_write_ctrl(%struct.fritz_bcs*, i32) #1

declare dso_local i32 @outsl(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fcpci2_write_ctrl(%struct.fritz_bcs*, i32) #1

declare dso_local i32 @__fcpnp_write_ctrl(%struct.fritz_bcs*, i32) #1

declare dso_local i32 @outsb(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
