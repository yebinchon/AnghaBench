; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i64 }
%struct.atmel_mci_slot = type { i32, i64, i32, %struct.atmel_mci* }
%struct.atmel_mci = type { i32, i32, i32, i32, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@MCI_SDCBUS_MASK = common dso_local global i32 0, align 4
@MCI_SDCBUS_1BIT = common dso_local global i32 0, align 4
@MCI_SDCBUS_4BIT = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@MCI_CR_SWRST = common dso_local global i32 0, align 4
@MCI_CR_MCIEN = common dso_local global i32 0, align 4
@ATMEL_MCI_MAX_NR_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"clock %u too slow; using %lu\0A\00", align 1
@MCI_MR_WRPROOF = common dso_local global i32 0, align 4
@MCI_MR_RDPROOF = common dso_local global i32 0, align 4
@MR = common dso_local global i32 0, align 4
@MCI_CR_MCIDIS = common dso_local global i32 0, align 4
@ATMCI_CARD_NEED_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @atmci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.atmel_mci_slot*, align 8
  %6 = alloca %struct.atmel_mci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host* %11)
  store %struct.atmel_mci_slot* %12, %struct.atmel_mci_slot** %5, align 8
  %13 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %13, i32 0, i32 3
  %15 = load %struct.atmel_mci*, %struct.atmel_mci** %14, align 8
  store %struct.atmel_mci* %15, %struct.atmel_mci** %6, align 8
  %16 = load i32, i32* @MCI_SDCBUS_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %19 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %37 [
    i32 130, label %25
    i32 129, label %31
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @MCI_SDCBUS_1BIT, align 4
  %27 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %28 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @MCI_SDCBUS_4BIT, align 4
  %33 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %2, %31, %25
  %38 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %172

42:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  %43 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %44 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %43, i32 0, i32 3
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %47 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %42
  %51 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %52 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_enable(i32 %53)
  %55 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %56 = load i32, i32* @CR, align 4
  %57 = load i32, i32* @MCI_CR_SWRST, align 4
  %58 = call i32 @mci_writel(%struct.atmel_mci* %55, i32 %56, i32 %57)
  %59 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %60 = load i32, i32* @CR, align 4
  %61 = load i32, i32* @MCI_CR_MCIEN, align 4
  %62 = call i32 @mci_writel(%struct.atmel_mci* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %50, %42
  %64 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %68 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %116, %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ATMEL_MCI_MAX_NR_SLOTS, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %69
  %74 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %75 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %76, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = icmp ne %struct.TYPE_2__* %80, null
  br i1 %81, label %82, label %115

82:                                               ; preds = %73
  %83 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %84 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %83, i32 0, i32 5
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %82
  %94 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %95 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %94, i32 0, i32 5
  %96 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %96, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %93
  %106 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %107 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %106, i32 0, i32 5
  %108 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %108, i64 %110
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %105, %93, %82, %73
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %69

119:                                              ; preds = %69
  %120 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %121 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = mul i32 2, %123
  %125 = call i32 @DIV_ROUND_UP(i32 %122, i32 %124)
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp sgt i32 %127, 255
  br i1 %128, label %129, label %138

129:                                              ; preds = %119
  %130 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %131 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %130, i32 0, i32 0
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %134 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 512
  %137 = call i32 @dev_warn(i32* %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %136)
  store i32 255, i32* %9, align 4
  br label %138

138:                                              ; preds = %129, %119
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @MCI_MR_CLKDIV(i32 %139)
  %141 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %142 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = call i64 (...) @mci_has_rwproof()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load i32, i32* @MCI_MR_WRPROOF, align 4
  %147 = load i32, i32* @MCI_MR_RDPROOF, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %150 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %145, %138
  %154 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %155 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %154, i32 0, i32 6
  %156 = call i64 @list_empty(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %160 = load i32, i32* @MR, align 4
  %161 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %162 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @mci_writel(%struct.atmel_mci* %159, i32 %160, i32 %163)
  br label %168

165:                                              ; preds = %153
  %166 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %167 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %166, i32 0, i32 2
  store i32 1, i32* %167, align 8
  br label %168

168:                                              ; preds = %165, %158
  %169 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %170 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %169, i32 0, i32 3
  %171 = call i32 @spin_unlock_bh(i32* %170)
  br label %234

172:                                              ; preds = %37
  store i32 0, i32* %10, align 4
  %173 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %174 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %173, i32 0, i32 3
  %175 = call i32 @spin_lock_bh(i32* %174)
  %176 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %177 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %176, i32 0, i32 1
  store i64 0, i64* %177, align 8
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %204, %172
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @ATMEL_MCI_MAX_NR_SLOTS, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %207

182:                                              ; preds = %178
  %183 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %184 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %183, i32 0, i32 5
  %185 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %185, i64 %187
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = icmp ne %struct.TYPE_2__* %189, null
  br i1 %190, label %191, label %203

191:                                              ; preds = %182
  %192 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %193 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %192, i32 0, i32 5
  %194 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %194, i64 %196
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  store i32 1, i32* %10, align 4
  br label %207

203:                                              ; preds = %191, %182
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %178

207:                                              ; preds = %202, %178
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %230, label %210

210:                                              ; preds = %207
  %211 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %212 = load i32, i32* @CR, align 4
  %213 = load i32, i32* @MCI_CR_MCIDIS, align 4
  %214 = call i32 @mci_writel(%struct.atmel_mci* %211, i32 %212, i32 %213)
  %215 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %216 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %210
  %220 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %221 = load i32, i32* @MR, align 4
  %222 = call i32 @mci_readl(%struct.atmel_mci* %220, i32 %221)
  %223 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %224 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @clk_disable(i32 %225)
  br label %227

227:                                              ; preds = %219, %210
  %228 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %229 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %228, i32 0, i32 0
  store i32 0, i32* %229, align 8
  br label %230

230:                                              ; preds = %227, %207
  %231 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %232 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %231, i32 0, i32 3
  %233 = call i32 @spin_unlock_bh(i32* %232)
  br label %234

234:                                              ; preds = %230, %168
  %235 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %236 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  switch i32 %237, label %243 [
    i32 128, label %238
  ]

238:                                              ; preds = %234
  %239 = load i32, i32* @ATMCI_CARD_NEED_INIT, align 4
  %240 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %241 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %240, i32 0, i32 0
  %242 = call i32 @set_bit(i32 %239, i32* %241)
  br label %244

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %238
  ret void
}

declare dso_local %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @mci_writel(%struct.atmel_mci*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @MCI_MR_CLKDIV(i32) #1

declare dso_local i64 @mci_has_rwproof(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mci_readl(%struct.atmel_mci*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
