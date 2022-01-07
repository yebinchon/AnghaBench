; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_split_ll_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_dma_split_ll_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx4008_dma_ll = type { i32, i64, %struct.pnx4008_dma_ll*, i64, i64 }
%struct.pnx4008_dma_ch_ctrl = type { i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnx4008_dma_split_ll_entry(%struct.pnx4008_dma_ll* %0, %struct.pnx4008_dma_ch_ctrl* %1) #0 {
  %3 = alloca %struct.pnx4008_dma_ll*, align 8
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
  store %struct.pnx4008_dma_ll* %0, %struct.pnx4008_dma_ll** %3, align 8
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
  br label %280

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
  br label %280

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
  br i1 %50, label %51, label %280

51:                                               ; preds = %48
  store %struct.pnx4008_dma_ll* null, %struct.pnx4008_dma_ll** %11, align 8
  %52 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %53 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -2048
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %58 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %62 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %61, i32 0, i32 2
  %63 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %62, align 8
  %64 = icmp ne %struct.pnx4008_dma_ll* %63, null
  br i1 %64, label %156, label %65

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %140, %65
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %155

69:                                               ; preds = %66
  %70 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %71 = icmp ne %struct.pnx4008_dma_ll* %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %74 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %73, i32 0, i32 1
  %75 = call i8* @pnx4008_alloc_ll_entry(i64* %74)
  %76 = bitcast i8* %75 to %struct.pnx4008_dma_ll*
  %77 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %78 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %77, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %76, %struct.pnx4008_dma_ll** %78, align 8
  %79 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %80 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %79, i32 0, i32 2
  %81 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %80, align 8
  store %struct.pnx4008_dma_ll* %81, %struct.pnx4008_dma_ll** %11, align 8
  br label %92

82:                                               ; preds = %69
  %83 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %84 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %83, i32 0, i32 1
  %85 = call i8* @pnx4008_alloc_ll_entry(i64* %84)
  %86 = bitcast i8* %85 to %struct.pnx4008_dma_ll*
  %87 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %88 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %87, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %86, %struct.pnx4008_dma_ll** %88, align 8
  %89 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %90 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %89, i32 0, i32 2
  %91 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %90, align 8
  store %struct.pnx4008_dma_ll* %91, %struct.pnx4008_dma_ll** %11, align 8
  br label %92

92:                                               ; preds = %82, %72
  %93 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %94 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %99 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %100, %106
  %108 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %109 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %108, i32 0, i32 4
  store i64 %107, i64* %109, align 8
  br label %116

110:                                              ; preds = %92
  %111 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %112 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %115 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %114, i32 0, i32 4
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %97
  %117 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %118 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %123 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %5, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* %10, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %124, %130
  %132 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %133 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  br label %140

134:                                              ; preds = %116
  %135 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %136 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %139 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %134, %121
  %141 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %142 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, 2147483647
  %145 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %146 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %148 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  %149 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %150 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %149, i32 0, i32 2
  store %struct.pnx4008_dma_ll* null, %struct.pnx4008_dma_ll** %150, align 8
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %66

155:                                              ; preds = %66
  br label %259

156:                                              ; preds = %51
  %157 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %158 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %157, i32 0, i32 2
  %159 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %158, align 8
  store %struct.pnx4008_dma_ll* %159, %struct.pnx4008_dma_ll** %12, align 8
  %160 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %161 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %13, align 8
  br label %163

163:                                              ; preds = %237, %156
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %252

166:                                              ; preds = %163
  %167 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %168 = icmp ne %struct.pnx4008_dma_ll* %167, null
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %171 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %170, i32 0, i32 1
  %172 = call i8* @pnx4008_alloc_ll_entry(i64* %171)
  %173 = bitcast i8* %172 to %struct.pnx4008_dma_ll*
  %174 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %175 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %174, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %173, %struct.pnx4008_dma_ll** %175, align 8
  %176 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %177 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %176, i32 0, i32 2
  %178 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %177, align 8
  store %struct.pnx4008_dma_ll* %178, %struct.pnx4008_dma_ll** %11, align 8
  br label %189

179:                                              ; preds = %166
  %180 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %181 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %180, i32 0, i32 1
  %182 = call i8* @pnx4008_alloc_ll_entry(i64* %181)
  %183 = bitcast i8* %182 to %struct.pnx4008_dma_ll*
  %184 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %185 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %184, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %183, %struct.pnx4008_dma_ll** %185, align 8
  %186 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %187 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %186, i32 0, i32 2
  %188 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %187, align 8
  store %struct.pnx4008_dma_ll* %188, %struct.pnx4008_dma_ll** %11, align 8
  br label %189

189:                                              ; preds = %179, %169
  %190 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %191 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %196 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %5, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* %10, align 4
  %202 = mul nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %197, %203
  %205 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %206 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %205, i32 0, i32 4
  store i64 %204, i64* %206, align 8
  br label %213

207:                                              ; preds = %189
  %208 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %209 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %212 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %211, i32 0, i32 4
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %207, %194
  %214 = load %struct.pnx4008_dma_ch_ctrl*, %struct.pnx4008_dma_ch_ctrl** %4, align 8
  %215 = getelementptr inbounds %struct.pnx4008_dma_ch_ctrl, %struct.pnx4008_dma_ch_ctrl* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %213
  %219 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %220 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %5, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load i32, i32* %10, align 4
  %226 = mul nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %221, %227
  %229 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %230 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  br label %237

231:                                              ; preds = %213
  %232 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %233 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %236 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %231, %218
  %238 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %239 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, 2147483647
  %242 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %243 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %245 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %244, i32 0, i32 1
  store i64 0, i64* %245, align 8
  %246 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %247 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %246, i32 0, i32 2
  store %struct.pnx4008_dma_ll* null, %struct.pnx4008_dma_ll** %247, align 8
  %248 = load i32, i32* %6, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %163

252:                                              ; preds = %163
  %253 = load i64, i64* %13, align 8
  %254 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %255 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  %256 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %12, align 8
  %257 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %258 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %257, i32 0, i32 2
  store %struct.pnx4008_dma_ll* %256, %struct.pnx4008_dma_ll** %258, align 8
  br label %259

259:                                              ; preds = %252, %155
  %260 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %261 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = and i32 %262, -2048
  %264 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %265 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* %10, align 4
  %269 = sub nsw i32 %268, 1
  %270 = mul nsw i32 %267, %269
  %271 = sub nsw i32 %266, %270
  %272 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %11, align 8
  %273 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load %struct.pnx4008_dma_ll*, %struct.pnx4008_dma_ll** %3, align 8
  %277 = getelementptr inbounds %struct.pnx4008_dma_ll, %struct.pnx4008_dma_ll* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, 2147483647
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %24, %32, %259, %48
  ret void
}

declare dso_local i8* @pnx4008_alloc_ll_entry(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
