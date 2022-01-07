; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_split_head_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_split_head_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx4008_dma_config = type { i32, i32, i64, i64, i64, %struct.pnx4008_dma_ll* }
%struct.pnx4008_dma_ll = type { i64, i32, %struct.pnx4008_dma_ll*, i64, i64 }
%struct.pnx4008_dma_ch_ctrl = type { i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnx4008_dma_split_head_entry(%struct.pnx4008_dma_config* %0, %struct.pnx4008_dma_ch_ctrl* %1) #0 {
  %3 = alloca %struct.pnx4008_dma_config*, align 8
  %4 = alloca %struct.pnx4008_dma_ch_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pnx4008_dma_ll*, align 8
  %12 = alloca %struct.pnx4008_dma_ll*, align 8
  %13 = alloca i64, align 8
  store %struct.pnx4008_dma_config* %0, %struct.pnx4008_dma_config** %3, align 8
  store %struct.pnx4008_dma_ch_ctrl* %1, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %14 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %18 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %24 [
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
  ]

21:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %25

22:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  br label %25

23:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %25

24:                                               ; preds = %2
  br label %282

25:                                               ; preds = %23, %22, %21
  %26 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %32 [
    i32 130, label %29
    i32 129, label %30
    i32 128, label %31
  ]

29:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %33

30:                                               ; preds = %25
  store i32 2, i32* %9, align 4
  br label %33

31:                                               ; preds = %25
  store i32 4, i32* %9, align 4
  br label %33

32:                                               ; preds = %25
  br label %282

33:                                               ; preds = %31, %30, %29
  br label %34

34:                                               ; preds = %37, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 2047
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = sdiv i32 %44, %46
  store i32 %47, i32* %5, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %282

51:                                               ; preds = %48
  store %struct.pnx4008_dma_ll* null, %struct.pnx4008_dma_ll** %11, align 8
  %52 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %53 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -2048
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %58 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %62 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %158, label %65

65:                                               ; preds = %51
  %66 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %67 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %142, %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %157

71:                                               ; preds = %68
  %72 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %73 = icmp ne %struct.pnx4008_dma_ll* %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %76 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %75, i32 0, i32 2
  %77 = call i8* @pnx4008_alloc_ll_entry(i64* %76)
  %78 = bitcast i8* %77 to %struct.pnx4008_dma_ll*
  %79 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %80 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %79, i32 0, i32 5
  store %struct.pnx4008_dma_ll* %78, %struct.pnx4008_dma_ll** %80, align 8
  %81 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %82 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %81, i32 0, i32 5
  %83 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %82, align 8
  store %struct.pnx4008_dma_ll* %83, %struct.pnx4008_dma_ll** %11, align 8
  br label %94

84:                                               ; preds = %71
  %85 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %86 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %85, i32 0, i32 0
  %87 = call i8* @pnx4008_alloc_ll_entry(i64* %86)
  %88 = bitcast i8* %87 to %struct.pnx4008_dma_ll*
  %89 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %90 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %89, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %88, %struct.pnx4008_dma_ll** %90, align 8
  %91 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %92 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %91, i32 0, i32 2
  %93 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %92, align 8
  store %struct.pnx4008_dma_ll* %93, %struct.pnx4008_dma_ll** %11, align 8
  br label %94

94:                                               ; preds = %84, %74
  %95 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %96 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %101 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %5, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %102, %108
  %110 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %111 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  br label %118

112:                                              ; preds = %94
  %113 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %114 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %117 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %99
  %119 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %120 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %118
  %124 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %125 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %5, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %10, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %126, %132
  %134 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %135 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  br label %142

136:                                              ; preds = %118
  %137 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %138 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %141 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %123
  %143 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %144 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 2147483647
  %147 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %148 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %150 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %152 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %151, i32 0, i32 2
  store %struct.pnx4008_dma_ll* null, %struct.pnx4008_dma_ll** %152, align 8
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %68

157:                                              ; preds = %68
  br label %261

158:                                              ; preds = %51
  %159 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %160 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %159, i32 0, i32 5
  %161 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %160, align 8
  store %struct.pnx4008_dma_ll* %161, %struct.pnx4008_dma_ll** %12, align 8
  %162 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %163 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %13, align 8
  br label %165

165:                                              ; preds = %239, %158
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %254

168:                                              ; preds = %165
  %169 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %170 = icmp ne %struct.pnx4008_dma_ll* %169, null
  br i1 %170, label %181, label %171

171:                                              ; preds = %168
  %172 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %173 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %172, i32 0, i32 2
  %174 = call i8* @pnx4008_alloc_ll_entry(i64* %173)
  %175 = bitcast i8* %174 to %struct.pnx4008_dma_ll*
  %176 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %177 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %176, i32 0, i32 5
  store %struct.pnx4008_dma_ll* %175, %struct.pnx4008_dma_ll** %177, align 8
  %178 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %179 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %178, i32 0, i32 5
  %180 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %179, align 8
  store %struct.pnx4008_dma_ll* %180, %struct.pnx4008_dma_ll** %11, align 8
  br label %191

181:                                              ; preds = %168
  %182 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %183 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %182, i32 0, i32 0
  %184 = call i8* @pnx4008_alloc_ll_entry(i64* %183)
  %185 = bitcast i8* %184 to %struct.pnx4008_dma_ll*
  %186 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %187 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %186, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %185, %struct.pnx4008_dma_ll** %187, align 8
  %188 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %189 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %188, i32 0, i32 2
  %190 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %189, align 8
  store %struct.pnx4008_dma_ll* %190, %struct.pnx4008_dma_ll** %11, align 8
  br label %191

191:                                              ; preds = %181, %171
  %192 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %193 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %198 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %5, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* %10, align 4
  %204 = mul nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %199, %205
  %207 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %208 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %207, i32 0, i32 4
  store i64 %206, i64* %208, align 8
  br label %215

209:                                              ; preds = %191
  %210 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %211 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %214 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %213, i32 0, i32 4
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %209, %196
  %216 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %217 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %215
  %221 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %222 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %5, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* %10, align 4
  %228 = mul nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %223, %229
  %231 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %232 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %231, i32 0, i32 3
  store i64 %230, i64* %232, align 8
  br label %239

233:                                              ; preds = %215
  %234 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %235 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %238 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %237, i32 0, i32 3
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %233, %220
  %240 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %241 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 2147483647
  %244 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %245 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 8
  %246 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %247 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %246, i32 0, i32 0
  store i64 0, i64* %247, align 8
  %248 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %249 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %248, i32 0, i32 2
  store %struct.pnx4008_dma_ll* null, %struct.pnx4008_dma_ll** %249, align 8
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  br label %165

254:                                              ; preds = %165
  %255 = load i64, i64* %13, align 8
  %256 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %257 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %256, i32 0, i32 0
  store i64 %255, i64* %257, align 8
  %258 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %12, align 8
  %259 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %260 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %259, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %258, %struct.pnx4008_dma_ll** %260, align 8
  br label %261

261:                                              ; preds = %254, %157
  %262 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %263 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, -2048
  %266 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %267 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %5, align 4
  %270 = load i32, i32* %10, align 4
  %271 = sub nsw i32 %270, 1
  %272 = mul nsw i32 %269, %271
  %273 = sub nsw i32 %268, %272
  %274 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %275 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 8
  %278 = load %struct.pnx4008_dma_config*, %struct.pnx4008_dma_config** %3, align 8
  %279 = getelementptr inbounds %struct.pnx4008_dma_config, %struct.pnx4008_dma_config* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, 2147483647
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %24, %32, %261, %48
  ret void
}

declare dso_local i8* @pnx4008_alloc_ll_entry(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
