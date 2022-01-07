; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_debiirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_debiirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32*, i32, i32, i32*, i32, %struct.TYPE_3__*, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"debi\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"type 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"DEBI irq oops @ %ld, psr:0x%08x, ssr:0x%08x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@PSR = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@RX_BUFF = common dso_local global i32 0, align 4
@DMX_OK = common dso_local global i32 0, align 4
@CA_CI_MODULE_PRESENT = common dso_local global i32 0, align 4
@CA_CI_MODULE_READY = common dso_local global i32 0, align 4
@Reserved_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"debi DATA_CI_PUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"debi DATA_MPEG_PLAY\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"debi DATA_BMP_LOAD\0A\00", align 1
@TX_BUFF = common dso_local global i32 0, align 4
@DEBINOSWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @debiirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debiirq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.av7110*
  store %struct.av7110* %10, %struct.av7110** %3, align 8
  %11 = load %struct.av7110*, %struct.av7110** %3, align 8
  %12 = getelementptr inbounds %struct.av7110, %struct.av7110* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 31
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = call i32 @print_time(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.av7110*, %struct.av7110** %3, align 8
  %25 = getelementptr inbounds %struct.av7110, %struct.av7110* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PSR, align 4
  %28 = call i32 @saa7146_read(i32 %26, i32 %27)
  %29 = load %struct.av7110*, %struct.av7110** %3, align 8
  %30 = getelementptr inbounds %struct.av7110, %struct.av7110* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SSR, align 4
  %33 = call i32 @saa7146_read(i32 %31, i32 %32)
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %28, i32 %33)
  br label %188

35:                                               ; preds = %1
  %36 = load %struct.av7110*, %struct.av7110** %3, align 8
  %37 = getelementptr inbounds %struct.av7110, %struct.av7110* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 255
  switch i32 %39, label %186 [
    i32 128, label %40
    i32 130, label %52
    i32 132, label %74
    i32 133, label %74
    i32 129, label %74
    i32 137, label %102
    i32 135, label %156
    i32 134, label %166
    i32 136, label %179
    i32 131, label %181
    i32 138, label %183
  ]

40:                                               ; preds = %35
  %41 = load %struct.av7110*, %struct.av7110** %3, align 8
  %42 = getelementptr inbounds %struct.av7110, %struct.av7110* %41, i32 0, i32 9
  %43 = load %struct.av7110*, %struct.av7110** %3, align 8
  %44 = getelementptr inbounds %struct.av7110, %struct.av7110* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.av7110*, %struct.av7110** %3, align 8
  %47 = getelementptr inbounds %struct.av7110, %struct.av7110* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 188
  %50 = call i32 @dvb_dmx_swfilter_packets(%struct.TYPE_4__* %42, i32* %45, i32 %49)
  %51 = load i32, i32* @RX_BUFF, align 4
  store i32 %51, i32* %6, align 4
  br label %187

52:                                               ; preds = %35
  %53 = load %struct.av7110*, %struct.av7110** %3, align 8
  %54 = getelementptr inbounds %struct.av7110, %struct.av7110* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.av7110*, %struct.av7110** %3, align 8
  %60 = getelementptr inbounds %struct.av7110, %struct.av7110* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load %struct.av7110*, %struct.av7110** %3, align 8
  %66 = getelementptr inbounds %struct.av7110, %struct.av7110* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.av7110*, %struct.av7110** %3, align 8
  %69 = getelementptr inbounds %struct.av7110, %struct.av7110* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @av7110_record_cb(i32* %64, i32* %67, i32 %70)
  br label %72

72:                                               ; preds = %58, %52
  %73 = load i32, i32* @RX_BUFF, align 4
  store i32 %73, i32* %6, align 4
  br label %187

74:                                               ; preds = %35, %35, %35
  %75 = load %struct.av7110*, %struct.av7110** %3, align 8
  %76 = getelementptr inbounds %struct.av7110, %struct.av7110* %75, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %74
  %84 = load %struct.av7110*, %struct.av7110** %3, align 8
  %85 = getelementptr inbounds %struct.av7110, %struct.av7110* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.av7110*, %struct.av7110** %3, align 8
  %88 = getelementptr inbounds %struct.av7110, %struct.av7110* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.av7110*, %struct.av7110** %3, align 8
  %91 = getelementptr inbounds %struct.av7110, %struct.av7110* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DMX_OK, align 4
  %98 = load %struct.av7110*, %struct.av7110** %3, align 8
  %99 = call i32 @DvbDmxFilterCallback(i32* %86, i32 %89, i32* null, i32 0, i32 %96, i32 %97, %struct.av7110* %98)
  br label %100

100:                                              ; preds = %83, %74
  %101 = load i32, i32* @RX_BUFF, align 4
  store i32 %101, i32* %6, align 4
  br label %187

102:                                              ; preds = %35
  %103 = load %struct.av7110*, %struct.av7110** %3, align 8
  %104 = getelementptr inbounds %struct.av7110, %struct.av7110* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %7, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %144

110:                                              ; preds = %102
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 255
  br i1 %114, label %115, label %144

115:                                              ; preds = %110
  store i32 0, i32* %8, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @CA_CI_MODULE_PRESENT, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 5
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @CA_CI_MODULE_READY, align 4
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.av7110*, %struct.av7110** %3, align 8
  %136 = getelementptr inbounds %struct.av7110, %struct.av7110* %135, i32 0, i32 6
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i32 %134, i32* %143, align 4
  br label %154

144:                                              ; preds = %110, %102
  %145 = load %struct.av7110*, %struct.av7110** %3, align 8
  %146 = getelementptr inbounds %struct.av7110, %struct.av7110* %145, i32 0, i32 5
  %147 = load %struct.av7110*, %struct.av7110** %3, align 8
  %148 = getelementptr inbounds %struct.av7110, %struct.av7110* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.av7110*, %struct.av7110** %3, align 8
  %151 = getelementptr inbounds %struct.av7110, %struct.av7110* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ci_get_data(i32* %146, i32* %149, i32 %152)
  br label %154

154:                                              ; preds = %144, %133
  %155 = load i32, i32* @RX_BUFF, align 4
  store i32 %155, i32* %6, align 4
  br label %187

156:                                              ; preds = %35
  %157 = load %struct.av7110*, %struct.av7110** %3, align 8
  %158 = load %struct.av7110*, %struct.av7110** %3, align 8
  %159 = getelementptr inbounds %struct.av7110, %struct.av7110* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.av7110*, %struct.av7110** %3, align 8
  %162 = getelementptr inbounds %struct.av7110, %struct.av7110* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @CI_handle(%struct.av7110* %157, i32* %160, i32 %163)
  %165 = load i32, i32* @RX_BUFF, align 4
  store i32 %165, i32* %6, align 4
  br label %187

166:                                              ; preds = %35
  %167 = load %struct.av7110*, %struct.av7110** %3, align 8
  %168 = getelementptr inbounds %struct.av7110, %struct.av7110* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @Reserved_SIZE, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 0, i32* %173, align 4
  %174 = load %struct.av7110*, %struct.av7110** %3, align 8
  %175 = getelementptr inbounds %struct.av7110, %struct.av7110* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %176)
  %178 = load i32, i32* @RX_BUFF, align 4
  store i32 %178, i32* %6, align 4
  br label %187

179:                                              ; preds = %35
  %180 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %181

181:                                              ; preds = %35, %179
  %182 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %183

183:                                              ; preds = %35, %181
  %184 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %185 = load i32, i32* @TX_BUFF, align 4
  store i32 %185, i32* %6, align 4
  br label %187

186:                                              ; preds = %35
  br label %187

187:                                              ; preds = %186, %183, %166, %156, %154, %100, %72, %40
  br label %188

188:                                              ; preds = %187, %22
  %189 = load %struct.av7110*, %struct.av7110** %3, align 8
  %190 = getelementptr inbounds %struct.av7110, %struct.av7110* %189, i32 0, i32 3
  %191 = call i32 @spin_lock(i32* %190)
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load %struct.av7110*, %struct.av7110** %3, align 8
  %196 = load i32, i32* @DEBINOSWAP, align 4
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @iwdebi(%struct.av7110* %195, i32 %196, i32 %197, i32 0, i32 2)
  br label %199

199:                                              ; preds = %194, %188
  %200 = load %struct.av7110*, %struct.av7110** %3, align 8
  %201 = call i32 @ARM_ClearMailBox(%struct.av7110* %200)
  %202 = load %struct.av7110*, %struct.av7110** %3, align 8
  %203 = getelementptr inbounds %struct.av7110, %struct.av7110* %202, i32 0, i32 3
  %204 = call i32 @spin_unlock(i32* %203)
  ret void
}

declare dso_local i32 @print_time(i8*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @saa7146_read(i32, i32) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @av7110_record_cb(i32*, i32*, i32) #1

declare dso_local i32 @DvbDmxFilterCallback(i32*, i32, i32*, i32, i32, i32, %struct.av7110*) #1

declare dso_local i32 @ci_get_data(i32*, i32*, i32) #1

declare dso_local i32 @CI_handle(%struct.av7110*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwdebi(%struct.av7110*, i32, i32, i32, i32) #1

declare dso_local i32 @ARM_ClearMailBox(%struct.av7110*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
