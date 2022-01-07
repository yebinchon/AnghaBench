; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_config_ctlr_windows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_config_ctlr_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MV64x60_ENET2MEM_BAR_ENABLE = common dso_local global i32 0, align 4
@MV64x60_MPSC2MEM_BAR_ENABLE = common dso_local global i32 0, align 4
@MV64x60_CPU_BAR_ENABLE = common dso_local global i32 0, align 4
@MV64x60_CPU2MEM_WINDOWS = common dso_local global i32 0, align 4
@mv64x60_cpu2mem = common dso_local global %struct.TYPE_8__* null, align 8
@mv64x60_dram_selects = common dso_local global i32* null, align 8
@mv64x60_enet2mem = common dso_local global %struct.TYPE_7__* null, align 8
@mv64x60_mpsc2mem = common dso_local global %struct.TYPE_5__* null, align 8
@mv64x60_idma2mem = common dso_local global %struct.TYPE_6__* null, align 8
@MV64x60_ENET2MEM_ACC_PROT_0 = common dso_local global i32 0, align 4
@MV64x60_ENET2MEM_ACC_PROT_1 = common dso_local global i32 0, align 4
@MV64x60_ENET2MEM_ACC_PROT_2 = common dso_local global i32 0, align 4
@MV64x60_MPSC2MEM_ACC_PROT_0 = common dso_local global i32 0, align 4
@MV64x60_MPSC2MEM_ACC_PROT_1 = common dso_local global i32 0, align 4
@MV64x60_IDMA2MEM_ACC_PROT_0 = common dso_local global i32 0, align 4
@MV64x60_IDMA2MEM_ACC_PROT_1 = common dso_local global i32 0, align 4
@MV64x60_IDMA2MEM_ACC_PROT_2 = common dso_local global i32 0, align 4
@MV64x60_IDMA2MEM_ACC_PROT_3 = common dso_local global i32 0, align 4
@MV64x60_MPSC2REGS_BASE = common dso_local global i32 0, align 4
@MV64x60_IDMA2MEM_BAR_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv64x60_config_ctlr_windows(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* @MV64x60_ENET2MEM_BAR_ENABLE, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = bitcast i64* %16 to i32*
  %18 = call i32 @out_le32(i32* %17, i32 63)
  %19 = load i64*, i64** %4, align 8
  %20 = load i32, i32* @MV64x60_MPSC2MEM_BAR_ENABLE, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = bitcast i64* %22 to i32*
  %24 = call i32 @out_le32(i32* %23, i32 15)
  %25 = load i64*, i64** %4, align 8
  %26 = load i32, i32* @MV64x60_ENET2MEM_BAR_ENABLE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = bitcast i64* %28 to i32*
  %30 = call i32 @out_le32(i32* %29, i32 255)
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 8192, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* @MV64x60_CPU_BAR_ENABLE, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = bitcast i64* %38 to i32*
  %40 = call i32 @in_le32(i32* %39)
  %41 = and i32 %40, 15
  store i32 %41, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %165, %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MV64x60_CPU2MEM_WINDOWS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %168

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %165

53:                                               ; preds = %46
  %54 = load i64*, i64** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mv64x60_cpu2mem, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %54, i64 %61
  %63 = bitcast i64* %62 to i32*
  %64 = call i32 @in_le32(i32* %63)
  %65 = shl i32 %64, 16
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** @mv64x60_dram_selects, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %66, %72
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i64*, i64** %4, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mv64x60_cpu2mem, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %76, i64 %83
  %85 = bitcast i64* %84 to i32*
  %86 = call i32 @in_le32(i32* %85)
  %87 = shl i32 %86, 16
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 1
  %90 = shl i32 3, %89
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load i64*, i64** %4, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mv64x60_enet2mem, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %93, i64 %100
  %102 = bitcast i64* %101 to i32*
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @out_le32(i32* %102, i32 %103)
  %105 = load i64*, i64** %4, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mv64x60_enet2mem, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %105, i64 %112
  %114 = bitcast i64* %113 to i32*
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @out_le32(i32* %114, i32 %115)
  %117 = load i64*, i64** %4, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mv64x60_mpsc2mem, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %117, i64 %124
  %126 = bitcast i64* %125 to i32*
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @out_le32(i32* %126, i32 %127)
  %129 = load i64*, i64** %4, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mv64x60_mpsc2mem, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %129, i64 %136
  %138 = bitcast i64* %137 to i32*
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @out_le32(i32* %138, i32 %139)
  %141 = load i64*, i64** %4, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mv64x60_idma2mem, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %141, i64 %148
  %150 = bitcast i64* %149 to i32*
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @out_le32(i32* %150, i32 %151)
  %153 = load i64*, i64** %4, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mv64x60_idma2mem, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %153, i64 %160
  %162 = bitcast i64* %161 to i32*
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @out_le32(i32* %162, i32 %163)
  br label %165

165:                                              ; preds = %53, %52
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %42

168:                                              ; preds = %42
  %169 = load i64*, i64** %4, align 8
  %170 = load i32, i32* @MV64x60_ENET2MEM_ACC_PROT_0, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = bitcast i64* %172 to i32*
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @out_le32(i32* %173, i32 %174)
  %176 = load i64*, i64** %4, align 8
  %177 = load i32, i32* @MV64x60_ENET2MEM_ACC_PROT_1, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = bitcast i64* %179 to i32*
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @out_le32(i32* %180, i32 %181)
  %183 = load i64*, i64** %4, align 8
  %184 = load i32, i32* @MV64x60_ENET2MEM_ACC_PROT_2, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = bitcast i64* %186 to i32*
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @out_le32(i32* %187, i32 %188)
  %190 = load i64*, i64** %4, align 8
  %191 = load i32, i32* @MV64x60_MPSC2MEM_ACC_PROT_0, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = bitcast i64* %193 to i32*
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @out_le32(i32* %194, i32 %195)
  %197 = load i64*, i64** %4, align 8
  %198 = load i32, i32* @MV64x60_MPSC2MEM_ACC_PROT_1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = bitcast i64* %200 to i32*
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @out_le32(i32* %201, i32 %202)
  %204 = load i64*, i64** %4, align 8
  %205 = load i32, i32* @MV64x60_IDMA2MEM_ACC_PROT_0, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = bitcast i64* %207 to i32*
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @out_le32(i32* %208, i32 %209)
  %211 = load i64*, i64** %4, align 8
  %212 = load i32, i32* @MV64x60_IDMA2MEM_ACC_PROT_1, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = bitcast i64* %214 to i32*
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @out_le32(i32* %215, i32 %216)
  %218 = load i64*, i64** %4, align 8
  %219 = load i32, i32* @MV64x60_IDMA2MEM_ACC_PROT_2, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = bitcast i64* %221 to i32*
  %223 = load i32, i32* %11, align 4
  %224 = call i32 @out_le32(i32* %222, i32 %223)
  %225 = load i64*, i64** %4, align 8
  %226 = load i32, i32* @MV64x60_IDMA2MEM_ACC_PROT_3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = bitcast i64* %228 to i32*
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @out_le32(i32* %229, i32 %230)
  %232 = load i64*, i64** %4, align 8
  %233 = load i32, i32* @MV64x60_MPSC2REGS_BASE, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  %236 = bitcast i64* %235 to i32*
  %237 = load i64*, i64** %5, align 8
  %238 = ptrtoint i64* %237 to i32
  %239 = call i32 @out_le32(i32* %236, i32 %238)
  %240 = load i64*, i64** %4, align 8
  %241 = load i32, i32* @MV64x60_ENET2MEM_BAR_ENABLE, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = bitcast i64* %243 to i32*
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @out_le32(i32* %244, i32 %245)
  %247 = load i64*, i64** %4, align 8
  %248 = load i32, i32* @MV64x60_MPSC2MEM_BAR_ENABLE, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = bitcast i64* %250 to i32*
  %252 = load i32, i32* %10, align 4
  %253 = call i32 @out_le32(i32* %251, i32 %252)
  %254 = load i64*, i64** %4, align 8
  %255 = load i32, i32* @MV64x60_IDMA2MEM_BAR_ENABLE, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = bitcast i64* %257 to i32*
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @out_le32(i32* %258, i32 %259)
  ret void
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
