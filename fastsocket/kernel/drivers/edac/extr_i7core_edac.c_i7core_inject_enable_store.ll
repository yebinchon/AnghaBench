; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_inject_enable_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_i7core_inject_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { %struct.TYPE_4__, i32, i32**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@MC_CFG_CONTROL = common dso_local global i32 0, align 4
@MC_CHANNEL_ADDR_MATCH = common dso_local global i64 0, align 8
@MC_CHANNEL_ERROR_MASK = common dso_local global i64 0, align 8
@MC_CHANNEL_ERROR_INJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Error inject addr match 0x%016llx, ecc 0x%08x, inject 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i8*, i64)* @i7core_inject_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i7core_inject_enable_store(%struct.mem_ctl_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i7core_pvt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.i7core_pvt*, %struct.i7core_pvt** %14, align 8
  store %struct.i7core_pvt* %15, %struct.i7core_pvt** %8, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %17 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %16, i32 0, i32 2
  %18 = load i32**, i32*** %17, align 8
  %19 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %20 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %18, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %286

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strict_strtoul(i8* %30, i32 10, i64* %12)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  br label %286

35:                                               ; preds = %29
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %40 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %44 = call i32 @disable_inject(%struct.mem_ctl_info* %43)
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %4, align 8
  br label %286

46:                                               ; preds = %38
  %47 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %48 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i64, i64* %10, align 8
  %54 = or i64 %53, 2199023255552
  store i64 %54, i64* %10, align 8
  br label %88

55:                                               ; preds = %46
  %56 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %57 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %60 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %69 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, 3
  %74 = shl i64 %73, 35
  %75 = load i64, i64* %10, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %10, align 8
  br label %87

77:                                               ; preds = %55
  %78 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %79 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %82, 1
  %84 = shl i64 %83, 36
  %85 = load i64, i64* %10, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %77, %67
  br label %88

88:                                               ; preds = %87, %52
  %89 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %90 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i64, i64* %10, align 8
  %96 = or i64 %95, 1099511627776
  store i64 %96, i64* %10, align 8
  br label %130

97:                                               ; preds = %88
  %98 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %99 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %102 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 2
  br i1 %108, label %109, label %119

109:                                              ; preds = %97
  %110 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %111 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = and i64 %114, 1
  %116 = shl i64 %115, 34
  %117 = load i64, i64* %10, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %10, align 8
  br label %129

119:                                              ; preds = %97
  %120 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %121 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = and i64 %124, 3
  %126 = shl i64 %125, 34
  %127 = load i64, i64* %10, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %119, %109
  br label %130

130:                                              ; preds = %129, %94
  %131 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %132 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i64, i64* %10, align 8
  %138 = or i64 %137, 549755813888
  store i64 %138, i64* %10, align 8
  br label %149

139:                                              ; preds = %130
  %140 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %141 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = and i64 %144, 21
  %146 = shl i64 %145, 30
  %147 = load i64, i64* %10, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %10, align 8
  br label %149

149:                                              ; preds = %139, %136
  %150 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %151 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i64, i64* %10, align 8
  %157 = or i64 %156, 274877906944
  store i64 %157, i64* %10, align 8
  br label %168

158:                                              ; preds = %149
  %159 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %160 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 65535
  %164 = shl i32 %163, 14
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %10, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %10, align 8
  br label %168

168:                                              ; preds = %158, %155
  %169 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %170 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i64, i64* %10, align 8
  %176 = or i64 %175, 137438953472
  store i64 %176, i64* %10, align 8
  br label %186

177:                                              ; preds = %168
  %178 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %179 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 16383
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %10, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %10, align 8
  br label %186

186:                                              ; preds = %177, %174
  %187 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %188 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, 1
  %192 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %193 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, 3
  %197 = shl i32 %196, 1
  %198 = or i32 %191, %197
  %199 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %200 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, 6
  %204 = shl i32 %203, 2
  %205 = or i32 %198, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %9, align 8
  %207 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %208 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @MC_CFG_CONTROL, align 4
  %211 = call i32 @pci_write_config_dword(i32 %209, i32 %210, i32 2)
  %212 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %213 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %212, i32 0, i32 2
  %214 = load i32**, i32*** %213, align 8
  %215 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %216 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds i32*, i32** %214, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i64, i64* @MC_CHANNEL_ADDR_MATCH, align 8
  %224 = load i64, i64* %10, align 8
  %225 = call i32 @write_and_test(i32 %222, i64 %223, i64 %224)
  %226 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %227 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %230 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i32*, i32** %228, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = load i64, i64* @MC_CHANNEL_ADDR_MATCH, align 8
  %238 = add nsw i64 %237, 4
  %239 = load i64, i64* %10, align 8
  %240 = ashr i64 %239, 32
  %241 = call i32 @write_and_test(i32 %236, i64 %238, i64 %240)
  %242 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %243 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %242, i32 0, i32 2
  %244 = load i32**, i32*** %243, align 8
  %245 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %246 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i32*, i32** %244, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = load i64, i64* @MC_CHANNEL_ERROR_MASK, align 8
  %254 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %255 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 9
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @write_and_test(i32 %252, i64 %253, i64 %257)
  %259 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %260 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %259, i32 0, i32 2
  %261 = load i32**, i32*** %260, align 8
  %262 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %263 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i32*, i32** %261, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = load i64, i64* @MC_CHANNEL_ERROR_INJECT, align 8
  %271 = load i64, i64* %9, align 8
  %272 = call i32 @write_and_test(i32 %269, i64 %270, i64 %271)
  %273 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %274 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @MC_CFG_CONTROL, align 4
  %277 = call i32 @pci_write_config_dword(i32 %275, i32 %276, i32 8)
  %278 = load i64, i64* %10, align 8
  %279 = load %struct.i7core_pvt*, %struct.i7core_pvt** %8, align 8
  %280 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %9, align 8
  %284 = call i32 @debugf0(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %278, i64 %282, i64 %283)
  %285 = load i64, i64* %7, align 8
  store i64 %285, i64* %4, align 8
  br label %286

286:                                              ; preds = %186, %42, %34, %28
  %287 = load i64, i64* %4, align 8
  ret i64 %287
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @disable_inject(%struct.mem_ctl_info*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @write_and_test(i32, i64, i64) #1

declare dso_local i32 @debugf0(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
