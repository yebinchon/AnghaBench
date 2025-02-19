; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_Reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }

@i_TimerCounter1Init = common dso_local global i64 0, align 8
@i_TimerCounter2Init = common dso_local global i64 0, align 8
@i_WatchdogCounter3Init = common dso_local global i64 0, align 8
@i_Event1Status = common dso_local global i64 0, align 8
@i_Event2Status = common dso_local global i64 0, align 8
@i_TimerCounterWatchdogInterrupt = common dso_local global i64 0, align 8
@i_Logic = common dso_local global i64 0, align 8
@i_CounterLogic = common dso_local global i64 0, align 8
@i_InterruptMask = common dso_local global i64 0, align 8
@i_InputChannel = common dso_local global i64 0, align 8
@i_TimerCounter1Enabled = common dso_local global i64 0, align 8
@i_TimerCounter2Enabled = common dso_local global i64 0, align 8
@i_WatchdogCounter3Enabled = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_Z8536_CONTROL_REGISTER = common dso_local global i64 0, align 8
@APCI1500_RW_MASTER_CONFIGURATION_CONTROL = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_DATA_PCITCH_POLARITY = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_DATA_DIRECTION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_A_HANDSHAKE_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_DATA_PCITCH_POLARITY = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_DATA_DIRECTION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_COMMAND_AND_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_B_HANDSHAKE_SPECIFICATION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_C_DATA_PCITCH_POLARITY = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_C_DATA_DIRECTION = common dso_local global i32 0, align 4
@APCI1500_RW_PORT_C_SPECIAL_IO_CONTROL = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR1_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR2_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_CPT_TMR3_CMD_STATUS = common dso_local global i32 0, align 4
@APCI1500_RW_MASTER_INTERRUPT_CONTROL = common dso_local global i32 0, align 4
@APCI1500_DIGITAL_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_Reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* @i_TimerCounter1Init, align 8
  store i64 0, i64* @i_TimerCounter2Init, align 8
  store i64 0, i64* @i_WatchdogCounter3Init, align 8
  store i64 0, i64* @i_Event1Status, align 8
  store i64 0, i64* @i_Event2Status, align 8
  store i64 0, i64* @i_TimerCounterWatchdogInterrupt, align 8
  store i64 0, i64* @i_Logic, align 8
  store i64 0, i64* @i_CounterLogic, align 8
  store i64 0, i64* @i_InterruptMask, align 8
  store i64 0, i64* @i_InputChannel, align 8
  store i64 0, i64* @i_TimerCounter1Enabled, align 8
  store i64 0, i64* @i_TimerCounter2Enabled, align 8
  store i64 0, i64* @i_WatchdogCounter3Enabled, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @inb(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb(i32 0, i64 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inb(i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 0, i64 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i32 1, i64 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 0, i64 %38)
  %40 = load i32, i32* @APCI1500_RW_MASTER_CONFIGURATION_CONTROL, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i32 %40, i64 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 244, i64 %51)
  %53 = load i32, i32* @APCI1500_RW_PORT_A_SPECIFICATION, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 %53, i64 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i32 16, i64 %64)
  %66 = load i32, i32* @APCI1500_RW_PORT_A_DATA_PCITCH_POLARITY, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 255, i64 %77)
  %79 = load i32, i32* @APCI1500_RW_PORT_A_DATA_DIRECTION, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 %79, i64 %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outb(i32 255, i64 %90)
  %92 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i32 %92, i64 %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 32, i64 %103)
  %105 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outb(i32 %105, i64 %110)
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outb(i32 224, i64 %116)
  %118 = load i32, i32* @APCI1500_RW_PORT_A_HANDSHAKE_SPECIFICATION, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outb(i32 %118, i64 %123)
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @outb(i32 0, i64 %129)
  %131 = load i32, i32* @APCI1500_RW_PORT_B_SPECIFICATION, align 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outb(i32 %131, i64 %136)
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @outb(i32 16, i64 %142)
  %144 = load i32, i32* @APCI1500_RW_PORT_B_DATA_PCITCH_POLARITY, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @outb(i32 %144, i64 %149)
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @outb(i32 127, i64 %155)
  %157 = load i32, i32* @APCI1500_RW_PORT_B_DATA_DIRECTION, align 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @outb(i32 %157, i64 %162)
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @outb(i32 255, i64 %168)
  %170 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @outb(i32 %170, i64 %175)
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @outb(i32 32, i64 %181)
  %183 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outb(i32 %183, i64 %188)
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @outb(i32 224, i64 %194)
  %196 = load i32, i32* @APCI1500_RW_PORT_B_HANDSHAKE_SPECIFICATION, align 4
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @outb(i32 %196, i64 %201)
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @outb(i32 0, i64 %207)
  %209 = load i32, i32* @APCI1500_RW_PORT_C_DATA_PCITCH_POLARITY, align 4
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @outb(i32 %209, i64 %214)
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @outb(i32 9, i64 %220)
  %222 = load i32, i32* @APCI1500_RW_PORT_C_DATA_DIRECTION, align 4
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @outb(i32 %222, i64 %227)
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @outb(i32 14, i64 %233)
  %235 = load i32, i32* @APCI1500_RW_PORT_C_SPECIAL_IO_CONTROL, align 4
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @outb(i32 %235, i64 %240)
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @outb(i32 0, i64 %246)
  %248 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %253 = add nsw i64 %251, %252
  %254 = call i32 @outb(i32 %248, i64 %253)
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @outb(i32 32, i64 %259)
  %261 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @outb(i32 %261, i64 %266)
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %272 = add nsw i64 %270, %271
  %273 = call i32 @outb(i32 224, i64 %272)
  %274 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @outb(i32 %274, i64 %279)
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %285 = add nsw i64 %283, %284
  %286 = call i32 @outb(i32 32, i64 %285)
  %287 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @outb(i32 %287, i64 %292)
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %298 = add nsw i64 %296, %297
  %299 = call i32 @outb(i32 224, i64 %298)
  %300 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @outb(i32 %300, i64 %305)
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %311 = add nsw i64 %309, %310
  %312 = call i32 @outb(i32 32, i64 %311)
  %313 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i32 @outb(i32 %313, i64 %318)
  %320 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %324 = add nsw i64 %322, %323
  %325 = call i32 @outb(i32 224, i64 %324)
  %326 = load i32, i32* @APCI1500_RW_MASTER_INTERRUPT_CONTROL, align 4
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %331 = add nsw i64 %329, %330
  %332 = call i32 @outb(i32 %326, i64 %331)
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %337 = add nsw i64 %335, %336
  %338 = call i32 @outb(i32 0, i64 %337)
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @APCI1500_DIGITAL_OP, align 8
  %343 = add nsw i64 %341, %342
  %344 = call i32 @outw(i32 0, i64 %343)
  %345 = load i32, i32* @APCI1500_RW_MASTER_INTERRUPT_CONTROL, align 4
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %350 = add nsw i64 %348, %349
  %351 = call i32 @outb(i32 %345, i64 %350)
  %352 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %356 = add nsw i64 %354, %355
  %357 = call i32 @outb(i32 0, i64 %356)
  %358 = load i32, i32* @APCI1500_RW_PORT_A_COMMAND_AND_STATUS, align 4
  %359 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %363 = add nsw i64 %361, %362
  %364 = call i32 @outb(i32 %358, i64 %363)
  %365 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i32 @outb(i32 0, i64 %369)
  %371 = load i32, i32* @APCI1500_RW_PORT_B_COMMAND_AND_STATUS, align 4
  %372 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %376 = add nsw i64 %374, %375
  %377 = call i32 @outb(i32 %371, i64 %376)
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %382 = add nsw i64 %380, %381
  %383 = call i32 @outb(i32 0, i64 %382)
  %384 = load i32, i32* @APCI1500_RW_CPT_TMR1_CMD_STATUS, align 4
  %385 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %389 = add nsw i64 %387, %388
  %390 = call i32 @outb(i32 %384, i64 %389)
  %391 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %392 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %395 = add nsw i64 %393, %394
  %396 = call i32 @outb(i32 0, i64 %395)
  %397 = load i32, i32* @APCI1500_RW_CPT_TMR2_CMD_STATUS, align 4
  %398 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %402 = add nsw i64 %400, %401
  %403 = call i32 @outb(i32 %397, i64 %402)
  %404 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %408 = add nsw i64 %406, %407
  %409 = call i32 @outb(i32 0, i64 %408)
  %410 = load i32, i32* @APCI1500_RW_CPT_TMR3_CMD_STATUS, align 4
  %411 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %415 = add nsw i64 %413, %414
  %416 = call i32 @outb(i32 %410, i64 %415)
  %417 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @APCI1500_Z8536_CONTROL_REGISTER, align 8
  %421 = add nsw i64 %419, %420
  %422 = call i32 @outb(i32 0, i64 %421)
  ret i32 0
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
