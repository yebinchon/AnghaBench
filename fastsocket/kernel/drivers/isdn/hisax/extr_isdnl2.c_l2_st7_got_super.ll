; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st7_got_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st7_got_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.Layer2, %struct.TYPE_2__ }
%struct.Layer2 = type { i32, i32, i32 (%struct.PStack.0*, i32, i32*)*, i32, i32, i32, i32, i32 }
%struct.PStack.0 = type opaque
%struct.TYPE_2__ = type { i32 (%struct.PStack.1*, i32, i8*)* }
%struct.PStack.1 = type opaque
%struct.sk_buff = type { i32* }

@RR = common dso_local global i32 0, align 4
@FLG_ORIG = common dso_local global i32 0, align 4
@RNR = common dso_local global i32 0, align 4
@REJ = common dso_local global i32 0, align 4
@FLG_MOD128 = common dso_local global i32 0, align 4
@MDL_ERROR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Restart T203 ST7 REJ\00", align 1
@PH_PULL = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st7_got_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st7_got_super(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.PStack*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.Layer2*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %15 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %14, i32 0, i32 0
  %16 = load %struct.PStack*, %struct.PStack** %15, align 8
  store %struct.PStack* %16, %struct.PStack** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.sk_buff*
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load i32, i32* @RR, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.PStack*, %struct.PStack** %7, align 8
  %21 = getelementptr inbounds %struct.PStack, %struct.PStack* %20, i32 0, i32 0
  store %struct.Layer2* %21, %struct.Layer2** %13, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 2
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @FLG_ORIG, align 4
  %28 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %29 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %28, i32 0, i32 7
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %40 = call i32 @l2addrsize(%struct.Layer2* %39)
  %41 = call i32 @skb_pull(%struct.sk_buff* %38, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.PStack*, %struct.PStack** %7, align 8
  %46 = call i64 @IsRNR(i32* %44, %struct.PStack* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %50 = call i32 @set_peer_busy(%struct.Layer2* %49)
  %51 = load i32, i32* @RNR, align 4
  store i32 %51, i32* %11, align 4
  br label %55

52:                                               ; preds = %37
  %53 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %54 = call i32 @clear_peer_busy(%struct.Layer2* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.PStack*, %struct.PStack** %7, align 8
  %60 = call i64 @IsREJ(i32* %58, %struct.PStack* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @REJ, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %55
  %65 = load i32, i32* @FLG_MOD128, align 4
  %66 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %67 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %66, i32 0, i32 7
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %99

85:                                               ; preds = %64
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 16
  store i32 %91, i32* %9, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 5
  %98 = and i32 %97, 7
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %85, %70
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i32 @dev_kfree_skb(%struct.sk_buff* %100)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.PStack*, %struct.PStack** %7, align 8
  %109 = getelementptr inbounds %struct.PStack, %struct.PStack* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (%struct.PStack.1*, i32, i8*)*, i32 (%struct.PStack.1*, i32, i8*)** %110, align 8
  %112 = load %struct.PStack*, %struct.PStack** %7, align 8
  %113 = bitcast %struct.PStack* %112 to %struct.PStack.1*
  %114 = load i32, i32* @MDL_ERROR, align 4
  %115 = load i32, i32* @INDICATION, align 4
  %116 = or i32 %114, %115
  %117 = call i32 %111(%struct.PStack.1* %113, i32 %116, i8* inttoptr (i64 65 to i8*))
  br label %121

118:                                              ; preds = %104
  %119 = load %struct.PStack*, %struct.PStack** %7, align 8
  %120 = call i32 @enquiry_response(%struct.PStack* %119)
  br label %121

121:                                              ; preds = %118, %107
  br label %122

122:                                              ; preds = %121, %99
  %123 = load %struct.PStack*, %struct.PStack** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @legalnr(%struct.PStack* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %230

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @REJ, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %127
  %132 = load %struct.PStack*, %struct.PStack** %7, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @setva(%struct.PStack* %132, i32 %133)
  %135 = load %struct.PStack*, %struct.PStack** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @invoke_retransmission(%struct.PStack* %135, i32 %136)
  %138 = load %struct.PStack*, %struct.PStack** %7, align 8
  %139 = call i32 @stop_t200(%struct.PStack* %138, i32 10)
  %140 = load %struct.PStack*, %struct.PStack** %7, align 8
  %141 = getelementptr inbounds %struct.PStack, %struct.PStack* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %141, i32 0, i32 4
  %143 = load %struct.PStack*, %struct.PStack** %7, align 8
  %144 = getelementptr inbounds %struct.PStack, %struct.PStack* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @EV_L2_T203, align 4
  %148 = call i64 @FsmAddTimer(i32* %142, i32 %146, i32 %147, i32* null, i32 6)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %131
  %151 = load %struct.PStack*, %struct.PStack** %7, align 8
  %152 = getelementptr inbounds %struct.PStack, %struct.PStack* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %152, i32 0, i32 6
  %154 = call i32 @l2m_debug(i32* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %131
  br label %208

156:                                              ; preds = %127
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %159 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %156
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @RR, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %162
  %167 = load %struct.PStack*, %struct.PStack** %7, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @setva(%struct.PStack* %167, i32 %168)
  %170 = load %struct.PStack*, %struct.PStack** %7, align 8
  %171 = call i32 @stop_t200(%struct.PStack* %170, i32 11)
  %172 = load %struct.PStack*, %struct.PStack** %7, align 8
  %173 = getelementptr inbounds %struct.PStack, %struct.PStack* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %173, i32 0, i32 4
  %175 = load %struct.PStack*, %struct.PStack** %7, align 8
  %176 = getelementptr inbounds %struct.PStack, %struct.PStack* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @EV_L2_T203, align 4
  %180 = call i32 @FsmRestartTimer(i32* %174, i32 %178, i32 %179, i32* null, i32 7)
  br label %207

181:                                              ; preds = %162, %156
  %182 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %183 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @RNR, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %187, %181
  %192 = load %struct.PStack*, %struct.PStack** %7, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @setva(%struct.PStack* %192, i32 %193)
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @RR, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load %struct.PStack*, %struct.PStack** %7, align 8
  %200 = getelementptr inbounds %struct.PStack, %struct.PStack* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %200, i32 0, i32 4
  %202 = call i32 @FsmDelTimer(i32* %201, i32 9)
  br label %203

203:                                              ; preds = %198, %191
  %204 = load %struct.PStack*, %struct.PStack** %7, align 8
  %205 = call i32 @restart_t200(%struct.PStack* %204, i32 12)
  br label %206

206:                                              ; preds = %203, %187
  br label %207

207:                                              ; preds = %206, %166
  br label %208

208:                                              ; preds = %207, %155
  %209 = load %struct.PStack*, %struct.PStack** %7, align 8
  %210 = getelementptr inbounds %struct.PStack, %struct.PStack* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %210, i32 0, i32 3
  %212 = call i32 @skb_queue_empty(i32* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %229, label %214

214:                                              ; preds = %208
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @RR, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %214
  %219 = load %struct.PStack*, %struct.PStack** %7, align 8
  %220 = getelementptr inbounds %struct.PStack, %struct.PStack* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %220, i32 0, i32 2
  %222 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %221, align 8
  %223 = load %struct.PStack*, %struct.PStack** %7, align 8
  %224 = bitcast %struct.PStack* %223 to %struct.PStack.0*
  %225 = load i32, i32* @PH_PULL, align 4
  %226 = load i32, i32* @REQUEST, align 4
  %227 = or i32 %225, %226
  %228 = call i32 %222(%struct.PStack.0* %224, i32 %227, i32* null)
  br label %229

229:                                              ; preds = %218, %214, %208
  br label %233

230:                                              ; preds = %122
  %231 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %232 = call i32 @nrerrorrecovery(%struct.FsmInst* %231)
  br label %233

233:                                              ; preds = %230, %229
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2addrsize(%struct.Layer2*) #1

declare dso_local i64 @IsRNR(i32*, %struct.PStack*) #1

declare dso_local i32 @set_peer_busy(%struct.Layer2*) #1

declare dso_local i32 @clear_peer_busy(%struct.Layer2*) #1

declare dso_local i64 @IsREJ(i32*, %struct.PStack*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @enquiry_response(%struct.PStack*) #1

declare dso_local i64 @legalnr(%struct.PStack*, i32) #1

declare dso_local i32 @setva(%struct.PStack*, i32) #1

declare dso_local i32 @invoke_retransmission(%struct.PStack*, i32) #1

declare dso_local i32 @stop_t200(%struct.PStack*, i32) #1

declare dso_local i64 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @l2m_debug(i32*, i8*) #1

declare dso_local i32 @FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

declare dso_local i32 @restart_t200(%struct.PStack*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @nrerrorrecovery(%struct.FsmInst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
