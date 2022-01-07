; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_queue_to_uart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_queue_to_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i64, i64, i32, i32, i32, i32, i64, i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CH_STOP = common dso_local global i32 0, align 4
@CH_BREAK_SENDING = common dso_local global i32 0, align 4
@CH_FIFO_ENABLED = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Tx data: %x\0A\00", align 1
@WQUEUEMASK = common dso_local global i32 0, align 4
@CH_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@CH_TX_FIFO_LWM = common dso_local global i32 0, align 4
@UART_17158_TX_FIFOSIZE = common dso_local global i32 0, align 4
@WQUEUESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_copy_data_from_queue_to_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_copy_data_from_queue_to_uart(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = icmp ne %struct.jsm_channel* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %232

13:                                               ; preds = %1
  %14 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %15 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %18 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %232

22:                                               ; preds = %13
  %23 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %24 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CH_STOP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %31 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CH_BREAK_SENDING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %22
  br label %232

37:                                               ; preds = %29
  %38 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %39 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CH_FIFO_ENABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %111, label %44

44:                                               ; preds = %37
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = call i32 @readb(i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %52 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %56 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UART_LSR_THRE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %44
  %62 = load i32, i32* @UART_LSR_THRE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %65 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %69 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %72 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %77 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %76, i32 0, i32 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = call i32 @writeb(i32 %75, i32* %79)
  %81 = load i32, i32* @WRITE, align 4
  %82 = load i32, i32* @INFO, align 4
  %83 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %84 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %83, i32 0, i32 9
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %88 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %91 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @jsm_printk(i32 %81, i32 %82, i32* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %97 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* @WQUEUEMASK, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %103 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %107 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %61, %44
  br label %232

111:                                              ; preds = %37
  %112 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %113 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %116 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  br label %232

121:                                              ; preds = %111
  %122 = load i32, i32* @UART_17158_TX_FIFOSIZE, align 4
  %123 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %124 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %122, %125
  store i32 %126, i32* %5, align 4
  %127 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %128 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @WQUEUEMASK, align 4
  %131 = sext i32 %130 to i64
  %132 = and i64 %129, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %3, align 4
  %134 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %135 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @WQUEUEMASK, align 4
  %138 = sext i32 %137 to i64
  %139 = and i64 %136, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* @WQUEUEMASK, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @min(i32 %146, i32 %147)
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %170, %121
  %150 = load i32, i32* %5, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %201

152:                                              ; preds = %149
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* %3, align 4
  br label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @WQUEUESIZE, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = load i32, i32* %4, align 4
  %163 = sub nsw i32 %161, %162
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @min(i32 %164, i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %201

170:                                              ; preds = %160
  %171 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %172 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %171, i32 0, i32 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %176 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %175, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @memcpy_toio(i32* %174, i32* %180, i32 %181)
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* @WQUEUEMASK, align 4
  %187 = and i32 %185, %186
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %5, align 4
  %190 = sub nsw i32 %189, %188
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %194 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, %192
  store i64 %196, i64* %194, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %8, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %8, align 8
  br label %149

201:                                              ; preds = %169, %149
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @WQUEUEMASK, align 4
  %204 = and i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %207 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* %8, align 8
  %209 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %210 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = icmp sge i64 %208, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %201
  %215 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %216 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %217 = or i32 %215, %216
  %218 = xor i32 %217, -1
  %219 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %220 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %214, %201
  %224 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %225 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %224, i32 0, i32 5
  %226 = call i32 @jsm_tty_write(i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %223
  %229 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %230 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %229, i32 0, i32 5
  %231 = call i32 @uart_write_wakeup(i32* %230)
  br label %232

232:                                              ; preds = %12, %21, %36, %110, %120, %228, %223
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i32) #1

declare dso_local i32 @jsm_tty_write(i32*) #1

declare dso_local i32 @uart_write_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
