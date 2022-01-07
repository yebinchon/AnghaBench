; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_dout_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_dout_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.st5481_adapter* }
%struct.st5481_adapter = type { i32, %struct.st5481_d_out }
%struct.st5481_d_out = type { %struct.sk_buff*, i32, i32, %struct.urb**, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.urb = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"len=%d\00", align 1
@HDLC_DCHANNEL = common dso_local global i32 0, align 4
@HDLC_BITREVERSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ep %d urb %d busy %#lx\00", align 1
@EP_D_OUT = common dso_local global i32 0, align 4
@ST_DOUT_SHORT_INIT = common dso_local global i32 0, align 4
@ST_DOUT_LONG_INIT = common dso_local global i32 0, align 4
@PH_DATA = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @dout_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dout_start_xmit(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.st5481_adapter*, align 8
  %8 = alloca %struct.st5481_d_out*, align 8
  %9 = alloca %struct.urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %15 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %14, i32 0, i32 0
  %16 = load %struct.st5481_adapter*, %struct.st5481_adapter** %15, align 8
  store %struct.st5481_adapter* %16, %struct.st5481_adapter** %7, align 8
  %17 = load %struct.st5481_adapter*, %struct.st5481_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %17, i32 0, i32 1
  store %struct.st5481_d_out* %18, %struct.st5481_d_out** %8, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %20 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %12, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %27 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %26, i32 0, i32 2
  %28 = load i32, i32* @HDLC_DCHANNEL, align 4
  %29 = load i32, i32* @HDLC_BITREVERSE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @isdnhdlc_out_init(i32* %27, i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %34 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %33, i32 0, i32 4
  %35 = call i64 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load i32, i32* @EP_D_OUT, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %41 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @WARNING(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %42)
  br label %126

44:                                               ; preds = %3
  %45 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %46 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %45, i32 0, i32 3
  %47 = load %struct.urb**, %struct.urb*** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.urb*, %struct.urb** %47, i64 %49
  %51 = load %struct.urb*, %struct.urb** %50, align 8
  store %struct.urb* %51, %struct.urb** %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = call i32 @DBG_SKB(i32 16, %struct.sk_buff* %52)
  %54 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %55 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %54, i32 0, i32 2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.urb*, %struct.urb** %9, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @isdnhdlc_encode(i32* %55, i32 %58, i32 %61, i32* %11, i32 %64, i32 16)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @skb_pull(%struct.sk_buff* %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %71, label %76

71:                                               ; preds = %44
  %72 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %73 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %72, i32 0, i32 1
  %74 = load i32, i32* @ST_DOUT_SHORT_INIT, align 4
  %75 = call i32 @FsmChangeState(i32* %73, i32 %74)
  br label %81

76:                                               ; preds = %44
  %77 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %78 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %77, i32 0, i32 1
  %79 = load i32, i32* @ST_DOUT_LONG_INIT, align 4
  %80 = call i32 @FsmChangeState(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.st5481_d_out*, %struct.st5481_d_out** %8, align 8
  %88 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %87, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %88, align 8
  %89 = load %struct.st5481_adapter*, %struct.st5481_adapter** %7, align 8
  %90 = load i32, i32* @PH_DATA, align 4
  %91 = load i32, i32* @CONFIRM, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @D_L1L2(%struct.st5481_adapter* %89, i32 %92, i32* null)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %86, %81
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.urb*, %struct.urb** %9, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.urb*, %struct.urb** %9, align 8
  %101 = getelementptr inbounds %struct.urb, %struct.urb* %100, i32 0, i32 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.urb*, %struct.urb** %9, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 8
  %111 = load %struct.urb*, %struct.urb** %9, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.st5481_adapter*, %struct.st5481_adapter** %7, align 8
  %114 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.urb*, %struct.urb** %9, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @URB_ISO_ASAP, align 4
  %119 = load %struct.urb*, %struct.urb** %9, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.urb*, %struct.urb** %9, align 8
  %122 = call i32 @DBG_ISO_PACKET(i32 32, %struct.urb* %121)
  %123 = load %struct.urb*, %struct.urb** %9, align 8
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i32 @SUBMIT_URB(%struct.urb* %123, i32 %124)
  br label %126

126:                                              ; preds = %96, %37
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @isdnhdlc_out_init(i32*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @WARNING(i8*, i32, i32, i32) #1

declare dso_local i32 @DBG_SKB(i32, %struct.sk_buff*) #1

declare dso_local i32 @isdnhdlc_encode(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @FsmChangeState(i32*, i32) #1

declare dso_local i32 @D_L1L2(%struct.st5481_adapter*, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @DBG_ISO_PACKET(i32, %struct.urb*) #1

declare dso_local i32 @SUBMIT_URB(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
