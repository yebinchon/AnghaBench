; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_global_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_global_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_11__*, i32, %struct.l3_process*, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32, %struct.l3_process*)* }
%struct.TYPE_8__ = type { %struct.l3_process*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32*, i32 }

@IE_RESTART_IND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Restart %x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Restart without restart IE\00", align 1
@IE_CHANNEL_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Restart for channel %d\00", align 1
@CC_RESTART = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@MT_RESTART_ACKNOWLEDGE = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_global_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_global_restart(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.l3_process*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.sk_buff*
  store %struct.sk_buff* %16, %struct.sk_buff** %13, align 8
  %17 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %18 = call i32 @newl3state(%struct.l3_process* %17, i32 2)
  %19 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %20 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %19, i32 0, i32 4
  %21 = call i32 @L3DelTimer(i32* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IE_RESTART_IND, align 4
  %30 = call i32* @findie(i32* %25, i32 %28, i32 %29, i32 0)
  store i32* %30, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %37 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (%struct.TYPE_11__*, i8*, ...) @l3_debug(%struct.TYPE_11__* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %46

41:                                               ; preds = %3
  %42 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %43 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 (%struct.TYPE_11__*, i8*, ...) @l3_debug(%struct.TYPE_11__* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 134, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %32
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IE_CHANNEL_ID, align 4
  %55 = call i32* @findie(i32* %50, i32 %53, i32 %54, i32 0)
  store i32* %55, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %46
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 3
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %66 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %57
  %73 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %74 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (%struct.TYPE_11__*, i8*, ...) @l3_debug(%struct.TYPE_11__* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %57
  br label %79

79:                                               ; preds = %78, %46
  %80 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %81 = call i32 @newl3state(%struct.l3_process* %80, i32 2)
  %82 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %83 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.l3_process*, %struct.l3_process** %86, align 8
  store %struct.l3_process* %87, %struct.l3_process** %14, align 8
  br label %88

88:                                               ; preds = %133, %79
  %89 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %90 = icmp ne %struct.l3_process* %89, null
  br i1 %90, label %91, label %137

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 7
  %94 = icmp eq i32 %93, 7
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %97 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_11__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_11__*, i32, %struct.l3_process*)** %100, align 8
  %102 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %103 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i32, i32* @CC_RESTART, align 4
  %106 = load i32, i32* @REQUEST, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %109 = call i32 %101(%struct.TYPE_11__* %104, i32 %107, %struct.l3_process* %108)
  br label %133

110:                                              ; preds = %91
  %111 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %112 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %110
  %118 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %119 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_11__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_11__*, i32, %struct.l3_process*)** %122, align 8
  %124 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %125 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %124, i32 0, i32 0
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* @CC_RESTART, align 4
  %128 = load i32, i32* @REQUEST, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %131 = call i32 %123(%struct.TYPE_11__* %126, i32 %129, %struct.l3_process* %130)
  br label %132

132:                                              ; preds = %117, %110
  br label %133

133:                                              ; preds = %132, %95
  %134 = load %struct.l3_process*, %struct.l3_process** %14, align 8
  %135 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %134, i32 0, i32 2
  %136 = load %struct.l3_process*, %struct.l3_process** %135, align 8
  store %struct.l3_process* %136, %struct.l3_process** %14, align 8
  br label %88

137:                                              ; preds = %88
  %138 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32* %138, i32** %8, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %141 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MT_RESTART_ACKNOWLEDGE, align 4
  %144 = call i32 @MsgHead(i32* %139, i32 %142, i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load i32, i32* @IE_CHANNEL_ID, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %8, align 8
  store i32 %148, i32* %149, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %8, align 8
  store i32 1, i32* %151, align 4
  %153 = load i32, i32* %10, align 4
  %154 = or i32 %153, 128
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %8, align 8
  store i32 %154, i32* %155, align 4
  br label %157

157:                                              ; preds = %147, %137
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %8, align 8
  store i32 121, i32* %158, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %8, align 8
  store i32 1, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %8, align 8
  store i32 %162, i32* %163, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %167 = ptrtoint i32* %165 to i64
  %168 = ptrtoint i32* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call %struct.sk_buff* @l3_alloc_skb(i32 %172)
  store %struct.sk_buff* %173, %struct.sk_buff** %13, align 8
  %174 = icmp ne %struct.sk_buff* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %157
  br label %193

176:                                              ; preds = %157
  %177 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @skb_put(%struct.sk_buff* %177, i32 %178)
  %180 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @memcpy(i32 %179, i32* %180, i32 %181)
  %183 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %184 = call i32 @newl3state(%struct.l3_process* %183, i32 0)
  %185 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %186 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %185, i32 0, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = load i32, i32* @DL_DATA, align 4
  %189 = load i32, i32* @REQUEST, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %192 = call i32 @l3_msg(%struct.TYPE_11__* %187, i32 %190, %struct.sk_buff* %191)
  br label %193

193:                                              ; preds = %176, %175
  ret void
}

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @l3_debug(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @MsgHead(i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l3_msg(%struct.TYPE_11__*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
