; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st8_got_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_l2_st8_got_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.PStack* }
%struct.PStack = type { %struct.Layer2 }
%struct.Layer2 = type { i32 (%struct.PStack.0*, i32, i32*)*, i32, i32, i32, i32 }
%struct.PStack.0 = type opaque
%struct.sk_buff = type { i32* }

@FLG_ORIG = common dso_local global i32 0, align 4
@FLG_MOD128 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st8_got_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st8_got_super(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  store i32 0, i32* %11, align 4
  %19 = load %struct.PStack*, %struct.PStack** %7, align 8
  %20 = getelementptr inbounds %struct.PStack, %struct.PStack* %19, i32 0, i32 0
  store %struct.Layer2* %20, %struct.Layer2** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 2
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @FLG_ORIG, align 4
  %27 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %28 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %27, i32 0, i32 4
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %31, %3
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %39 = call i32 @l2addrsize(%struct.Layer2* %38)
  %40 = call i32 @skb_pull(%struct.sk_buff* %37, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.PStack*, %struct.PStack** %7, align 8
  %45 = call i64 @IsRNR(i32* %43, %struct.PStack* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %49 = call i32 @set_peer_busy(%struct.Layer2* %48)
  store i32 1, i32* %11, align 4
  br label %53

50:                                               ; preds = %36
  %51 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %52 = call i32 @clear_peer_busy(%struct.Layer2* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @FLG_MOD128, align 4
  %55 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %56 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %55, i32 0, i32 4
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %9, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %88

74:                                               ; preds = %53
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 16
  store i32 %80, i32* %9, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 5
  %87 = and i32 %86, 7
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %74, %59
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i32 @dev_kfree_skb(%struct.sk_buff* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %151

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %151

96:                                               ; preds = %93
  %97 = load %struct.PStack*, %struct.PStack** %7, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @legalnr(%struct.PStack* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %147

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.PStack*, %struct.PStack** %7, align 8
  %106 = call i32 @restart_t200(%struct.PStack* %105, i32 15)
  br label %120

107:                                              ; preds = %101
  %108 = load %struct.PStack*, %struct.PStack** %7, align 8
  %109 = call i32 @stop_t200(%struct.PStack* %108, i32 16)
  %110 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %111 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %110, i32 0, i32 3
  %112 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %113 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @EV_L2_T203, align 4
  %116 = call i32 @FsmAddTimer(i32* %111, i32 %114, i32 %115, i32* null, i32 5)
  %117 = load %struct.PStack*, %struct.PStack** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @setva(%struct.PStack* %117, i32 %118)
  br label %120

120:                                              ; preds = %107, %104
  %121 = load %struct.PStack*, %struct.PStack** %7, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @invoke_retransmission(%struct.PStack* %121, i32 %122)
  %124 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %125 = load i32, i32* @ST_L2_7, align 4
  %126 = call i32 @FsmChangeState(%struct.FsmInst* %124, i32 %125)
  %127 = load %struct.Layer2*, %struct.Layer2** %13, align 8
  %128 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %127, i32 0, i32 1
  %129 = call i32 @skb_queue_empty(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %120
  %132 = load %struct.PStack*, %struct.PStack** %7, align 8
  %133 = call i64 @cansend(%struct.PStack* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load %struct.PStack*, %struct.PStack** %7, align 8
  %137 = getelementptr inbounds %struct.PStack, %struct.PStack* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %137, i32 0, i32 0
  %139 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %138, align 8
  %140 = load %struct.PStack*, %struct.PStack** %7, align 8
  %141 = bitcast %struct.PStack* %140 to %struct.PStack.0*
  %142 = load i32, i32* @PH_PULL, align 4
  %143 = load i32, i32* @REQUEST, align 4
  %144 = or i32 %142, %143
  %145 = call i32 %139(%struct.PStack.0* %141, i32 %144, i32* null)
  br label %146

146:                                              ; preds = %135, %131, %120
  br label %150

147:                                              ; preds = %96
  %148 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %149 = call i32 @nrerrorrecovery(%struct.FsmInst* %148)
  br label %150

150:                                              ; preds = %147, %146
  br label %173

151:                                              ; preds = %93, %88
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.PStack*, %struct.PStack** %7, align 8
  %159 = call i32 @enquiry_response(%struct.PStack* %158)
  br label %160

160:                                              ; preds = %157, %154, %151
  %161 = load %struct.PStack*, %struct.PStack** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call i64 @legalnr(%struct.PStack* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.PStack*, %struct.PStack** %7, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @setva(%struct.PStack* %166, i32 %167)
  br label %172

169:                                              ; preds = %160
  %170 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %171 = call i32 @nrerrorrecovery(%struct.FsmInst* %170)
  br label %172

172:                                              ; preds = %169, %165
  br label %173

173:                                              ; preds = %172, %150
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2addrsize(%struct.Layer2*) #1

declare dso_local i64 @IsRNR(i32*, %struct.PStack*) #1

declare dso_local i32 @set_peer_busy(%struct.Layer2*) #1

declare dso_local i32 @clear_peer_busy(%struct.Layer2*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @legalnr(%struct.PStack*, i32) #1

declare dso_local i32 @restart_t200(%struct.PStack*, i32) #1

declare dso_local i32 @stop_t200(%struct.PStack*, i32) #1

declare dso_local i32 @FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @setva(%struct.PStack*, i32) #1

declare dso_local i32 @invoke_retransmission(%struct.PStack*, i32) #1

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @cansend(%struct.PStack*) #1

declare dso_local i32 @nrerrorrecovery(%struct.FsmInst*) #1

declare dso_local i32 @enquiry_response(%struct.PStack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
