; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_st7_got_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2_st7_got_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32* }

@RR = common dso_local global i32 0, align 4
@FLG_ORIG = common dso_local global i32 0, align 4
@RNR = common dso_local global i32 0, align 4
@REJ = common dso_local global i32 0, align 4
@FLG_MOD128 = common dso_local global i32 0, align 4
@MDL_ERROR_IND = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Restart T203 ST7 REJ\00", align 1
@EV_L2_ACK_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st7_got_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st7_got_super(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %14 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %13, i32 0, i32 0
  %15 = load %struct.layer2*, %struct.layer2** %14, align 8
  store %struct.layer2* %15, %struct.layer2** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.sk_buff*
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load i32, i32* @RR, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 2
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @FLG_ORIG, align 4
  %25 = load %struct.layer2*, %struct.layer2** %7, align 8
  %26 = getelementptr inbounds %struct.layer2, %struct.layer2* %25, i32 0, i32 6
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %29, %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.layer2*, %struct.layer2** %7, align 8
  %37 = call i32 @l2addrsize(%struct.layer2* %36)
  %38 = call i32 @skb_pull(%struct.sk_buff* %35, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.layer2*, %struct.layer2** %7, align 8
  %43 = call i64 @IsRNR(i32* %41, %struct.layer2* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.layer2*, %struct.layer2** %7, align 8
  %47 = call i32 @set_peer_busy(%struct.layer2* %46)
  %48 = load i32, i32* @RNR, align 4
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.layer2*, %struct.layer2** %7, align 8
  %51 = call i32 @clear_peer_busy(%struct.layer2* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.layer2*, %struct.layer2** %7, align 8
  %57 = call i64 @IsREJ(i32* %55, %struct.layer2* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @REJ, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i32, i32* @FLG_MOD128, align 4
  %63 = load %struct.layer2*, %struct.layer2** %7, align 8
  %64 = getelementptr inbounds %struct.layer2, %struct.layer2* %63, i32 0, i32 6
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 1
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %96

82:                                               ; preds = %61
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 16
  store i32 %88, i32* %9, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 5
  %95 = and i32 %94, 7
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %82, %67
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call i32 @dev_kfree_skb(%struct.sk_buff* %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load %struct.layer2*, %struct.layer2** %7, align 8
  %106 = load i32, i32* @MDL_ERROR_IND, align 4
  %107 = call i32 @l2mgr(%struct.layer2* %105, i32 %106, i8* inttoptr (i64 65 to i8*))
  br label %111

108:                                              ; preds = %101
  %109 = load %struct.layer2*, %struct.layer2** %7, align 8
  %110 = call i32 @enquiry_response(%struct.layer2* %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %96
  %113 = load %struct.layer2*, %struct.layer2** %7, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i64 @legalnr(%struct.layer2* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %206

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @REJ, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load %struct.layer2*, %struct.layer2** %7, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @setva(%struct.layer2* %122, i32 %123)
  %125 = load %struct.layer2*, %struct.layer2** %7, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @invoke_retransmission(%struct.layer2* %125, i32 %126)
  %128 = load %struct.layer2*, %struct.layer2** %7, align 8
  %129 = call i32 @stop_t200(%struct.layer2* %128, i32 10)
  %130 = load %struct.layer2*, %struct.layer2** %7, align 8
  %131 = getelementptr inbounds %struct.layer2, %struct.layer2* %130, i32 0, i32 3
  %132 = load %struct.layer2*, %struct.layer2** %7, align 8
  %133 = getelementptr inbounds %struct.layer2, %struct.layer2* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @EV_L2_T203, align 4
  %136 = call i64 @mISDN_FsmAddTimer(i32* %131, i32 %134, i32 %135, i32* null, i32 6)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %121
  %139 = load %struct.layer2*, %struct.layer2** %7, align 8
  %140 = getelementptr inbounds %struct.layer2, %struct.layer2* %139, i32 0, i32 5
  %141 = call i32 @l2m_debug(i32* %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %121
  br label %192

143:                                              ; preds = %117
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.layer2*, %struct.layer2** %7, align 8
  %146 = getelementptr inbounds %struct.layer2, %struct.layer2* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %143
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @RR, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = load %struct.layer2*, %struct.layer2** %7, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @setva(%struct.layer2* %154, i32 %155)
  %157 = load %struct.layer2*, %struct.layer2** %7, align 8
  %158 = call i32 @stop_t200(%struct.layer2* %157, i32 11)
  %159 = load %struct.layer2*, %struct.layer2** %7, align 8
  %160 = getelementptr inbounds %struct.layer2, %struct.layer2* %159, i32 0, i32 3
  %161 = load %struct.layer2*, %struct.layer2** %7, align 8
  %162 = getelementptr inbounds %struct.layer2, %struct.layer2* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @EV_L2_T203, align 4
  %165 = call i32 @mISDN_FsmRestartTimer(i32* %160, i32 %163, i32 %164, i32* null, i32 7)
  br label %191

166:                                              ; preds = %149, %143
  %167 = load %struct.layer2*, %struct.layer2** %7, align 8
  %168 = getelementptr inbounds %struct.layer2, %struct.layer2* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @RNR, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %172, %166
  %177 = load %struct.layer2*, %struct.layer2** %7, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @setva(%struct.layer2* %177, i32 %178)
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @RR, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load %struct.layer2*, %struct.layer2** %7, align 8
  %185 = getelementptr inbounds %struct.layer2, %struct.layer2* %184, i32 0, i32 3
  %186 = call i32 @mISDN_FsmDelTimer(i32* %185, i32 9)
  br label %187

187:                                              ; preds = %183, %176
  %188 = load %struct.layer2*, %struct.layer2** %7, align 8
  %189 = call i32 @restart_t200(%struct.layer2* %188, i32 12)
  br label %190

190:                                              ; preds = %187, %172
  br label %191

191:                                              ; preds = %190, %153
  br label %192

192:                                              ; preds = %191, %142
  %193 = load %struct.layer2*, %struct.layer2** %7, align 8
  %194 = getelementptr inbounds %struct.layer2, %struct.layer2* %193, i32 0, i32 2
  %195 = call i64 @skb_queue_len(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @RR, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %203 = load i32, i32* @EV_L2_ACK_PULL, align 4
  %204 = call i32 @mISDN_FsmEvent(%struct.FsmInst* %202, i32 %203, i32* null)
  br label %205

205:                                              ; preds = %201, %197, %192
  br label %209

206:                                              ; preds = %112
  %207 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %208 = call i32 @nrerrorrecovery(%struct.FsmInst* %207)
  br label %209

209:                                              ; preds = %206, %205
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2addrsize(%struct.layer2*) #1

declare dso_local i64 @IsRNR(i32*, %struct.layer2*) #1

declare dso_local i32 @set_peer_busy(%struct.layer2*) #1

declare dso_local i32 @clear_peer_busy(%struct.layer2*) #1

declare dso_local i64 @IsREJ(i32*, %struct.layer2*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

declare dso_local i32 @enquiry_response(%struct.layer2*) #1

declare dso_local i64 @legalnr(%struct.layer2*, i32) #1

declare dso_local i32 @setva(%struct.layer2*, i32) #1

declare dso_local i32 @invoke_retransmission(%struct.layer2*, i32) #1

declare dso_local i32 @stop_t200(%struct.layer2*, i32) #1

declare dso_local i64 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @l2m_debug(i32*, i8*) #1

declare dso_local i32 @mISDN_FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @mISDN_FsmDelTimer(i32*, i32) #1

declare dso_local i32 @restart_t200(%struct.layer2*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @mISDN_FsmEvent(%struct.FsmInst*, i32, i32*) #1

declare dso_local i32 @nrerrorrecovery(%struct.FsmInst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
