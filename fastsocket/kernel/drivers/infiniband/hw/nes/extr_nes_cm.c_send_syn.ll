; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_syn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_send_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%union.all_known_options = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@SET_SYN = common dso_local global i32 0, align 4
@TCP_OPTIONS_PADDING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OPTION_NUMBER_MSS = common dso_local global i32 0, align 4
@OPTION_NUMBER_WINDOW_SCALE = common dso_local global i32 0, align 4
@NES_DRV_OPT_SUPRESS_OPTION_BC = common dso_local global i32 0, align 4
@nes_drv_opt = common dso_local global i32 0, align 4
@OPTION_NUMBER_WRITE0 = common dso_local global i32 0, align 4
@OPTION_NUMBER_END = common dso_local global i32 0, align 4
@MAX_CM_BUFFER = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get a Free pkt\0A\00", align 1
@SET_ACK = common dso_local global i32 0, align 4
@NES_TIMER_TYPE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_node*, i64, %struct.sk_buff*)* @send_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_syn(%struct.nes_cm_node* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nes_cm_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.all_known_options*, align 8
  %14 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* @SET_SYN, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @TCP_OPTIONS_PADDING, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 12, %17
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %22 = icmp ne %struct.nes_cm_node* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %150

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %20, i64 %28
  %30 = bitcast i8* %29 to %union.all_known_options*
  store %union.all_known_options* %30, %union.all_known_options** %13, align 8
  %31 = load i32, i32* @OPTION_NUMBER_MSS, align 4
  %32 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %33 = bitcast %union.all_known_options* %32 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %36 = bitcast %union.all_known_options* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 4
  %38 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %39 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @htons(i32 %41)
  %43 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %44 = bitcast %union.all_known_options* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %20, i64 %51
  %53 = bitcast i8* %52 to %union.all_known_options*
  store %union.all_known_options* %53, %union.all_known_options** %13, align 8
  %54 = load i32, i32* @OPTION_NUMBER_WINDOW_SCALE, align 4
  %55 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %56 = bitcast %union.all_known_options* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %59 = bitcast %union.all_known_options* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 4, i32* %60, align 4
  %61 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %62 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %66 = bitcast %union.all_known_options* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %26
  %75 = load i32, i32* @NES_DRV_OPT_SUPRESS_OPTION_BC, align 4
  %76 = load i32, i32* @nes_drv_opt, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %111, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %20, i64 %81
  %83 = bitcast i8* %82 to %union.all_known_options*
  store %union.all_known_options* %83, %union.all_known_options** %13, align 8
  %84 = load i32, i32* @OPTION_NUMBER_WRITE0, align 4
  %85 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %86 = bitcast %union.all_known_options* %85 to %struct.TYPE_8__*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %89 = bitcast %union.all_known_options* %88 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 4, i32* %90, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, 4
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %20, i64 %96
  %98 = bitcast i8* %97 to %union.all_known_options*
  store %union.all_known_options* %98, %union.all_known_options** %13, align 8
  %99 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %100 = bitcast %union.all_known_options* %99 to i32*
  store i32 1, i32* %100, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %20, i64 %104
  %106 = bitcast i8* %105 to %union.all_known_options*
  store %union.all_known_options* %106, %union.all_known_options** %13, align 8
  %107 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %108 = bitcast %union.all_known_options* %107 to i32*
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %79, %74, %26
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %20, i64 %113
  %115 = bitcast i8* %114 to %union.all_known_options*
  store %union.all_known_options* %115, %union.all_known_options** %13, align 8
  %116 = load i32, i32* @OPTION_NUMBER_END, align 4
  %117 = load %union.all_known_options*, %union.all_known_options** %13, align 8
  %118 = bitcast %union.all_known_options* %117 to i32*
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %111
  %124 = load i32, i32* @MAX_CM_BUFFER, align 4
  %125 = call %struct.sk_buff* @dev_alloc_skb(i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %7, align 8
  br label %126

126:                                              ; preds = %123, %111
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = icmp ne %struct.sk_buff* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @NES_DBG_CM, align 4
  %131 = call i32 @nes_debug(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %150

132:                                              ; preds = %126
  %133 = load i64, i64* %6, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* @SET_ACK, align 4
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %135, %132
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @form_cm_frame(%struct.sk_buff* %140, %struct.nes_cm_node* %141, i8* %20, i32 %142, i32* null, i32 0, i32 %143)
  %145 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %147 = load i32, i32* @NES_TIMER_TYPE_SEND, align 4
  %148 = call i32 @schedule_nes_timer(%struct.nes_cm_node* %145, %struct.sk_buff* %146, i32 %147, i32 1, i32 0)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %150

150:                                              ; preds = %139, %129, %23
  %151 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @htons(i32) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #2

declare dso_local i32 @nes_debug(i32, i8*) #2

declare dso_local i32 @form_cm_frame(%struct.sk_buff*, %struct.nes_cm_node*, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @schedule_nes_timer(%struct.nes_cm_node*, %struct.sk_buff*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
