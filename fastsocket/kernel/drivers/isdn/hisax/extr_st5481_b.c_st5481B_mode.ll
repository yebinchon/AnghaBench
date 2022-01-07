; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_st5481B_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_b.c_st5481B_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_bcs = type { i32, i32, i32, %struct.st5481_adapter*, %struct.st5481_b_out }
%struct.st5481_adapter = type { i32, i32 }
%struct.st5481_b_out = type { i32*, i32, i64, i32* }

@.str = private unnamed_addr constant [12 x i8] c"B%d,mode=%d\00", align 1
@L1_MODE_NULL = common dso_local global i32 0, align 4
@L1_MODE_TRANS = common dso_local global i32 0, align 4
@HDLC_BITREVERSE = common dso_local global i32 0, align 4
@L1_MODE_HDLC_56K = common dso_local global i32 0, align 4
@HDLC_56KBIT = common dso_local global i32 0, align 4
@FFMSK_B1 = common dso_local global i64 0, align 8
@OUT_UP = common dso_local global i32 0, align 4
@OUT_DOWN = common dso_local global i32 0, align 4
@OUT_UNDERRUN = common dso_local global i32 0, align 4
@OUT_B1_COUNTER = common dso_local global i64 0, align 8
@st5481B_start_xfer = common dso_local global i32* null, align 8
@B1_LED = common dso_local global i32 0, align 4
@B2_LED = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st5481_bcs*, i32)* @st5481B_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st5481B_mode(%struct.st5481_bcs* %0, i32 %1) #0 {
  %3 = alloca %struct.st5481_bcs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st5481_b_out*, align 8
  %6 = alloca %struct.st5481_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.st5481_bcs* %0, %struct.st5481_bcs** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %9 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %8, i32 0, i32 4
  store %struct.st5481_b_out* %9, %struct.st5481_b_out** %5, align 8
  %10 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %11 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %10, i32 0, i32 3
  %12 = load %struct.st5481_adapter*, %struct.st5481_adapter** %11, align 8
  store %struct.st5481_adapter* %12, %struct.st5481_adapter** %6, align 8
  %13 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %14 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DBG(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %20 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %193

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %28 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %30 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_unlink_urb(i32 %33)
  %35 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %36 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usb_unlink_urb(i32 %39)
  %41 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %42 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %44 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %43, i32 0, i32 2
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @st5481_in_mode(i32* %44, i32 %45)
  %47 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %48 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @L1_MODE_NULL, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %130

52:                                               ; preds = %25
  %53 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %54 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @L1_MODE_TRANS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load i32, i32* @HDLC_BITREVERSE, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %61 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @L1_MODE_HDLC_56K, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @HDLC_56KBIT, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %71 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %70, i32 0, i32 1
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @isdnhdlc_out_init(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %52
  %75 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %76 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %77 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  %80 = mul nsw i32 %79, 2
  %81 = call i32 @st5481_usb_pipe_reset(%struct.st5481_adapter* %75, i32 %80, i32* null, i32* null)
  %82 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %83 = load i64, i64* @FFMSK_B1, align 8
  %84 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %85 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %83, %88
  %90 = load i32, i32* @OUT_UP, align 4
  %91 = load i32, i32* @OUT_DOWN, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* @OUT_UNDERRUN, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %82, i64 %89, i32 %94, i32* null, %struct.st5481_bcs* null)
  %96 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %97 = load i64, i64* @OUT_B1_COUNTER, align 8
  %98 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %99 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %97, %102
  %104 = load i32*, i32** @st5481B_start_xfer, align 8
  %105 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %106 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %96, i64 %103, i32 32, i32* %104, %struct.st5481_bcs* %105)
  %107 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %108 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %129

111:                                              ; preds = %74
  %112 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %113 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i32, i32* @B1_LED, align 4
  %118 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %119 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %128

122:                                              ; preds = %111
  %123 = load i32, i32* @B2_LED, align 4
  %124 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %125 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128, %74
  br label %193

130:                                              ; preds = %25
  %131 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %132 = load i64, i64* @FFMSK_B1, align 8
  %133 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %134 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %132, %137
  %139 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %131, i64 %138, i32 0, i32* null, %struct.st5481_bcs* null)
  %140 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %141 = load i64, i64* @OUT_B1_COUNTER, align 8
  %142 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %143 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %141, %146
  %148 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %140, i64 %147, i32 0, i32* null, %struct.st5481_bcs* null)
  %149 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 4
  br i1 %152, label %153, label %173

153:                                              ; preds = %130
  %154 = load %struct.st5481_bcs*, %struct.st5481_bcs** %3, align 8
  %155 = getelementptr inbounds %struct.st5481_bcs, %struct.st5481_bcs* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32, i32* @B1_LED, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %162 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %172

165:                                              ; preds = %153
  %166 = load i32, i32* @B2_LED, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %169 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %158
  br label %180

173:                                              ; preds = %130
  %174 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %175 = load i64, i64* @GPIO_OUT, align 8
  %176 = load %struct.st5481_adapter*, %struct.st5481_adapter** %6, align 8
  %177 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter* %174, i64 %175, i32 %178, i32* null, %struct.st5481_bcs* null)
  br label %180

180:                                              ; preds = %173, %172
  %181 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %182 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %187 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @dev_kfree_skb_any(i32* %188)
  %190 = load %struct.st5481_b_out*, %struct.st5481_b_out** %5, align 8
  %191 = getelementptr inbounds %struct.st5481_b_out, %struct.st5481_b_out* %190, i32 0, i32 0
  store i32* null, i32** %191, align 8
  br label %192

192:                                              ; preds = %185, %180
  br label %193

193:                                              ; preds = %24, %192, %129
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i32, i32) #1

declare dso_local i32 @usb_unlink_urb(i32) #1

declare dso_local i32 @st5481_in_mode(i32*, i32) #1

declare dso_local i32 @isdnhdlc_out_init(i32*, i32) #1

declare dso_local i32 @st5481_usb_pipe_reset(%struct.st5481_adapter*, i32, i32*, i32*) #1

declare dso_local i32 @st5481_usb_device_ctrl_msg(%struct.st5481_adapter*, i64, i32, i32*, %struct.st5481_bcs*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
