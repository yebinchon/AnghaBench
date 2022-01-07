; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_main_rec_2bds0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_main_rec_2bds0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i32, %struct.IsdnCardState* }
%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }

@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rec_data %d blocked\00", align 1
@HFCB_REC = common dso_local global i64 0, align 8
@HFCB_FIFO = common dso_local global i64 0, align 8
@HFCB_F1 = common dso_local global i64 0, align 8
@HFCD_DATA = common dso_local global i32 0, align 4
@HFCB_F2 = common dso_local global i64 0, align 8
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"hfc rec %d f1(%d) f2(%d)\00", align 1
@HFCB_Z1 = common dso_local global i64 0, align 8
@HFCB_Z2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"hfc rec %d z1(%x) z2(%x) cnt(%d)\00", align 1
@B_RCVBUFREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @main_rec_2bds0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_rec_2bds0(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %13 = load %struct.BCState*, %struct.BCState** %2, align 8
  %14 = getelementptr inbounds %struct.BCState, %struct.BCState* %13, i32 0, i32 2
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %14, align 8
  store %struct.IsdnCardState* %15, %struct.IsdnCardState** %3, align 8
  store i32 5, i32* %11, align 4
  br label %16

16:                                               ; preds = %187, %1
  %17 = load i32, i32* %11, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 1
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %26 = load %struct.BCState*, %struct.BCState** %2, align 8
  %27 = getelementptr inbounds %struct.BCState, %struct.BCState* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %189

30:                                               ; preds = %16
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %32 = load i64, i64* @HFCB_REC, align 8
  %33 = load %struct.BCState*, %struct.BCState** %2, align 8
  %34 = getelementptr inbounds %struct.BCState, %struct.BCState* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @HFCB_CHANNEL(i32 %35)
  %37 = or i64 %32, %36
  %38 = call i32 @SelFiFo(%struct.IsdnCardState* %31, i64 %37)
  %39 = load i64, i64* @HFCB_FIFO, align 8
  %40 = load i64, i64* @HFCB_F1, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @HFCB_REC, align 8
  %43 = or i64 %41, %42
  %44 = load %struct.BCState*, %struct.BCState** %2, align 8
  %45 = getelementptr inbounds %struct.BCState, %struct.BCState* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @HFCB_CHANNEL(i32 %46)
  %48 = or i64 %43, %47
  store i64 %48, i64* %9, align 8
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %50 = call i32 @WaitNoBusy(%struct.IsdnCardState* %49)
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %52 = load i32, i32* @HFCD_DATA, align 4
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @ReadReg(%struct.IsdnCardState* %51, i32 %52, i64 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* @HFCB_FIFO, align 8
  %56 = load i64, i64* @HFCB_F2, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @HFCB_REC, align 8
  %59 = or i64 %57, %58
  %60 = load %struct.BCState*, %struct.BCState** %2, align 8
  %61 = getelementptr inbounds %struct.BCState, %struct.BCState* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @HFCB_CHANNEL(i32 %62)
  %64 = or i64 %59, %63
  store i64 %64, i64* %9, align 8
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %66 = call i32 @WaitNoBusy(%struct.IsdnCardState* %65)
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %68 = load i32, i32* @HFCD_DATA, align 4
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @ReadReg(%struct.IsdnCardState* %67, i32 %68, i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %176

74:                                               ; preds = %30
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %76 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @L1_DEB_HSCX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %83 = load %struct.BCState*, %struct.BCState** %2, align 8
  %84 = getelementptr inbounds %struct.BCState, %struct.BCState* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %86, i64 %87)
  br label %89

89:                                               ; preds = %81, %74
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %91 = load i64, i64* @HFCB_FIFO, align 8
  %92 = load i64, i64* @HFCB_Z1, align 8
  %93 = or i64 %91, %92
  %94 = load i64, i64* @HFCB_REC, align 8
  %95 = or i64 %93, %94
  %96 = load %struct.BCState*, %struct.BCState** %2, align 8
  %97 = getelementptr inbounds %struct.BCState, %struct.BCState* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @HFCB_CHANNEL(i32 %98)
  %100 = or i64 %95, %99
  %101 = call i32 @ReadZReg(%struct.IsdnCardState* %90, i64 %100)
  store i32 %101, i32* %4, align 4
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %103 = load i64, i64* @HFCB_FIFO, align 8
  %104 = load i64, i64* @HFCB_Z2, align 8
  %105 = or i64 %103, %104
  %106 = load i64, i64* @HFCB_REC, align 8
  %107 = or i64 %105, %106
  %108 = load %struct.BCState*, %struct.BCState** %2, align 8
  %109 = getelementptr inbounds %struct.BCState, %struct.BCState* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @HFCB_CHANNEL(i32 %110)
  %112 = or i64 %107, %111
  %113 = call i32 @ReadZReg(%struct.IsdnCardState* %102, i64 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %89
  %120 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %121 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %119, %89
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  %132 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %133 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @L1_DEB_HSCX, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %129
  %139 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %140 = load %struct.BCState*, %struct.BCState** %2, align 8
  %141 = getelementptr inbounds %struct.BCState, %struct.BCState* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 (%struct.IsdnCardState*, i8*, i32, ...) @debugl1(%struct.IsdnCardState* %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %138, %129
  %148 = load %struct.BCState*, %struct.BCState** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call %struct.sk_buff* @hfc_empty_fifo(%struct.BCState* %148, i32 %149)
  store %struct.sk_buff* %150, %struct.sk_buff** %12, align 8
  %151 = icmp ne %struct.sk_buff* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.BCState*, %struct.BCState** %2, align 8
  %154 = getelementptr inbounds %struct.BCState, %struct.BCState* %153, i32 0, i32 0
  %155 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %156 = call i32 @skb_queue_tail(i32* %154, %struct.sk_buff* %155)
  %157 = load %struct.BCState*, %struct.BCState** %2, align 8
  %158 = load i32, i32* @B_RCVBUFREADY, align 4
  %159 = call i32 @schedule_event(%struct.BCState* %157, i32 %158)
  br label %160

160:                                              ; preds = %152, %147
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %8, align 8
  %163 = sub nsw i64 %161, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 32
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %167, %160
  %171 = load i32, i32* %6, align 4
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 1, i32* %10, align 4
  br label %175

174:                                              ; preds = %170
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %173
  br label %177

176:                                              ; preds = %30
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %176, %175
  %178 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %179 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %180 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %179, i32 0, i32 1
  %181 = call i32 @test_and_clear_bit(i32 %178, i32* %180)
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %16

188:                                              ; preds = %184, %177
  br label %189

189:                                              ; preds = %188, %24
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32, ...) #1

declare dso_local i32 @SelFiFo(%struct.IsdnCardState*, i64) #1

declare dso_local i64 @HFCB_CHANNEL(i32) #1

declare dso_local i32 @WaitNoBusy(%struct.IsdnCardState*) #1

declare dso_local i64 @ReadReg(%struct.IsdnCardState*, i32, i64) #1

declare dso_local i32 @ReadZReg(%struct.IsdnCardState*, i64) #1

declare dso_local %struct.sk_buff* @hfc_empty_fifo(%struct.BCState*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
