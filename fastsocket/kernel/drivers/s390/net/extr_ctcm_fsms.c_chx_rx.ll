; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_chx_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_fsms.c_chx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, %struct.TYPE_10__*, i32, i64, i32, %struct.sk_buff*, %struct.TYPE_8__*, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s(%s): got packet with length %d < 8\0A\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s(%s): got packet with length %d > %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s(%s): got block length %d != rx length %d\0A\00", align 1
@do_debug = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"normal RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @chx_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chx_rx(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.channel*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ctcm_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.channel*
  store %struct.channel* %16, %struct.channel** %7, align 8
  %17 = load %struct.channel*, %struct.channel** %7, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %17, i32 0, i32 8
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load %struct.ctcm_priv*, %struct.ctcm_priv** %21, align 8
  store %struct.ctcm_priv* %22, %struct.ctcm_priv** %9, align 8
  %23 = load %struct.channel*, %struct.channel** %7, align 8
  %24 = getelementptr inbounds %struct.channel, %struct.channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.channel*, %struct.channel** %7, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 7
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %25, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.channel*, %struct.channel** %7, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 6
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %11, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.channel*, %struct.channel** %7, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 5
  %44 = call i32 @fsm_deltimer(i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %66

47:                                               ; preds = %3
  %48 = load i32, i32* @TRACE, align 4
  %49 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %50 = load i32, i32* @CTCM_FUNTAIL, align 4
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %48, i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %54)
  %56 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %57 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %62 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %156

66:                                               ; preds = %3
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.channel*, %struct.channel** %7, align 8
  %69 = getelementptr inbounds %struct.channel, %struct.channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %66
  %73 = load i32, i32* @TRACE, align 4
  %74 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %75 = load i32, i32* @CTCM_FUNTAIL, align 4
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.channel*, %struct.channel** %7, align 8
  %81 = getelementptr inbounds %struct.channel, %struct.channel* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %73, i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, i32 %79, i32 %82)
  %84 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %85 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %90 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %156

94:                                               ; preds = %66
  %95 = load %struct.channel*, %struct.channel** %7, align 8
  %96 = getelementptr inbounds %struct.channel, %struct.channel* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %101 [
    i32 128, label %98
    i32 129, label %98
  ]

98:                                               ; preds = %94, %94
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %13, align 4
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %142

111:                                              ; preds = %107, %103
  %112 = load i32, i32* @TRACE, align 4
  %113 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %114 = load i32, i32* @CTCM_FUNTAIL, align 4
  %115 = load %struct.net_device*, %struct.net_device** %8, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 (i32, i32, i8*, i32, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %112, i32 %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %117, i32 %118, i32 %119)
  %121 = load i64, i64* @do_debug, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %111
  %124 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %125 = call i32 @ctcmpc_dump_skb(%struct.sk_buff* %124, i32 0)
  br label %126

126:                                              ; preds = %123, %111
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  store i32 %127, i32* %131, align 4
  %132 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %133 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %138 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %156

142:                                              ; preds = %107
  %143 = load i32, i32* %12, align 4
  %144 = icmp sgt i32 %143, 2
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %146, 2
  %148 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i32*
  store i32 %147, i32* %151, align 4
  %152 = load %struct.channel*, %struct.channel** %7, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = call i32 @ctcm_unpack_skb(%struct.channel* %152, %struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %145, %142
  br label %156

156:                                              ; preds = %155, %126, %72, %47
  %157 = load %struct.channel*, %struct.channel** %7, align 8
  %158 = getelementptr inbounds %struct.channel, %struct.channel* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %163 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.channel*, %struct.channel** %7, align 8
  %167 = call i64 @ctcm_checkalloc_buffer(%struct.channel* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  br label %195

170:                                              ; preds = %156
  %171 = load %struct.channel*, %struct.channel** %7, align 8
  %172 = getelementptr inbounds %struct.channel, %struct.channel* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.channel*, %struct.channel** %7, align 8
  %175 = getelementptr inbounds %struct.channel, %struct.channel* %174, i32 0, i32 2
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  store i32 %173, i32* %178, align 4
  %179 = load %struct.channel*, %struct.channel** %7, align 8
  %180 = getelementptr inbounds %struct.channel, %struct.channel* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.channel*, %struct.channel** %7, align 8
  %183 = getelementptr inbounds %struct.channel, %struct.channel* %182, i32 0, i32 2
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 0
  %186 = load %struct.channel*, %struct.channel** %7, align 8
  %187 = ptrtoint %struct.channel* %186 to i64
  %188 = call i32 @ccw_device_start(i32 %181, %struct.TYPE_10__* %185, i64 %187, i32 255, i32 0)
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %170
  %192 = load %struct.channel*, %struct.channel** %7, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @ctcm_ccw_check_rc(%struct.channel* %192, i32 %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %195

195:                                              ; preds = %169, %191, %170
  ret void
}

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ctcmpc_dump_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @ctcm_unpack_skb(%struct.channel*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @ctcm_checkalloc_buffer(%struct.channel*) #1

declare dso_local i32 @ccw_device_start(i32, %struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local i32 @ctcm_ccw_check_rc(%struct.channel*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
