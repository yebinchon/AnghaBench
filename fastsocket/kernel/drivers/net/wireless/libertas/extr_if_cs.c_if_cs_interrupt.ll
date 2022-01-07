; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_cs_card = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i64, %struct.if_cs_card*, i32, i32*, i32* }
%struct.sk_buff = type { i32 }

@LBS_DEB_CS = common dso_local global i32 0, align 4
@IF_CS_CARD_INT_CAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cause 0x%04x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IF_CS_BIT_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rx packet\0A\00", align 1
@IF_CS_BIT_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tx done\0A\00", align 1
@IF_CS_BIT_RESP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"cmd resp\0A\00", align 1
@IF_CS_BIT_EVENT = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS_MASK = common dso_local global i32 0, align 4
@IF_CS_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @if_cs_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.if_cs_card*, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.if_cs_card*
  store %struct.if_cs_card* %14, %struct.if_cs_card** %6, align 8
  %15 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %16 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %15, i32 0, i32 0
  %17 = load %struct.lbs_private*, %struct.lbs_private** %16, align 8
  store %struct.lbs_private* %17, %struct.lbs_private** %7, align 8
  %18 = load i32, i32* @LBS_DEB_CS, align 4
  %19 = call i32 @lbs_deb_enter(i32 %18)
  %20 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %21 = load i32, i32* @IF_CS_CARD_INT_CAUSE, align 4
  %22 = call i32 @if_cs_read16(%struct.if_cs_card* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %149

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 65535
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %34 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %33, i32 0, i32 0
  %35 = load %struct.lbs_private*, %struct.lbs_private** %34, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %149

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IF_CS_BIT_RX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %46 = call %struct.sk_buff* @if_cs_receive_data(%struct.lbs_private* %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %9, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = call i32 @lbs_process_rxed_packet(%struct.lbs_private* %50, %struct.sk_buff* %51)
  br label %53

53:                                               ; preds = %49, %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IF_CS_BIT_TX, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %62 = call i32 @lbs_host_to_card_done(%struct.lbs_private* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IF_CS_BIT_RESP, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %116

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %71 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %70, i32 0, i32 3
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %75 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %11, align 8
  %81 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %82 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %81, i32 0, i32 3
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %86 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BUG_ON(i32 %90)
  %92 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %93 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %94 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %100 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = call i32 @if_cs_receive_cmdres(%struct.lbs_private* %92, i32 %98, i32* %103)
  %105 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %106 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %105, i32 0, i32 3
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @spin_lock_irqsave(i32* %106, i64 %107)
  %109 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @lbs_notify_command_response(%struct.lbs_private* %109, i64 %110)
  %112 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %113 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %112, i32 0, i32 3
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  br label %116

116:                                              ; preds = %68, %63
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @IF_CS_BIT_EVENT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %123 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %122, i32 0, i32 2
  %124 = load %struct.if_cs_card*, %struct.if_cs_card** %123, align 8
  %125 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %126 = call i32 @if_cs_read16(%struct.if_cs_card* %124, i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %128 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %127, i32 0, i32 2
  %129 = load %struct.if_cs_card*, %struct.if_cs_card** %128, align 8
  %130 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %131 = load i32, i32* @IF_CS_BIT_EVENT, align 4
  %132 = call i32 @if_cs_write16(%struct.if_cs_card* %129, i32 %130, i32 %131)
  %133 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @IF_CS_CARD_STATUS_MASK, align 4
  %136 = and i32 %134, %135
  %137 = ashr i32 %136, 8
  %138 = call i32 @lbs_queue_event(%struct.lbs_private* %133, i32 %137)
  br label %139

139:                                              ; preds = %121, %116
  %140 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %141 = load i32, i32* @IF_CS_CARD_INT_CAUSE, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @IF_CS_BIT_MASK, align 4
  %144 = and i32 %142, %143
  %145 = call i32 @if_cs_write16(%struct.if_cs_card* %140, i32 %141, i32 %144)
  %146 = load i32, i32* @LBS_DEB_CS, align 4
  %147 = call i32 @lbs_deb_leave(i32 %146)
  %148 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %139, %32, %27
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @lbs_deb_cs(i8*, ...) #1

declare dso_local %struct.sk_buff* @if_cs_receive_data(%struct.lbs_private*) #1

declare dso_local i32 @lbs_process_rxed_packet(%struct.lbs_private*, %struct.sk_buff*) #1

declare dso_local i32 @lbs_host_to_card_done(%struct.lbs_private*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @if_cs_receive_cmdres(%struct.lbs_private*, i32, i32*) #1

declare dso_local i32 @lbs_notify_command_response(%struct.lbs_private*, i64) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @lbs_queue_event(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
