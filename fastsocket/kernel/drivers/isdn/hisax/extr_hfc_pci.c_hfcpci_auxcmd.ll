; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_auxcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_pci.c_hfcpci_auxcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@HFCPCI_INTS_B2TRANS = common dso_local global i32 0, align 4
@HFCPCI_INTS_B2REC = common dso_local global i32 0, align 4
@HFCPCI_INTS_B1TRANS = common dso_local global i32 0, align 4
@HFCPCI_INTS_B1REC = common dso_local global i32 0, align 4
@HFCPCI_CLKDEL = common dso_local global i32 0, align 4
@CLKDEL_NT = common dso_local global i32 0, align 4
@HFCPCI_STATES = common dso_local global i32 0, align 4
@HFCPCI_LOAD_STATE = common dso_local global i32 0, align 4
@SCTRL_MODE_NT = common dso_local global i32 0, align 4
@HFCPCI_SCTRL = common dso_local global i32 0, align 4
@HFCPCI_ACTIVATE = common dso_local global i32 0, align 4
@HFCPCI_DO_ACTION = common dso_local global i32 0, align 4
@dch_nt_l2l1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"NT mode activated\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HFCPCI_FIFOEN_B2RX = common dso_local global i32 0, align 4
@SCTRL_B2_ENA = common dso_local global i32 0, align 4
@HFCPCI_CTMT = common dso_local global i32 0, align 4
@HFCPCI_SCTRL_R = common dso_local global i32 0, align 4
@HFCPCI_CONNECT = common dso_local global i32 0, align 4
@HFCPCI_TRM = common dso_local global i32 0, align 4
@HFCPCI_FIFO_EN = common dso_local global i32 0, align 4
@HFCPCI_INT_M1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, %struct.TYPE_17__*)* @hfcpci_auxcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcpci_auxcmd(%struct.IsdnCardState* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 98
  br i1 %17, label %18, label %100

18:                                               ; preds = %2
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HFCPCI_INTS_B2TRANS, align 4
  %25 = load i32, i32* @HFCPCI_INTS_B2REC, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @HFCPCI_INTS_B1TRANS, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @HFCPCI_INTS_B1REC, align 4
  %30 = add nsw i32 %28, %29
  %31 = and i32 %23, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %100, label %33

33:                                               ; preds = %18
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 2
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @spin_lock_irqsave(i32* %35, i32 %36)
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %39 = load i32, i32* @HFCPCI_CLKDEL, align 4
  %40 = load i32, i32* @CLKDEL_NT, align 4
  %41 = call i32 @Write_hfc(%struct.IsdnCardState* %38, i32 %39, i32 %40)
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %43 = load i32, i32* @HFCPCI_STATES, align 4
  %44 = load i32, i32* @HFCPCI_LOAD_STATE, align 4
  %45 = call i32 @Write_hfc(%struct.IsdnCardState* %42, i32 %43, i32 %44)
  %46 = call i32 @udelay(i32 10)
  %47 = load i32, i32* @SCTRL_MODE_NT, align 4
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %49 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %55 = load i32, i32* @HFCPCI_SCTRL, align 4
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @Write_hfc(%struct.IsdnCardState* %54, i32 %55, i32 %60)
  %62 = call i32 @udelay(i32 10)
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %64 = load i32, i32* @HFCPCI_STATES, align 4
  %65 = load i32, i32* @HFCPCI_LOAD_STATE, align 4
  %66 = or i32 %65, 1
  %67 = call i32 @Write_hfc(%struct.IsdnCardState* %63, i32 %64, i32 %66)
  %68 = call i32 @udelay(i32 10)
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %70 = load i32, i32* @HFCPCI_STATES, align 4
  %71 = load i32, i32* @HFCPCI_ACTIVATE, align 4
  %72 = or i32 1, %71
  %73 = load i32, i32* @HFCPCI_DO_ACTION, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @Write_hfc(%struct.IsdnCardState* %69, i32 %70, i32 %74)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %81 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %85 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 9
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* @dch_nt_l2l1, align 4
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 4
  %94 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %95 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %94, i32 0, i32 2
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i32 %96)
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %99 = call i32 @debugl1(%struct.IsdnCardState* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %271

100:                                              ; preds = %18, %2
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %124, label %105

105:                                              ; preds = %100
  %106 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %107 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %105
  %113 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %114 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %112
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 12
  br i1 %123, label %124, label %127

124:                                              ; preds = %119, %112, %105, %100
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %271

127:                                              ; preds = %119
  %128 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %129 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %128, i32 0, i32 2
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @spin_lock_irqsave(i32* %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %127
  %135 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %136 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %138 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, 32
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @HFCPCI_INTS_B2REC, align 4
  %144 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %145 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @HFCPCI_FIFOEN_B2RX, align 4
  %151 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %152 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %150
  store i32 %156, i32* %154, align 8
  br label %182

157:                                              ; preds = %127
  %158 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %159 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %161 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, -33
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @HFCPCI_INTS_B2REC, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %169 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %167
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @HFCPCI_FIFOEN_B2RX, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %177 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %175
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %157, %134
  %183 = load i32, i32* @SCTRL_B2_ENA, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %186 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, %184
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* @SCTRL_B2_ENA, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %194 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %192
  store i32 %198, i32* %196, align 4
  %199 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %200 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, 16
  store i32 %204, i32* %202, align 8
  %205 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %206 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, -3
  store i32 %210, i32* %208, align 4
  %211 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %212 = load i32, i32* @HFCPCI_CTMT, align 4
  %213 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %214 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @Write_hfc(%struct.IsdnCardState* %211, i32 %212, i32 %217)
  %219 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %220 = load i32, i32* @HFCPCI_SCTRL_R, align 4
  %221 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %222 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @Write_hfc(%struct.IsdnCardState* %219, i32 %220, i32 %225)
  %227 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %228 = load i32, i32* @HFCPCI_SCTRL, align 4
  %229 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %230 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @Write_hfc(%struct.IsdnCardState* %227, i32 %228, i32 %233)
  %235 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %236 = load i32, i32* @HFCPCI_CONNECT, align 4
  %237 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %238 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @Write_hfc(%struct.IsdnCardState* %235, i32 %236, i32 %241)
  %243 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %244 = load i32, i32* @HFCPCI_TRM, align 4
  %245 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %246 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @Write_hfc(%struct.IsdnCardState* %243, i32 %244, i32 %249)
  %251 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %252 = load i32, i32* @HFCPCI_FIFO_EN, align 4
  %253 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %254 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @Write_hfc(%struct.IsdnCardState* %251, i32 %252, i32 %257)
  %259 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %260 = load i32, i32* @HFCPCI_INT_M1, align 4
  %261 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %262 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @Write_hfc(%struct.IsdnCardState* %259, i32 %260, i32 %265)
  %267 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %268 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %267, i32 0, i32 2
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @spin_unlock_irqrestore(i32* %268, i32 %269)
  store i32 0, i32* %3, align 4
  br label %271

271:                                              ; preds = %182, %124, %33
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
