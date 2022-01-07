; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@XMIT_SENDING_READY = common dso_local global i64 0, align 8
@XMIT_SENDING = common dso_local global i64 0, align 8
@XMIT_WAKEUP = common dso_local global i64 0, align 8
@XMIT_BUFFER_NUMBER = common dso_local global i64 0, align 8
@XMIT_BUF_TWO_READY = common dso_local global i64 0, align 8
@REG_COMMAND_TX_BUF_TWO = common dso_local global i8 0, align 1
@XMIT_BUF_ONE_READY = common dso_local global i64 0, align 8
@REG_COMMAND_TX_BUF_ONE = common dso_local global i8 0, align 1
@REG_CONTROL_RTS = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i64 0, align 8
@REG_COMMAND = common dso_local global i64 0, align 8
@wq = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@REG_CONTROL_BAUD_RATE_460800 = common dso_local global i8 0, align 1
@REG_CONTROL_BAUD_RATE_230400 = common dso_local global i8 0, align 1
@REG_CONTROL_BAUD_RATE_115200 = common dso_local global i8 0, align 1
@REG_CONTROL_BAUD_RATE_57600 = common dso_local global i8 0, align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @bluecard_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluecard_write_wakeup(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %234

14:                                               ; preds = %1
  %15 = load i64, i64* @XMIT_SENDING_READY, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i64 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %234

21:                                               ; preds = %14
  %22 = load i64, i64* @XMIT_SENDING, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = call i64 @test_and_set_bit(i64 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64, i64* @XMIT_WAKEUP, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i64 %28, i32* %30)
  br label %234

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %223, %32
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  %40 = load i64, i64* @XMIT_WAKEUP, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = call i32 @clear_bit(i64 %40, i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = call i32 @pcmcia_dev_present(%struct.TYPE_13__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %33
  br label %234

50:                                               ; preds = %33
  %51 = load i64, i64* @XMIT_BUFFER_NUMBER, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = call i64 @test_bit(i64 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i64, i64* @XMIT_BUF_TWO_READY, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = call i64 @test_bit(i64 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %229

63:                                               ; preds = %56
  store i32 16, i32* %4, align 4
  %64 = load i8, i8* @REG_COMMAND_TX_BUF_TWO, align 1
  store i8 %64, i8* %5, align 1
  %65 = load i64, i64* @XMIT_BUF_TWO_READY, align 8
  store i64 %65, i64* %6, align 8
  br label %76

66:                                               ; preds = %50
  %67 = load i64, i64* @XMIT_BUF_ONE_READY, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = call i64 @test_bit(i64 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %229

73:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  %74 = load i8, i8* @REG_COMMAND_TX_BUF_ONE, align 1
  store i8 %74, i8* %5, align 1
  %75 = load i64, i64* @XMIT_BUF_ONE_READY, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %73, %63
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = call %struct.sk_buff* @skb_dequeue(i32* %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %7, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %229

82:                                               ; preds = %76
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = call %struct.TYPE_14__* @bt_cb(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load i32, i32* @REG_CONTROL_RTS, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* @REG_CONTROL, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i32 %97, i64 %101)
  br label %103

103:                                              ; preds = %89, %82
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = call i32 @bluecard_enable_activity_led(%struct.TYPE_12__* %104)
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @bluecard_write(i32 %106, i32 %107, i32 %110, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i8, i8* %5, align 1
  %116 = load i32, i32* %3, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* @REG_COMMAND, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outb_p(i8 zeroext %115, i64 %119)
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = call i32 @clear_bit(i64 %121, i32* %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = call %struct.TYPE_14__* @bt_cb(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %193

131:                                              ; preds = %103
  %132 = load i32, i32* @wq, align 4
  %133 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %132)
  %134 = load i32, i32* @wait, align 4
  %135 = call i32 @DEFINE_WAIT(i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %137 = call %struct.TYPE_14__* @bt_cb(%struct.sk_buff* %136)
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %147 [
    i32 129, label %140
    i32 130, label %142
    i32 131, label %144
    i32 128, label %146
  ]

140:                                              ; preds = %131
  %141 = load i8, i8* @REG_CONTROL_BAUD_RATE_460800, align 1
  store i8 %141, i8* %9, align 1
  br label %149

142:                                              ; preds = %131
  %143 = load i8, i8* @REG_CONTROL_BAUD_RATE_230400, align 1
  store i8 %143, i8* %9, align 1
  br label %149

144:                                              ; preds = %131
  %145 = load i8, i8* @REG_CONTROL_BAUD_RATE_115200, align 1
  store i8 %145, i8* %9, align 1
  br label %149

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %131, %146
  %148 = load i8, i8* @REG_CONTROL_BAUD_RATE_57600, align 1
  store i8 %148, i8* %9, align 1
  br label %149

149:                                              ; preds = %147, %144, %142, %140
  %150 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %151 = call i32 @prepare_to_wait(i32* @wq, i32* @wait, i32 %150)
  %152 = load i32, i32* @HZ, align 4
  %153 = sdiv i32 %152, 10
  %154 = call i32 @schedule_timeout(i32 %153)
  %155 = call i32 @finish_wait(i32* @wq, i32* @wait)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, -4
  store i32 %159, i32* %157, align 8
  %160 = load i8, i8* %9, align 1
  %161 = zext i8 %160 to i32
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* @REG_CONTROL, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @outb(i32 %168, i64 %172)
  %174 = load i32, i32* @REG_CONTROL_RTS, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %3, align 4
  %184 = zext i32 %183 to i64
  %185 = load i64, i64* @REG_CONTROL, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @outb(i32 %182, i64 %186)
  %188 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %189 = call i32 @prepare_to_wait(i32* @wq, i32* @wait, i32 %188)
  %190 = load i32, i32* @HZ, align 4
  %191 = call i32 @schedule_timeout(i32 %190)
  %192 = call i32 @finish_wait(i32* @wq, i32* @wait)
  br label %193

193:                                              ; preds = %149, %103
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %194, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %201 = call i32 @kfree_skb(%struct.sk_buff* %200)
  br label %210

202:                                              ; preds = %193
  %203 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @skb_pull(%struct.sk_buff* %203, i32 %204)
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = call i32 @skb_queue_head(i32* %207, %struct.sk_buff* %208)
  br label %210

210:                                              ; preds = %202, %199
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %211
  store i32 %218, i32* %216, align 4
  %219 = load i64, i64* @XMIT_BUFFER_NUMBER, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = call i32 @change_bit(i64 %219, i32* %221)
  br label %223

223:                                              ; preds = %210
  %224 = load i64, i64* @XMIT_WAKEUP, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = call i64 @test_bit(i64 %224, i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %33, label %229

229:                                              ; preds = %223, %81, %72, %62
  %230 = load i64, i64* @XMIT_SENDING, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = call i32 @clear_bit(i64 %230, i32* %232)
  br label %234

234:                                              ; preds = %229, %49, %27, %20, %12
  ret void
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i64 @test_and_set_bit(i64, i32*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.TYPE_13__*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_14__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @bluecard_enable_activity_led(%struct.TYPE_12__*) #1

declare dso_local i32 @bluecard_write(i32, i32, i32, i32) #1

declare dso_local i32 @outb_p(i8 zeroext, i64) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @change_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
