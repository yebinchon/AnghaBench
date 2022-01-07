; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_bringup_serdes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_bringup_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Trying to bringup serdes\0A\00", align 1
@INFINIPATH_HWE_SERDESPLLFAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"At start, serdes PLL failed bit set in hwerrstatus, clearing and continuing\0A\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"Initial serdes status is config0=%llx config1=%llx, sstatus=%llx xgxs %llx\0A\00", align 1
@INFINIPATH_SERDC0_RESET_PLL = common dso_local global i32 0, align 4
@INFINIPATH_SERDC0_RESET_MASK = common dso_local global i32 0, align 4
@INFINIPATH_SERDC0_TXIDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Clearing serdes PLL reset (writing %llx)\0A\00", align 1
@INFINIPATH_XGXS_RESET = common dso_local global i32 0, align 4
@INFINIPATH_XGXS_RX_POL_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_XGXS_RX_POL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"After setup: serdes status is config0=%llx config1=%llx, sstatus=%llx xgxs %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @ipath_ht_bringup_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_ht_bringup_serdes(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = call i32 @ipath_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %9, i32 %14)
  %16 = load i32, i32* @INFINIPATH_HWE_SERDESPLLFAILED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = call i32 @ipath_dbg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @INFINIPATH_HWE_SERDESPLLFAILED, align 4
  %28 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %21, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %1
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %30, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %39 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %37, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @VERBOSE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %49, i32 %54)
  %56 = sext i32 %55 to i64
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %57, i32 %62)
  %64 = sext i32 %63 to i64
  %65 = call i32 (i32, i8*, i64, ...) @ipath_cdbg(i32 %44, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 %48, i64 %56, i64 %64)
  %66 = load i32, i32* @INFINIPATH_SERDC0_RESET_PLL, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %69, i32 %74, i32 %75)
  %77 = call i32 @udelay(i32 15)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @INFINIPATH_SERDC0_RESET_PLL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %29
  %83 = load i32, i32* @INFINIPATH_SERDC0_RESET_PLL, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %3, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %3, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @INFINIPATH_SERDC0_RESET_MASK, align 4
  %88 = load i32, i32* @INFINIPATH_SERDC0_TXIDLE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @VERBOSE, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 (i32, i8*, i64, ...) @ipath_cdbg(i32 %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  %96 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %97 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %98 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %96, i32 %101, i32 %102)
  %104 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %105 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %106 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %104, i32 %109)
  store i32 %110, i32* %3, align 4
  %111 = call i32 @udelay(i32 15)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %82, %29
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @INFINIPATH_SERDC0_RESET_PLL, align 4
  %116 = load i32, i32* @INFINIPATH_SERDC0_RESET_MASK, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @INFINIPATH_SERDC0_TXIDLE, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %114, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %113
  %123 = load i32, i32* @INFINIPATH_SERDC0_RESET_PLL, align 4
  %124 = load i32, i32* @INFINIPATH_SERDC0_RESET_MASK, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @INFINIPATH_SERDC0_TXIDLE, align 4
  %127 = or i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %3, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %3, align 4
  %131 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %132 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %133 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %131, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %122, %113
  %140 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %141 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %142 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %140, i32 %145)
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @INFINIPATH_XGXS_RESET, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %139
  %152 = load i32, i32* @INFINIPATH_XGXS_RESET, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %3, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %3, align 4
  store i32 1, i32* %6, align 4
  br label %156

156:                                              ; preds = %151, %139
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @INFINIPATH_XGXS_RX_POL_SHIFT, align 4
  %159 = ashr i32 %157, %158
  %160 = load i32, i32* @INFINIPATH_XGXS_RX_POL_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %163 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %156
  %167 = load i32, i32* @INFINIPATH_XGXS_RX_POL_MASK, align 4
  %168 = load i32, i32* @INFINIPATH_XGXS_RX_POL_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %3, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %3, align 4
  %173 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %174 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @INFINIPATH_XGXS_RX_POL_SHIFT, align 4
  %177 = shl i32 %175, %176
  %178 = load i32, i32* %3, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %3, align 4
  store i32 1, i32* %6, align 4
  br label %180

180:                                              ; preds = %166, %156
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %185 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %186 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %184, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %183, %180
  %193 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %194 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %195 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %193, i32 %198)
  store i32 %199, i32* %3, align 4
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = and i64 %201, -1099511627521
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %4, align 4
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = or i64 %208, 879595880448
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %4, align 4
  %211 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %212 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %213 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %211, i32 %216, i32 %217)
  %219 = load i32, i32* @VERBOSE, align 4
  %220 = load i32, i32* %3, align 4
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %225 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %226 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %225, i32 0, i32 1
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %224, i32 %229)
  %231 = sext i32 %230 to i64
  %232 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %233 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %234 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %233, i32 0, i32 1
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %232, i32 %237)
  %239 = sext i32 %238 to i64
  %240 = call i32 (i32, i8*, i64, ...) @ipath_cdbg(i32 %219, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i64 %221, i64 %223, i64 %231, i64 %239)
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local i32 @ipath_dbg(i8*) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, ...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
