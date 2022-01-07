; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll }
%struct.radeon_pll = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@COMBIOS_PLL_INFO_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_combios_get_clock_info(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.radeon_pll*, align 8
  %7 = alloca %struct.radeon_pll*, align 8
  %8 = alloca %struct.radeon_pll*, align 8
  %9 = alloca %struct.radeon_pll*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %4, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store %struct.radeon_pll* %18, %struct.radeon_pll** %6, align 8
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store %struct.radeon_pll* %21, %struct.radeon_pll** %7, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store %struct.radeon_pll* %24, %struct.radeon_pll** %8, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store %struct.radeon_pll* %27, %struct.radeon_pll** %9, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = load i32, i32* @COMBIOS_PLL_INFO_TABLE, align 4
  %30 = call i8* @combios_get_table_offset(%struct.drm_device* %28, i32 %29)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %212

33:                                               ; preds = %1
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @RBIOS8(i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr i8, i8* %36, i64 14
  %38 = call i8* @RBIOS16(i8* %37)
  %39 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr i8, i8* %41, i64 16
  %43 = call i8* @RBIOS16(i8* %42)
  %44 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %45 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr i8, i8* %46, i64 18
  %48 = call i8* @RBIOS32(i8* %47)
  %49 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %50 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr i8, i8* %51, i64 22
  %53 = call i8* @RBIOS32(i8* %52)
  %54 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %65 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 9
  br i1 %67, label %68, label %81

68:                                               ; preds = %33
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr i8, i8* %69, i64 54
  %71 = call i8* @RBIOS32(i8* %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %74 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr i8, i8* %75, i64 58
  %77 = call i8* @RBIOS32(i8* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %86

81:                                               ; preds = %33
  %82 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %83 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %82, i32 0, i32 0
  store i32 40, i32* %83, align 8
  %84 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %85 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %84, i32 0, i32 1
  store i32 500, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %68
  %87 = load %struct.radeon_pll*, %struct.radeon_pll** %7, align 8
  %88 = load %struct.radeon_pll*, %struct.radeon_pll** %6, align 8
  %89 = bitcast %struct.radeon_pll* %87 to i8*
  %90 = bitcast %struct.radeon_pll* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 56, i1 false)
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr i8, i8* %91, i64 26
  %93 = call i8* @RBIOS16(i8* %92)
  %94 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %95 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr i8, i8* %96, i64 28
  %98 = call i8* @RBIOS16(i8* %97)
  %99 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %100 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr i8, i8* %101, i64 30
  %103 = call i8* @RBIOS32(i8* %102)
  %104 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %105 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr i8, i8* %106, i64 34
  %108 = call i8* @RBIOS32(i8* %107)
  %109 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %110 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 10
  br i1 %112, label %113, label %126

113:                                              ; preds = %86
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr i8, i8* %114, i64 72
  %116 = call i8* @RBIOS32(i8* %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %119 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr i8, i8* %120, i64 76
  %122 = call i8* @RBIOS32(i8* %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %125 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %131

126:                                              ; preds = %86
  %127 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %128 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %127, i32 0, i32 0
  store i32 40, i32* %128, align 8
  %129 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %130 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %129, i32 0, i32 1
  store i32 500, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %113
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr i8, i8* %132, i64 38
  %134 = call i8* @RBIOS16(i8* %133)
  %135 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %136 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr i8, i8* %137, i64 40
  %139 = call i8* @RBIOS16(i8* %138)
  %140 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %141 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %140, i32 0, i32 4
  store i8* %139, i8** %141, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr i8, i8* %142, i64 42
  %144 = call i8* @RBIOS32(i8* %143)
  %145 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %146 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr i8, i8* %147, i64 46
  %149 = call i8* @RBIOS32(i8* %148)
  %150 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %151 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %10, align 4
  %153 = icmp sgt i32 %152, 10
  br i1 %153, label %154, label %167

154:                                              ; preds = %131
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr i8, i8* %155, i64 90
  %157 = call i8* @RBIOS32(i8* %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %160 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr i8, i8* %161, i64 94
  %163 = call i8* @RBIOS32(i8* %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %166 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %172

167:                                              ; preds = %131
  %168 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %169 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %168, i32 0, i32 0
  store i32 40, i32* %169, align 8
  %170 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %171 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %170, i32 0, i32 1
  store i32 500, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %154
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr i8, i8* %173, i64 10
  %175 = call i8* @RBIOS16(i8* %174)
  store i8* %175, i8** %11, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr i8, i8* %176, i64 8
  %178 = call i8* @RBIOS16(i8* %177)
  store i8* %178, i8** %12, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  store i8* inttoptr (i64 20000 to i8*), i8** %11, align 8
  br label %182

182:                                              ; preds = %181, %172
  %183 = load i8*, i8** %12, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i8* inttoptr (i64 20000 to i8*), i8** %12, align 8
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i8*, i8** %11, align 8
  %188 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %189 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 2
  store i8* %187, i8** %190, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  store i8* %191, i8** %194, align 8
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr i8, i8* %195, i64 22
  %197 = call i8* @RBIOS32(i8* %196)
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %186
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr i8, i8* %200, i64 22
  %202 = call i8* @RBIOS32(i8* %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %205 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  br label %211

207:                                              ; preds = %186
  %208 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  store i32 35000, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %199
  store i32 1, i32* %2, align 4
  br label %213

212:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %212, %211
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i8* @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i8*) #1

declare dso_local i8* @RBIOS16(i8*) #1

declare dso_local i8* @RBIOS32(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
