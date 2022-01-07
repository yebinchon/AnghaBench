; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bluecard_cs.c_bluecard_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.hci_dev*, i32, i32, i32, %struct.TYPE_7__*, i32*, i64, i32, %struct.TYPE_9__, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32* }

@bluecard_activity_led_timeout = common dso_local global i32 0, align 4
@RECV_WAIT_PACKET_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_PCCARD = common dso_local global i32 0, align 4
@bluecard_hci_open = common dso_local global i32 0, align 4
@bluecard_hci_close = common dso_local global i32 0, align 4
@bluecard_hci_flush = common dso_local global i32 0, align 4
@bluecard_hci_send_frame = common dso_local global i32 0, align 4
@bluecard_hci_destruct = common dso_local global i32 0, align 4
@bluecard_hci_ioctl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@CARD_HAS_PCCARD_ID = common dso_local global i32 0, align 4
@CARD_HAS_POWER_LED = common dso_local global i32 0, align 4
@CARD_HAS_ACTIVITY_LED = common dso_local global i32 0, align 4
@REG_CONTROL_BT_RESET = common dso_local global i32 0, align 4
@REG_CONTROL_CARD_RESET = common dso_local global i32 0, align 4
@REG_CONTROL = common dso_local global i32 0, align 4
@REG_CONTROL_BT_ON = common dso_local global i32 0, align 4
@REG_CONTROL_BT_RES_PU = common dso_local global i32 0, align 4
@REG_INTERRUPT = common dso_local global i32 0, align 4
@REG_CONTROL_INTERRUPT = common dso_local global i32 0, align 4
@REG_CONTROL_RTS = common dso_local global i32 0, align 4
@XMIT_BUF_ONE_READY = common dso_local global i32 0, align 4
@XMIT_BUF_TWO_READY = common dso_local global i32 0, align 4
@XMIT_SENDING_READY = common dso_local global i32 0, align 4
@REG_COMMAND_RX_BUF_ONE = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@REG_COMMAND_RX_BUF_TWO = common dso_local global i32 0, align 4
@CARD_READY = common dso_local global i32 0, align 4
@RTS_LEVEL_SHIFT_BITS = common dso_local global i32 0, align 4
@REG_RX_CONTROL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @bluecard_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluecard_open(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 10
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 9
  %18 = call i32 @init_timer(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32* @bluecard_activity_led_timeout, i32** %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = ptrtoint %struct.TYPE_8__* %22 to i64
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = call i32 @skb_queue_head_init(i32* %28)
  %30 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 6
  store i32* null, i32** %36, align 8
  %37 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %37, %struct.hci_dev** %5, align 8
  %38 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %39 = icmp ne %struct.hci_dev* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %1
  %41 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %252

44:                                               ; preds = %1
  %45 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store %struct.hci_dev* %45, %struct.hci_dev** %47, align 8
  %48 = load i32, i32* @HCI_PCCARD, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 7
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %54, i32* %58)
  %60 = load i32, i32* @bluecard_hci_open, align 4
  %61 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @bluecard_hci_close, align 4
  %64 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @bluecard_hci_flush, align 4
  %67 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @bluecard_hci_send_frame, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @bluecard_hci_destruct, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @bluecard_hci_ioctl, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %77 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @THIS_MODULE, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 48
  %83 = call zeroext i8 @inb(i32 %82)
  store i8 %83, i8* %6, align 1
  %84 = load i8, i8* %6, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 15
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %44
  %89 = load i32, i32* @CARD_HAS_PCCARD_ID, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %88, %44
  %94 = load i8, i8* %6, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 16
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @CARD_HAS_POWER_LED, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i8, i8* %6, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @CARD_HAS_ACTIVITY_LED, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = call i32 @set_bit(i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* @REG_CONTROL_BT_RESET, align 4
  %115 = load i32, i32* @REG_CONTROL_CARD_RESET, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @REG_CONTROL, align 4
  %124 = add i32 %122, %123
  %125 = call i32 @outb(i32 %121, i32 %124)
  %126 = load i32, i32* %4, align 4
  %127 = add i32 %126, 48
  %128 = call i32 @outb(i32 128, i32 %127)
  %129 = call i32 @msleep(i32 10)
  %130 = load i32, i32* %4, align 4
  %131 = add i32 %130, 48
  %132 = call i32 @outb(i32 0, i32 %131)
  %133 = load i32, i32* @REG_CONTROL_BT_ON, align 4
  %134 = load i32, i32* @REG_CONTROL_BT_RES_PU, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @REG_CONTROL, align 4
  %143 = add i32 %141, %142
  %144 = call i32 @outb(i32 %140, i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @REG_INTERRUPT, align 4
  %147 = add i32 %145, %146
  %148 = call i32 @outb(i32 255, i32 %147)
  %149 = load i32, i32* @REG_CONTROL_INTERRUPT, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @REG_CONTROL, align 4
  %159 = add i32 %157, %158
  %160 = call i32 @outb(i32 %156, i32 %159)
  %161 = load i8, i8* %6, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 15
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %214

165:                                              ; preds = %113
  %166 = load i32, i32* @REG_CONTROL_RTS, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @REG_CONTROL, align 4
  %176 = add i32 %174, %175
  %177 = call i32 @outb(i32 %173, i32 %176)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, 3
  store i32 %181, i32* %179, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @REG_CONTROL, align 4
  %187 = add i32 %185, %186
  %188 = call i32 @outb(i32 %184, i32 %187)
  %189 = load i32, i32* @REG_CONTROL_RTS, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @REG_CONTROL, align 4
  %200 = add i32 %198, %199
  %201 = call i32 @outb(i32 %197, i32 %200)
  %202 = load i32, i32* @XMIT_BUF_ONE_READY, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = call i32 @set_bit(i32 %202, i32* %204)
  %206 = load i32, i32* @XMIT_BUF_TWO_READY, align 4
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 4
  %209 = call i32 @set_bit(i32 %206, i32* %208)
  %210 = load i32, i32* @XMIT_SENDING_READY, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 4
  %213 = call i32 @set_bit(i32 %210, i32* %212)
  br label %214

214:                                              ; preds = %165, %113
  %215 = load i32, i32* @REG_COMMAND_RX_BUF_ONE, align 4
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @REG_COMMAND, align 4
  %218 = add i32 %216, %217
  %219 = call i32 @outb(i32 %215, i32 %218)
  %220 = load i32, i32* @REG_COMMAND_RX_BUF_TWO, align 4
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @REG_COMMAND, align 4
  %223 = add i32 %221, %222
  %224 = call i32 @outb(i32 %220, i32 %223)
  %225 = load i32, i32* @CARD_READY, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = call i32 @set_bit(i32 %225, i32* %227)
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = call i32 @skb_queue_purge(i32* %230)
  %232 = load i32, i32* @RTS_LEVEL_SHIFT_BITS, align 4
  %233 = shl i32 15, %232
  %234 = or i32 %233, 1
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @REG_RX_CONTROL, align 4
  %237 = add i32 %235, %236
  %238 = call i32 @outb(i32 %234, i32 %237)
  %239 = call i32 @msleep(i32 1250)
  %240 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %241 = call i64 @hci_register_dev(%struct.hci_dev* %240)
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %214
  %244 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  store %struct.hci_dev* null, %struct.hci_dev** %246, align 8
  %247 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %248 = call i32 @hci_free_dev(%struct.hci_dev* %247)
  %249 = load i32, i32* @ENODEV, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %2, align 4
  br label %252

251:                                              ; preds = %214
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %251, %243, %40
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
