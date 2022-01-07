; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_9__, i32, i64, i32, %struct.TYPE_10__*, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.BCState = type { i32, i32, i8* }

@.str = private unnamed_addr constant [35 x i8] c"HFC-PCI: int_m2 %x not initialised\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@HFCPCI_ANYINT = common dso_local global i32 0, align 4
@HFCPCI_STATUS = common dso_local global i32 0, align 4
@HFCPCI_INT_S1 = common dso_local global i32 0, align 4
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"HFC-PCI: stat(%02x) s1(%02x)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"HFC-PCI irq %x %s\00", align 1
@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unlocked\00", align 1
@HFCPCI_STATES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"ph_state chg %d->%d\00", align 1
@D_L1STATECHANGE = common dso_local global i32 0, align 4
@HFCPCI_CTMT = common dso_local global i32 0, align 4
@HFCPCI_CLTIMER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"hfcpci spurious 0x08 IRQ\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"hfcpci spurious 0x10 IRQ\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"hfcpci spurious 0x01 IRQ\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"fill_data %d blocked\00", align 1
@B_XMTBUFREADY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"hfcpci spurious 0x02 IRQ\00", align 1
@FLG_DBUSY_TIMER = common dso_local global i32 0, align 4
@FLG_L1_DBUSY = common dso_local global i32 0, align 4
@D_CLEARBUSY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"hfcpci_fill_dfifo irq blocked\00", align 1
@D_XMTBUFREADY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"HFC-PCI irq %x loop %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hfcpci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcpci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.IsdnCardState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.BCState*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %14, %struct.IsdnCardState** %7, align 8
  store i32 15, i32* %10, align 4
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %568

31:                                               ; preds = %2
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 1
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @spin_lock_irqsave(i32* %33, i32 %34)
  %36 = load i32, i32* @HFCPCI_ANYINT, align 4
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %38 = load i32, i32* @HFCPCI_STATUS, align 4
  %39 = call i32 @Read_hfc(%struct.IsdnCardState* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %31
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %44 = load i32, i32* @HFCPCI_INT_S1, align 4
  %45 = call i32 @Read_hfc(%struct.IsdnCardState* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @L1_DEB_ISAC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %42
  br label %64

58:                                               ; preds = %31
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 1
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i32 %61)
  %63 = load i32, i32* @IRQ_NONE, align 4
  store i32 %63, i32* %3, align 4
  br label %568

64:                                               ; preds = %57
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @L1_DEB_ISAC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %76 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %75, i32 0, i32 3
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %81 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %80)
  br label %82

82:                                               ; preds = %71, %64
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %84 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 64
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %82
  %94 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %95 = load i32, i32* @HFCPCI_STATES, align 4
  %96 = call i32 @Read_hfc(%struct.IsdnCardState* %94, i32 %95)
  %97 = and i32 %96, 15
  store i32 %97, i32* %8, align 4
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %99 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @L1_DEB_ISAC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %106 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %107 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %93
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %116 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 8
  %119 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %120 = load i32, i32* @D_L1STATECHANGE, align 4
  %121 = call i32 @sched_event_D_pci(%struct.IsdnCardState* %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %122, -65
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %113, %82
  %125 = load i32, i32* %11, align 4
  %126 = and i32 %125, 128
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %161

128:                                              ; preds = %124
  %129 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %130 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %128
  %136 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %137 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, -1
  store i64 %141, i64* %139, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %145 = load i32, i32* @D_L1STATECHANGE, align 4
  %146 = call i32 @sched_event_D_pci(%struct.IsdnCardState* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %135
  br label %148

148:                                              ; preds = %147, %128
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %149, -129
  store i32 %150, i32* %11, align 4
  %151 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %152 = load i32, i32* @HFCPCI_CTMT, align 4
  %153 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %154 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @HFCPCI_CLTIMER, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @Write_hfc(%struct.IsdnCardState* %151, i32 %152, i32 %159)
  br label %161

161:                                              ; preds = %148, %124
  br label %162

162:                                              ; preds = %561, %161
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %562

165:                                              ; preds = %162
  %166 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %167 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %168 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %167, i32 0, i32 3
  %169 = call i64 @test_bit(i32 %166, i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %165
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %174 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 4
  %179 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %180 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %179, i32 0, i32 1
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i32 %181)
  %183 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %183, i32* %3, align 4
  br label %568

184:                                              ; preds = %165
  %185 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %186 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 24
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %184
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %8, align 4
  %194 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %195 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %201 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %192, %184
  %205 = load i32, i32* %11, align 4
  %206 = and i32 %205, 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %233

208:                                              ; preds = %204
  %209 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %210 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %211 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 1, i32 0
  %218 = call %struct.BCState* @Sel_BCS(%struct.IsdnCardState* %209, i32 %217)
  store %struct.BCState* %218, %struct.BCState** %9, align 8
  %219 = icmp ne %struct.BCState* %218, null
  br i1 %219, label %229, label %220

220:                                              ; preds = %208
  %221 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %222 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %227 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %226, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %220
  br label %232

229:                                              ; preds = %208
  %230 = load %struct.BCState*, %struct.BCState** %9, align 8
  %231 = call i32 @main_rec_hfcpci(%struct.BCState* %230)
  br label %232

232:                                              ; preds = %229, %228
  br label %233

233:                                              ; preds = %232, %204
  %234 = load i32, i32* %11, align 4
  %235 = and i32 %234, 16
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %263

237:                                              ; preds = %233
  %238 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %239 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %238, i32 0, i32 8
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %244 = call i32 @receive_emsg(%struct.IsdnCardState* %243)
  br label %262

245:                                              ; preds = %237
  %246 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %247 = call %struct.BCState* @Sel_BCS(%struct.IsdnCardState* %246, i32 1)
  store %struct.BCState* %247, %struct.BCState** %9, align 8
  %248 = icmp ne %struct.BCState* %247, null
  br i1 %248, label %258, label %249

249:                                              ; preds = %245
  %250 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %251 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %256 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %255, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %249
  br label %261

258:                                              ; preds = %245
  %259 = load %struct.BCState*, %struct.BCState** %9, align 8
  %260 = call i32 @main_rec_hfcpci(%struct.BCState* %259)
  br label %261

261:                                              ; preds = %258, %257
  br label %262

262:                                              ; preds = %261, %242
  br label %263

263:                                              ; preds = %262, %233
  %264 = load i32, i32* %11, align 4
  %265 = and i32 %264, 1
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %347

267:                                              ; preds = %263
  %268 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %269 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %270 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 1, i32 0
  %277 = call %struct.BCState* @Sel_BCS(%struct.IsdnCardState* %268, i32 %276)
  store %struct.BCState* %277, %struct.BCState** %9, align 8
  %278 = icmp ne %struct.BCState* %277, null
  br i1 %278, label %288, label %279

279:                                              ; preds = %267
  %280 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %281 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %279
  %285 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %286 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %285, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %287

287:                                              ; preds = %284, %279
  br label %346

288:                                              ; preds = %267
  %289 = load %struct.BCState*, %struct.BCState** %9, align 8
  %290 = getelementptr inbounds %struct.BCState, %struct.BCState* %289, i32 0, i32 2
  %291 = load i8*, i8** %290, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %313

293:                                              ; preds = %288
  %294 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %295 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %296 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %295, i32 0, i32 3
  %297 = call i32 @test_and_set_bit(i32 %294, i32* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %293
  %300 = load %struct.BCState*, %struct.BCState** %9, align 8
  %301 = call i32 @hfcpci_fill_fifo(%struct.BCState* %300)
  %302 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %303 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %304 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %303, i32 0, i32 3
  %305 = call i64 @test_and_clear_bit(i32 %302, i32* %304)
  br label %312

306:                                              ; preds = %293
  %307 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %308 = load %struct.BCState*, %struct.BCState** %9, align 8
  %309 = getelementptr inbounds %struct.BCState, %struct.BCState* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %307, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %310)
  br label %312

312:                                              ; preds = %306, %299
  br label %345

313:                                              ; preds = %288
  %314 = load %struct.BCState*, %struct.BCState** %9, align 8
  %315 = getelementptr inbounds %struct.BCState, %struct.BCState* %314, i32 0, i32 1
  %316 = call i8* @skb_dequeue(i32* %315)
  %317 = load %struct.BCState*, %struct.BCState** %9, align 8
  %318 = getelementptr inbounds %struct.BCState, %struct.BCState* %317, i32 0, i32 2
  store i8* %316, i8** %318, align 8
  %319 = icmp ne i8* %316, null
  br i1 %319, label %320, label %340

320:                                              ; preds = %313
  %321 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %322 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %323 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %322, i32 0, i32 3
  %324 = call i32 @test_and_set_bit(i32 %321, i32* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %320
  %327 = load %struct.BCState*, %struct.BCState** %9, align 8
  %328 = call i32 @hfcpci_fill_fifo(%struct.BCState* %327)
  %329 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %330 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %331 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %330, i32 0, i32 3
  %332 = call i64 @test_and_clear_bit(i32 %329, i32* %331)
  br label %339

333:                                              ; preds = %320
  %334 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %335 = load %struct.BCState*, %struct.BCState** %9, align 8
  %336 = getelementptr inbounds %struct.BCState, %struct.BCState* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %334, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %337)
  br label %339

339:                                              ; preds = %333, %326
  br label %344

340:                                              ; preds = %313
  %341 = load %struct.BCState*, %struct.BCState** %9, align 8
  %342 = load i32, i32* @B_XMTBUFREADY, align 4
  %343 = call i32 @hfcpci_sched_event(%struct.BCState* %341, i32 %342)
  br label %344

344:                                              ; preds = %340, %339
  br label %345

345:                                              ; preds = %344, %312
  br label %346

346:                                              ; preds = %345, %287
  br label %347

347:                                              ; preds = %346, %263
  %348 = load i32, i32* %11, align 4
  %349 = and i32 %348, 2
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %423

351:                                              ; preds = %347
  %352 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %353 = call %struct.BCState* @Sel_BCS(%struct.IsdnCardState* %352, i32 1)
  store %struct.BCState* %353, %struct.BCState** %9, align 8
  %354 = icmp ne %struct.BCState* %353, null
  br i1 %354, label %364, label %355

355:                                              ; preds = %351
  %356 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %357 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %362 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %361, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %363

363:                                              ; preds = %360, %355
  br label %422

364:                                              ; preds = %351
  %365 = load %struct.BCState*, %struct.BCState** %9, align 8
  %366 = getelementptr inbounds %struct.BCState, %struct.BCState* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %389

369:                                              ; preds = %364
  %370 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %371 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %372 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %371, i32 0, i32 3
  %373 = call i32 @test_and_set_bit(i32 %370, i32* %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %382, label %375

375:                                              ; preds = %369
  %376 = load %struct.BCState*, %struct.BCState** %9, align 8
  %377 = call i32 @hfcpci_fill_fifo(%struct.BCState* %376)
  %378 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %379 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %380 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %379, i32 0, i32 3
  %381 = call i64 @test_and_clear_bit(i32 %378, i32* %380)
  br label %388

382:                                              ; preds = %369
  %383 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %384 = load %struct.BCState*, %struct.BCState** %9, align 8
  %385 = getelementptr inbounds %struct.BCState, %struct.BCState* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %383, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %386)
  br label %388

388:                                              ; preds = %382, %375
  br label %421

389:                                              ; preds = %364
  %390 = load %struct.BCState*, %struct.BCState** %9, align 8
  %391 = getelementptr inbounds %struct.BCState, %struct.BCState* %390, i32 0, i32 1
  %392 = call i8* @skb_dequeue(i32* %391)
  %393 = load %struct.BCState*, %struct.BCState** %9, align 8
  %394 = getelementptr inbounds %struct.BCState, %struct.BCState* %393, i32 0, i32 2
  store i8* %392, i8** %394, align 8
  %395 = icmp ne i8* %392, null
  br i1 %395, label %396, label %416

396:                                              ; preds = %389
  %397 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %398 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %399 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %398, i32 0, i32 3
  %400 = call i32 @test_and_set_bit(i32 %397, i32* %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %409, label %402

402:                                              ; preds = %396
  %403 = load %struct.BCState*, %struct.BCState** %9, align 8
  %404 = call i32 @hfcpci_fill_fifo(%struct.BCState* %403)
  %405 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %406 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %407 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %406, i32 0, i32 3
  %408 = call i64 @test_and_clear_bit(i32 %405, i32* %407)
  br label %415

409:                                              ; preds = %396
  %410 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %411 = load %struct.BCState*, %struct.BCState** %9, align 8
  %412 = getelementptr inbounds %struct.BCState, %struct.BCState* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %410, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %409, %402
  br label %420

416:                                              ; preds = %389
  %417 = load %struct.BCState*, %struct.BCState** %9, align 8
  %418 = load i32, i32* @B_XMTBUFREADY, align 4
  %419 = call i32 @hfcpci_sched_event(%struct.BCState* %417, i32 %418)
  br label %420

420:                                              ; preds = %416, %415
  br label %421

421:                                              ; preds = %420, %388
  br label %422

422:                                              ; preds = %421, %363
  br label %423

423:                                              ; preds = %422, %347
  %424 = load i32, i32* %11, align 4
  %425 = and i32 %424, 32
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %423
  %428 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %429 = call i32 @receive_dmsg(%struct.IsdnCardState* %428)
  br label %430

430:                                              ; preds = %427, %423
  %431 = load i32, i32* %11, align 4
  %432 = and i32 %431, 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %525

434:                                              ; preds = %430
  %435 = load i32, i32* @FLG_DBUSY_TIMER, align 4
  %436 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %437 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %436, i32 0, i32 3
  %438 = call i64 @test_and_clear_bit(i32 %435, i32* %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %434
  %441 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %442 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %441, i32 0, i32 7
  %443 = call i32 @del_timer(i32* %442)
  br label %444

444:                                              ; preds = %440, %434
  %445 = load i32, i32* @FLG_L1_DBUSY, align 4
  %446 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %447 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %446, i32 0, i32 3
  %448 = call i64 @test_and_clear_bit(i32 %445, i32* %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %444
  %451 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %452 = load i32, i32* @D_CLEARBUSY, align 4
  %453 = call i32 @sched_event_D_pci(%struct.IsdnCardState* %451, i32 %452)
  br label %454

454:                                              ; preds = %450, %444
  %455 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %456 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %455, i32 0, i32 6
  %457 = load %struct.TYPE_10__*, %struct.TYPE_10__** %456, align 8
  %458 = icmp ne %struct.TYPE_10__* %457, null
  br i1 %458, label %459, label %493

459:                                              ; preds = %454
  %460 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %461 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %460, i32 0, i32 6
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %483

466:                                              ; preds = %459
  %467 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %468 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %469 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %468, i32 0, i32 3
  %470 = call i32 @test_and_set_bit(i32 %467, i32* %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %479, label %472

472:                                              ; preds = %466
  %473 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %474 = call i32 @hfcpci_fill_dfifo(%struct.IsdnCardState* %473)
  %475 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %476 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %477 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %476, i32 0, i32 3
  %478 = call i64 @test_and_clear_bit(i32 %475, i32* %477)
  br label %482

479:                                              ; preds = %466
  %480 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %481 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %480, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %482

482:                                              ; preds = %479, %472
  br label %526

483:                                              ; preds = %459
  %484 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %485 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %484, i32 0, i32 6
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %485, align 8
  %487 = call i32 @dev_kfree_skb_irq(%struct.TYPE_10__* %486)
  %488 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %489 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %488, i32 0, i32 4
  store i64 0, i64* %489, align 8
  %490 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %491 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %490, i32 0, i32 6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %491, align 8
  br label %492

492:                                              ; preds = %483
  br label %493

493:                                              ; preds = %492, %454
  %494 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %495 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %494, i32 0, i32 5
  %496 = call i8* @skb_dequeue(i32* %495)
  %497 = bitcast i8* %496 to %struct.TYPE_10__*
  %498 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %499 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %498, i32 0, i32 6
  store %struct.TYPE_10__* %497, %struct.TYPE_10__** %499, align 8
  %500 = icmp ne %struct.TYPE_10__* %497, null
  br i1 %500, label %501, label %520

501:                                              ; preds = %493
  %502 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %503 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %502, i32 0, i32 4
  store i64 0, i64* %503, align 8
  %504 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %505 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %506 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %505, i32 0, i32 3
  %507 = call i32 @test_and_set_bit(i32 %504, i32* %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %516, label %509

509:                                              ; preds = %501
  %510 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %511 = call i32 @hfcpci_fill_dfifo(%struct.IsdnCardState* %510)
  %512 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %513 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %514 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %513, i32 0, i32 3
  %515 = call i64 @test_and_clear_bit(i32 %512, i32* %514)
  br label %519

516:                                              ; preds = %501
  %517 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %518 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %517, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %519

519:                                              ; preds = %516, %509
  br label %524

520:                                              ; preds = %493
  %521 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %522 = load i32, i32* @D_XMTBUFREADY, align 4
  %523 = call i32 @sched_event_D_pci(%struct.IsdnCardState* %521, i32 %522)
  br label %524

524:                                              ; preds = %520, %519
  br label %525

525:                                              ; preds = %524, %430
  br label %526

526:                                              ; preds = %525, %482
  %527 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %528 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i32 0, i32 4
  %531 = load i32, i32* %530, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %560

533:                                              ; preds = %526
  %534 = load i32, i32* %10, align 4
  %535 = add nsw i32 %534, -1
  store i32 %535, i32* %10, align 4
  %536 = icmp ne i32 %534, 0
  br i1 %536, label %537, label %560

537:                                              ; preds = %533
  %538 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %539 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 4
  %542 = load i32, i32* %541, align 4
  store i32 %542, i32* %11, align 4
  %543 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %544 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %543, i32 0, i32 2
  %545 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 4
  store i32 0, i32* %546, align 4
  %547 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %548 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @L1_DEB_ISAC, align 4
  %551 = and i32 %549, %550
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %559

553:                                              ; preds = %537
  %554 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %555 = load i32, i32* %11, align 4
  %556 = load i32, i32* %10, align 4
  %557 = sub nsw i32 15, %556
  %558 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %554, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %555, i32 %557)
  br label %559

559:                                              ; preds = %553, %537
  br label %561

560:                                              ; preds = %533, %526
  store i32 0, i32* %11, align 4
  br label %561

561:                                              ; preds = %560, %559
  br label %162

562:                                              ; preds = %162
  %563 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %564 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %563, i32 0, i32 1
  %565 = load i32, i32* %6, align 4
  %566 = call i32 @spin_unlock_irqrestore(i32* %564, i32 %565)
  %567 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %567, i32* %3, align 4
  br label %568

568:                                              ; preds = %562, %171, %58, %22
  %569 = load i32, i32* %3, align 4
  ret i32 %569
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @Read_hfc(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sched_event_D_pci(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

declare dso_local %struct.BCState* @Sel_BCS(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @main_rec_hfcpci(%struct.BCState*) #1

declare dso_local i32 @receive_emsg(%struct.IsdnCardState*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hfcpci_fill_fifo(%struct.BCState*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i8* @skb_dequeue(i32*) #1

declare dso_local i32 @hfcpci_sched_event(%struct.BCState*, i32) #1

declare dso_local i32 @receive_dmsg(%struct.IsdnCardState*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @hfcpci_fill_dfifo(%struct.IsdnCardState*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
