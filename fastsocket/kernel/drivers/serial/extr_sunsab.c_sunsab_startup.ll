; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sunsab_port = type { i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@sunsab_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sab\00", align 1
@SAB82532_CMDR_RRES = common dso_local global i8 0, align 1
@SAB82532_CMDR_XRES = common dso_local global i8 0, align 1
@SAB82532_CCR0_MCE = common dso_local global i8 0, align 1
@SAB82532_CCR0_SC_NRZ = common dso_local global i8 0, align 1
@SAB82532_CCR0_SM_ASYNC = common dso_local global i8 0, align 1
@SAB82532_CCR1_ODS = common dso_local global i32 0, align 4
@SAB82532_CCR1_BCR = common dso_local global i32 0, align 4
@SAB82532_CCR2_BDF = common dso_local global i8 0, align 1
@SAB82532_CCR2_SSEL = common dso_local global i8 0, align 1
@SAB82532_CCR2_TOE = common dso_local global i8 0, align 1
@SAB82532_CCR4_MCK4 = common dso_local global i8 0, align 1
@SAB82532_CCR4_EBRG = common dso_local global i8 0, align 1
@SAB82532_MODE_RTS = common dso_local global i32 0, align 4
@SAB82532_MODE_FCTS = common dso_local global i32 0, align 4
@SAB82532_MODE_RAC = common dso_local global i32 0, align 4
@SAB82532_RFC_DPS = common dso_local global i8 0, align 1
@SAB82532_RFC_RFTH_32 = common dso_local global i8 0, align 1
@SAB82532_CCR0_PU = common dso_local global i8 0, align 1
@SAB82532_IMR0_PERR = common dso_local global i32 0, align 4
@SAB82532_IMR0_FERR = common dso_local global i32 0, align 4
@SAB82532_IMR0_PLLA = common dso_local global i32 0, align 4
@SAB82532_IMR1_BRKT = common dso_local global i32 0, align 4
@SAB82532_IMR1_ALLS = common dso_local global i32 0, align 4
@SAB82532_IMR1_XOFF = common dso_local global i32 0, align 4
@SAB82532_IMR1_TIN = common dso_local global i32 0, align 4
@SAB82532_IMR1_CSC = common dso_local global i32 0, align 4
@SAB82532_IMR1_XON = common dso_local global i32 0, align 4
@SAB82532_IMR1_XPR = common dso_local global i32 0, align 4
@SAB82532_ALLS = common dso_local global i32 0, align 4
@SAB82532_XPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sunsab_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunsab_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_sunsab_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = bitcast %struct.uart_port* %8 to %struct.uart_sunsab_port*
  store %struct.uart_sunsab_port* %9, %struct.uart_sunsab_port** %4, align 8
  %10 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @sunsab_interrupt, align 4
  %15 = load i32, i32* @IRQF_SHARED, align 4
  %16 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %17 = call i32 @request_irq(i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.uart_sunsab_port* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %228

22:                                               ; preds = %1
  %23 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %29 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %28)
  %30 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %31 = call i32 @sunsab_tec_wait(%struct.uart_sunsab_port* %30)
  %32 = load i8, i8* @SAB82532_CMDR_RRES, align 1
  %33 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %33, i32 0, i32 5
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 9
  %38 = call i32 @writeb(i8 zeroext %32, i32* %37)
  %39 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %40 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %39)
  %41 = load i8, i8* @SAB82532_CMDR_XRES, align 1
  %42 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %42, i32 0, i32 5
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 9
  %47 = call i32 @writeb(i8 zeroext %41, i32* %46)
  %48 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %48, i32 0, i32 5
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call zeroext i8 @readb(i32* %52)
  %54 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %54, i32 0, i32 5
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call zeroext i8 @readb(i32* %58)
  %60 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %61 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %60, i32 0, i32 5
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 8
  %65 = call i32 @writeb(i8 zeroext 0, i32* %64)
  %66 = load i8, i8* @SAB82532_CCR0_MCE, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @SAB82532_CCR0_SC_NRZ, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %67, %69
  %71 = load i8, i8* @SAB82532_CCR0_SM_ASYNC, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %70, %72
  %74 = trunc i32 %73 to i8
  %75 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %76 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %75, i32 0, i32 5
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 8
  %80 = call i32 @writeb(i8 zeroext %74, i32* %79)
  %81 = load i32, i32* @SAB82532_CCR1_ODS, align 4
  %82 = load i32, i32* @SAB82532_CCR1_BCR, align 4
  %83 = or i32 %81, %82
  %84 = or i32 %83, 7
  %85 = trunc i32 %84 to i8
  %86 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %87 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %86, i32 0, i32 5
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  %91 = call i32 @writeb(i8 zeroext %85, i32* %90)
  %92 = load i8, i8* @SAB82532_CCR2_BDF, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @SAB82532_CCR2_SSEL, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %93, %95
  %97 = load i8, i8* @SAB82532_CCR2_TOE, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  %101 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %102 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %101, i32 0, i32 5
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 6
  %106 = call i32 @writeb(i8 zeroext %100, i32* %105)
  %107 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %107, i32 0, i32 5
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  %112 = call i32 @writeb(i8 zeroext 0, i32* %111)
  %113 = load i8, i8* @SAB82532_CCR4_MCK4, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @SAB82532_CCR4_EBRG, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %114, %116
  %118 = trunc i32 %117 to i8
  %119 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %120 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %119, i32 0, i32 5
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = call i32 @writeb(i8 zeroext %118, i32* %123)
  %125 = load i32, i32* @SAB82532_MODE_RTS, align 4
  %126 = load i32, i32* @SAB82532_MODE_FCTS, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @SAB82532_MODE_RAC, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %131 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %133 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = trunc i32 %134 to i8
  %136 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %136, i32 0, i32 5
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = call i32 @writeb(i8 zeroext %135, i32* %140)
  %142 = load i8, i8* @SAB82532_RFC_DPS, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* @SAB82532_RFC_RFTH_32, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %143, %145
  %147 = trunc i32 %146 to i8
  %148 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %149 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %148, i32 0, i32 5
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = call i32 @writeb(i8 zeroext %147, i32* %152)
  %154 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %155 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %154, i32 0, i32 5
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = call zeroext i8 @readb(i32* %158)
  store i8 %159, i8* %6, align 1
  %160 = load i8, i8* @SAB82532_CCR0_PU, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* %6, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %163, %161
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %6, align 1
  %166 = load i8, i8* %6, align 1
  %167 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %168 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %167, i32 0, i32 5
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = call i32 @writeb(i8 zeroext %166, i32* %171)
  %173 = load i32, i32* @SAB82532_IMR0_PERR, align 4
  %174 = load i32, i32* @SAB82532_IMR0_FERR, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @SAB82532_IMR0_PLLA, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %179 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %181 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = trunc i32 %182 to i8
  %184 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %185 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %184, i32 0, i32 5
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = call i32 @writeb(i8 zeroext %183, i32* %188)
  %190 = load i32, i32* @SAB82532_IMR1_BRKT, align 4
  %191 = load i32, i32* @SAB82532_IMR1_ALLS, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @SAB82532_IMR1_XOFF, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @SAB82532_IMR1_TIN, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @SAB82532_IMR1_CSC, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @SAB82532_IMR1_XON, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @SAB82532_IMR1_XPR, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %204 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %206 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = trunc i32 %207 to i8
  %209 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %210 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %209, i32 0, i32 5
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = call i32 @writeb(i8 zeroext %208, i32* %213)
  %215 = load i32, i32* @SAB82532_ALLS, align 4
  %216 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %217 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %216, i32 0, i32 4
  %218 = call i32 @set_bit(i32 %215, i32* %217)
  %219 = load i32, i32* @SAB82532_XPR, align 4
  %220 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %221 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %220, i32 0, i32 4
  %222 = call i32 @set_bit(i32 %219, i32* %221)
  %223 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %4, align 8
  %224 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i64, i64* %5, align 8
  %227 = call i32 @spin_unlock_irqrestore(i32* %225, i64 %226)
  store i32 0, i32* %2, align 4
  br label %228

228:                                              ; preds = %22, %20
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_sunsab_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sunsab_cec_wait(%struct.uart_sunsab_port*) #1

declare dso_local i32 @sunsab_tec_wait(%struct.uart_sunsab_port*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
