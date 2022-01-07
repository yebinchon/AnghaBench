; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_usb_d_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_usb_d_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { i32, %struct.st5481_d_out }
%struct.st5481_d_out = type { %struct.sk_buff*, %struct.TYPE_2__, i32, %struct.urb**, i32 }
%struct.sk_buff = type { i32, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.urb = type { i32, i32, i64, i64, i32, %struct.usb_iso_packet_descriptor*, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@ST_DOUT_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"ep %d urb %d busy %#lx\00", align 1
@EP_D_OUT = common dso_local global i32 0, align 4
@NUM_ISO_PACKETS_D = common dso_local global i32 0, align 4
@SIZE_ISO_PACKETS_D_OUT = common dso_local global i32 0, align 4
@ST_DOUT_WAIT_FOR_UNDERRUN = common dso_local global i32 0, align 4
@PH_DATA = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_adapter*, i32)* @usb_d_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_d_out(%struct.st5481_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.st5481_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st5481_d_out*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %14, i32 0, i32 1
  store %struct.st5481_d_out* %15, %struct.st5481_d_out** %5, align 8
  %16 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %17 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ST_DOUT_NORMAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %177

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %26 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %25, i32 0, i32 4
  %27 = call i64 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @EP_D_OUT, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %33 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %34)
  br label %177

36:                                               ; preds = %23
  %37 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %38 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %37, i32 0, i32 3
  %39 = load %struct.urb**, %struct.urb*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.urb*, %struct.urb** %39, i64 %41
  %43 = load %struct.urb*, %struct.urb** %42, align 8
  store %struct.urb* %43, %struct.urb** %6, align 8
  %44 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %45 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %44, i32 0, i32 0
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %12, align 8
  %47 = load i32, i32* @NUM_ISO_PACKETS_D, align 4
  %48 = load i32, i32* @SIZE_ISO_PACKETS_D_OUT, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %36
  %53 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %54 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %53, i32 0, i32 2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @isdnhdlc_encode(i32* %54, i32* %57, i32 %60, i32* %11, i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @skb_pull(%struct.sk_buff* %66, i32 %67)
  br label %77

69:                                               ; preds = %36
  %70 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %71 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %70, i32 0, i32 2
  %72 = load %struct.urb*, %struct.urb** %6, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @isdnhdlc_encode(i32* %71, i32* null, i32 0, i32* %11, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %52
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %83 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %82, i32 0, i32 1
  %84 = load i32, i32* @ST_DOUT_WAIT_FOR_UNDERRUN, align 4
  %85 = call i32 @FsmChangeState(%struct.TYPE_2__* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load %struct.st5481_d_out*, %struct.st5481_d_out** %5, align 8
  %96 = getelementptr inbounds %struct.st5481_d_out, %struct.st5481_d_out* %95, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %96, align 8
  %97 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %98 = load i32, i32* @PH_DATA, align 4
  %99 = load i32, i32* @CONFIRM, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @D_L1L2(%struct.st5481_adapter* %97, i32 %100, i32* null)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %94, %89, %86
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.urb*, %struct.urb** %6, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %138, %104
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %146

112:                                              ; preds = %108
  %113 = load %struct.urb*, %struct.urb** %6, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 5
  %115 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %115, i64 %117
  store %struct.usb_iso_packet_descriptor* %118, %struct.usb_iso_packet_descriptor** %13, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %121 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @SIZE_ISO_PACKETS_D_OUT, align 4
  %123 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %124 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub i32 %125, %126
  %128 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %129 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ult i32 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %112
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub i32 %133, %134
  %136 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %137 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %112
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %7, align 4
  %141 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %142 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %8, align 4
  br label %108

146:                                              ; preds = %108
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.urb*, %struct.urb** %6, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.urb*, %struct.urb** %6, align 8
  %154 = getelementptr inbounds %struct.urb, %struct.urb* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.urb*, %struct.urb** %6, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @usb_get_current_frame_number(i32 %159)
  %161 = add nsw i64 %160, 2
  %162 = load %struct.urb*, %struct.urb** %6, align 8
  %163 = getelementptr inbounds %struct.urb, %struct.urb* %162, i32 0, i32 3
  store i64 %161, i64* %163, align 8
  %164 = load %struct.urb*, %struct.urb** %6, align 8
  %165 = call i32 @DBG_ISO_PACKET(i32 32, %struct.urb* %164)
  %166 = load %struct.urb*, %struct.urb** %6, align 8
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i64 @usb_submit_urb(%struct.urb* %166, i32 %167)
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %146
  %171 = load i64, i64* @URB_ISO_ASAP, align 8
  %172 = load %struct.urb*, %struct.urb** %6, align 8
  %173 = getelementptr inbounds %struct.urb, %struct.urb* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  %174 = load %struct.urb*, %struct.urb** %6, align 8
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i32 @SUBMIT_URB(%struct.urb* %174, i32 %175)
  br label %177

177:                                              ; preds = %22, %29, %170, %146
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @isdnhdlc_encode(i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @D_L1L2(%struct.st5481_adapter*, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @usb_get_current_frame_number(i32) #1

declare dso_local i32 @DBG_ISO_PACKET(i32, %struct.urb*) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @SUBMIT_URB(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
