; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_setup_bchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_usb.c_setup_bchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64 }

@__const.setup_bchannel.idx_table = private unnamed_addr constant [2 x i32] [i32 0, i32 2], align 4
@HFCUSB_DBG_STATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"HFC-S USB: setting channel %d to mode %d\00", align 1
@L1_MODE_NULL = common dso_local global i32 0, align 4
@L1_MODE_TRANS = common dso_local global i32 0, align 4
@HFCUSB_FIFO = common dso_local global i32 0, align 4
@HFCUSB_CON_HDLC = common dso_local global i32 0, align 4
@HFCUSB_INC_RES_F = common dso_local global i32 0, align 4
@HFCUSB_SCTRL = common dso_local global i32 0, align 4
@HFCUSB_SCTRL_R = common dso_local global i32 0, align 4
@LED_B2_OFF = common dso_local global i32 0, align 4
@LED_B1_OFF = common dso_local global i32 0, align 4
@LED_B2_ON = common dso_local global i32 0, align 4
@LED_B1_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @setup_bchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_bchannel(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([2 x i32]* @__const.setup_bchannel.idx_table to i8*), i64 8, i1 false)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %143

15:                                               ; preds = %3
  %16 = load i32, i32* @HFCUSB_DBG_STATES, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DBG(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @L1_MODE_NULL, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 8, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @L1_MODE_TRANS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, 2
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = load i32, i32* @HFCUSB_FIFO, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @queue_control_request(%struct.TYPE_5__* %39, i32 %40, i32 %44, i32 1)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = load i32, i32* @HFCUSB_CON_HDLC, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @queue_control_request(%struct.TYPE_5__* %46, i32 %47, i32 %48, i32 1)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = load i32, i32* @HFCUSB_INC_RES_F, align 4
  %52 = call i32 @queue_control_request(%struct.TYPE_5__* %50, i32 %51, i32 2, i32 1)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = load i32, i32* @HFCUSB_FIFO, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @queue_control_request(%struct.TYPE_5__* %53, i32 %54, i32 %59, i32 1)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = load i32, i32* @HFCUSB_CON_HDLC, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @queue_control_request(%struct.TYPE_5__* %61, i32 %62, i32 %63, i32 1)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load i32, i32* @HFCUSB_INC_RES_F, align 4
  %67 = call i32 @queue_control_request(%struct.TYPE_5__* %65, i32 %66, i32 2, i32 1)
  store i32 64, i32* %7, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %38
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %38
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, 2
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %77
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = load i32, i32* @HFCUSB_SCTRL, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @queue_control_request(%struct.TYPE_5__* %88, i32 %89, i32 %90, i32 1)
  store i32 0, i32* %7, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %87
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, 2
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %101
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = load i32, i32* @HFCUSB_SCTRL_R, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @queue_control_request(%struct.TYPE_5__* %112, i32 %113, i32 %114, i32 1)
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @L1_MODE_NULL, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %111
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = load i32, i32* @LED_B2_OFF, align 4
  %125 = call i32 @handle_led(%struct.TYPE_5__* %123, i32 %124)
  br label %130

126:                                              ; preds = %119
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = load i32, i32* @LED_B1_OFF, align 4
  %129 = call i32 @handle_led(%struct.TYPE_5__* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  br label %143

131:                                              ; preds = %111
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = load i32, i32* @LED_B2_ON, align 4
  %137 = call i32 @handle_led(%struct.TYPE_5__* %135, i32 %136)
  br label %142

138:                                              ; preds = %131
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = load i32, i32* @LED_B1_ON, align 4
  %141 = call i32 @handle_led(%struct.TYPE_5__* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %14, %142, %130
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DBG(i32, i8*, i32, i32) #2

declare dso_local i32 @queue_control_request(%struct.TYPE_5__*, i32, i32, i32) #2

declare dso_local i32 @handle_led(%struct.TYPE_5__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
