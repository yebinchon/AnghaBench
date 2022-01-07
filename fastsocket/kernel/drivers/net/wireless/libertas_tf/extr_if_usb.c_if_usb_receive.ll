; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.if_usb_card* }
%struct.if_usb_card = type { %struct.TYPE_2__*, %struct.lbtf_private*, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }
%struct.lbtf_private = type { i32 }
%struct.sk_buff = type { i32* }

@LBTF_DEB_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RX URB failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Recv length = 0x%x, Recv type = 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"**EVENT** 0x%X\0A\00", align 1
@LBTF_EVENT_BCN_SENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unsupported notification %d received\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"libertastf: unknown command type 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @if_usb_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_receive(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lbtf_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 2
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %15, align 8
  store %struct.if_usb_card* %16, %struct.if_usb_card** %3, align 8
  %17 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %18 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %17, i32 0, i32 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %21 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %20, i32 0, i32 1
  %22 = load %struct.lbtf_private*, %struct.lbtf_private** %21, align 8
  store %struct.lbtf_private* %22, %struct.lbtf_private** %5, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* @LBTF_DEB_USB, align 4
  %30 = call i32 @lbtf_deb_enter(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %1
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %40 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32*, i8*, i32, ...) @lbtf_deb_usbd(i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  br label %144

49:                                               ; preds = %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %58 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32*, i8*, i32, ...) @lbtf_deb_usbd(i32* %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  br label %75

64:                                               ; preds = %1
  %65 = load %struct.urb*, %struct.urb** %2, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  %72 = load i32, i32* @LBTF_DEB_USB, align 4
  %73 = call i32 @lbtf_deb_leave(i32 %72)
  br label %149

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %134 [
    i32 130, label %77
    i32 128, label %83
    i32 129, label %90
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %81 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %82 = call i32 @process_cmdtypedata(i32 %78, %struct.sk_buff* %79, %struct.if_usb_card* %80, %struct.lbtf_private* %81)
  br label %143

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %88 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %89 = call i32 @process_cmdrequest(i32 %84, i32* %85, %struct.sk_buff* %86, %struct.if_usb_card* %87, %struct.lbtf_private* %88)
  br label %143

90:                                               ; preds = %75
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %96 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i32*, i8*, i32, ...) @lbtf_deb_usbd(i32* %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, -65536
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %90
  %105 = load i32, i32* %10, align 4
  %106 = ashr i32 %105, 16
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 255
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 65280
  %111 = ashr i32 %110, 8
  store i32 %111, i32* %13, align 4
  %112 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @lbtf_send_tx_feedback(%struct.lbtf_private* %112, i32 %113, i32 %114)
  br label %131

116:                                              ; preds = %90
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @LBTF_EVENT_BCN_SENT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %122 = call i32 @lbtf_bcn_sent(%struct.lbtf_private* %121)
  br label %130

123:                                              ; preds = %116
  %124 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %125 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %10, align 4
  %129 = call i32 (i32*, i8*, i32, ...) @lbtf_deb_usbd(i32* %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %123, %120
  br label %131

131:                                              ; preds = %130, %104
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  br label %143

134:                                              ; preds = %75
  %135 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %136 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32*, i8*, i32, ...) @lbtf_deb_usbd(i32* %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 @kfree_skb(%struct.sk_buff* %141)
  br label %143

143:                                              ; preds = %134, %131, %83, %77
  br label %144

144:                                              ; preds = %143, %38
  %145 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %146 = call i32 @if_usb_submit_rx_urb(%struct.if_usb_card* %145)
  %147 = load i32, i32* @LBTF_DEB_USB, align 4
  %148 = call i32 @lbtf_deb_leave(i32 %147)
  br label %149

149:                                              ; preds = %144, %69
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*, i32, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

declare dso_local i32 @process_cmdtypedata(i32, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbtf_private*) #1

declare dso_local i32 @process_cmdrequest(i32, i32*, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbtf_private*) #1

declare dso_local i32 @lbtf_send_tx_feedback(%struct.lbtf_private*, i32, i32) #1

declare dso_local i32 @lbtf_bcn_sent(%struct.lbtf_private*) #1

declare dso_local i32 @if_usb_submit_rx_urb(%struct.if_usb_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
