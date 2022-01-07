; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_serial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i16, i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@SSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s isr_serial status=%04X\0A\00", align 1
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@IRQ_TXIDLE = common dso_local global i16 0, align 2
@IRQ_RXDATA = common dso_local global i16 0, align 2
@IRQ_RXBREAK = common dso_local global i16 0, align 2
@RXBREAK = common dso_local global i16 0, align 2
@MASK_BREAK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@ASYNC_SAK = common dso_local global i32 0, align 4
@IRQ_TXUNDER = common dso_local global i16 0, align 2
@IRQ_RXIDLE = common dso_local global i16 0, align 2
@RXIDLE = common dso_local global i16 0, align 2
@IRQ_RXOVER = common dso_local global i16 0, align 2
@IRQ_DSR = common dso_local global i16 0, align 2
@IRQ_CTS = common dso_local global i16 0, align 2
@IRQ_DCD = common dso_local global i16 0, align 2
@IRQ_RI = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @isr_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_serial(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @SSR, align 4
  %6 = call zeroext i16 @rd_reg16(%struct.slgt_info* %4, i32 %5)
  store i16 %6, i16* %3, align 2
  %7 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %8 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @DBGISR(i8* %12)
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = load i32, i32* @SSR, align 4
  %16 = load i16, i16* %3, align 2
  %17 = call i32 @wr_reg16(%struct.slgt_info* %14, i32 %15, i16 zeroext %16)
  %18 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %124

26:                                               ; preds = %1
  %27 = load i16, i16* %3, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @IRQ_TXIDLE, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %35 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %40 = load i16, i16* %3, align 2
  %41 = call i32 @isr_txeom(%struct.slgt_info* %39, i16 zeroext %40)
  br label %42

42:                                               ; preds = %38, %33
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i16, i16* %3, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @IRQ_RXDATA, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %57 = call i32 @isr_rxdata(%struct.slgt_info* %56)
  br label %58

58:                                               ; preds = %55, %48, %43
  %59 = load i16, i16* %3, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @IRQ_RXBREAK, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %123

65:                                               ; preds = %58
  %66 = load i16, i16* %3, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @RXBREAK, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %123

72:                                               ; preds = %65
  %73 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %74 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %79 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %72
  %84 = load i16, i16* %3, align 2
  %85 = zext i16 %84 to i32
  %86 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %87 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %86, i32 0, i32 1
  %88 = load i16, i16* %87, align 4
  %89 = zext i16 %88 to i32
  %90 = and i32 %85, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %121, label %92

92:                                               ; preds = %83
  %93 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %94 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MASK_BREAK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %92
  %100 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %101 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @TTY_BREAK, align 4
  %105 = call i32 @tty_insert_flip_char(i64 %103, i32 0, i32 %104)
  %106 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %107 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ASYNC_SAK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %99
  %114 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %115 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @do_SAK(i64 %117)
  br label %119

119:                                              ; preds = %113, %99
  br label %120

120:                                              ; preds = %119, %92
  br label %121

121:                                              ; preds = %120, %83
  br label %122

122:                                              ; preds = %121, %72
  br label %123

123:                                              ; preds = %122, %65, %58
  br label %194

124:                                              ; preds = %1
  %125 = load i16, i16* %3, align 2
  %126 = zext i16 %125 to i32
  %127 = load i16, i16* @IRQ_TXIDLE, align 2
  %128 = zext i16 %127 to i32
  %129 = load i16, i16* @IRQ_TXUNDER, align 2
  %130 = zext i16 %129 to i32
  %131 = add nsw i32 %128, %130
  %132 = and i32 %126, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %124
  %135 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %136 = load i16, i16* %3, align 2
  %137 = call i32 @isr_txeom(%struct.slgt_info* %135, i16 zeroext %136)
  br label %138

138:                                              ; preds = %134, %124
  %139 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %140 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i16, i16* %3, align 2
  %145 = zext i16 %144 to i32
  %146 = load i16, i16* @IRQ_RXDATA, align 2
  %147 = zext i16 %146 to i32
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %152 = call i32 @isr_rxdata(%struct.slgt_info* %151)
  br label %153

153:                                              ; preds = %150, %143, %138
  %154 = load i16, i16* %3, align 2
  %155 = zext i16 %154 to i32
  %156 = load i16, i16* @IRQ_RXIDLE, align 2
  %157 = zext i16 %156 to i32
  %158 = and i32 %155, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %153
  %161 = load i16, i16* %3, align 2
  %162 = zext i16 %161 to i32
  %163 = load i16, i16* @RXIDLE, align 2
  %164 = zext i16 %163 to i32
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %169 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %179

173:                                              ; preds = %160
  %174 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %175 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %167
  %180 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %181 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %180, i32 0, i32 3
  %182 = call i32 @wake_up_interruptible(i32* %181)
  br label %183

183:                                              ; preds = %179, %153
  %184 = load i16, i16* %3, align 2
  %185 = zext i16 %184 to i32
  %186 = load i16, i16* @IRQ_RXOVER, align 2
  %187 = zext i16 %186 to i32
  %188 = and i32 %185, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %192 = call i32 @rx_start(%struct.slgt_info* %191)
  br label %193

193:                                              ; preds = %190, %183
  br label %194

194:                                              ; preds = %193, %123
  %195 = load i16, i16* %3, align 2
  %196 = zext i16 %195 to i32
  %197 = load i16, i16* @IRQ_DSR, align 2
  %198 = zext i16 %197 to i32
  %199 = and i32 %196, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %203 = load i16, i16* %3, align 2
  %204 = call i32 @dsr_change(%struct.slgt_info* %202, i16 zeroext %203)
  br label %205

205:                                              ; preds = %201, %194
  %206 = load i16, i16* %3, align 2
  %207 = zext i16 %206 to i32
  %208 = load i16, i16* @IRQ_CTS, align 2
  %209 = zext i16 %208 to i32
  %210 = and i32 %207, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %205
  %213 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %214 = load i16, i16* %3, align 2
  %215 = call i32 @cts_change(%struct.slgt_info* %213, i16 zeroext %214)
  br label %216

216:                                              ; preds = %212, %205
  %217 = load i16, i16* %3, align 2
  %218 = zext i16 %217 to i32
  %219 = load i16, i16* @IRQ_DCD, align 2
  %220 = zext i16 %219 to i32
  %221 = and i32 %218, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %225 = load i16, i16* %3, align 2
  %226 = call i32 @dcd_change(%struct.slgt_info* %224, i16 zeroext %225)
  br label %227

227:                                              ; preds = %223, %216
  %228 = load i16, i16* %3, align 2
  %229 = zext i16 %228 to i32
  %230 = load i16, i16* @IRQ_RI, align 2
  %231 = zext i16 %230 to i32
  %232 = and i32 %229, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %236 = load i16, i16* %3, align 2
  %237 = call i32 @ri_change(%struct.slgt_info* %235, i16 zeroext %236)
  br label %238

238:                                              ; preds = %234, %227
  ret void
}

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @isr_txeom(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @isr_rxdata(%struct.slgt_info*) #1

declare dso_local i32 @tty_insert_flip_char(i64, i32, i32) #1

declare dso_local i32 @do_SAK(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @rx_start(%struct.slgt_info*) #1

declare dso_local i32 @dsr_change(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @cts_change(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @dcd_change(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @ri_change(%struct.slgt_info*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
