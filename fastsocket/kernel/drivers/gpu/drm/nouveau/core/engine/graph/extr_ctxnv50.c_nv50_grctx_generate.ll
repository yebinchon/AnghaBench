; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_grctx_generate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_grctx_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { i32, i32 }

@STATE = common dso_local global i32 0, align 4
@RUNNING = common dso_local global i32 0, align 4
@XFER_SWITCH = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@AUTO_SAVE = common dso_local global i32 0, align 4
@PENDING = common dso_local global i32 0, align 4
@cp_setup_save = common dso_local global i32 0, align 4
@USER_SAVE = common dso_local global i32 0, align 4
@cp_check_load = common dso_local global i32 0, align 4
@AUTO_LOAD = common dso_local global i32 0, align 4
@cp_setup_auto_load = common dso_local global i32 0, align 4
@USER_LOAD = common dso_local global i32 0, align 4
@cp_setup_load = common dso_local global i32 0, align 4
@ALWAYS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cp_prepare_exit = common dso_local global i32 0, align 4
@CP_DISABLE1 = common dso_local global i32 0, align 4
@CP_DISABLE2 = common dso_local global i32 0, align 4
@CP_ENABLE = common dso_local global i32 0, align 4
@CP_NEXT_TO_SWAP = common dso_local global i32 0, align 4
@UNK01 = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@CP_NEWCTX = common dso_local global i32 0, align 4
@NEWCTX = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@UNK1D = common dso_local global i32 0, align 4
@CLEAR = common dso_local global i32 0, align 4
@SWAP_DIRECTION = common dso_local global i32 0, align 4
@LOAD = common dso_local global i32 0, align 4
@UNK0B = common dso_local global i32 0, align 4
@cp_swap_state = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@SAVE = common dso_local global i32 0, align 4
@UNK03 = common dso_local global i32 0, align 4
@UNK20 = common dso_local global i32 0, align 4
@CP_SET_XFER_POINTER = common dso_local global i32 0, align 4
@CP_SEEK_1 = common dso_local global i32 0, align 4
@CP_XFER_1 = common dso_local global i32 0, align 4
@XFER = common dso_local global i32 0, align 4
@cp_exit = common dso_local global i32 0, align 4
@CP_NEXT_TO_CURRENT = common dso_local global i32 0, align 4
@NOT_PENDING = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i32 0, align 4
@STOPPED = common dso_local global i32 0, align 4
@CP_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_grctx*)* @nv50_grctx_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_grctx_generate(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %3 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %4 = load i32, i32* @STATE, align 4
  %5 = load i32, i32* @RUNNING, align 4
  %6 = call i32 @cp_set(%struct.nouveau_grctx* %3, i32 %4, i32 %5)
  %7 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %8 = load i32, i32* @XFER_SWITCH, align 4
  %9 = load i32, i32* @ENABLE, align 4
  %10 = call i32 @cp_set(%struct.nouveau_grctx* %7, i32 %8, i32 %9)
  %11 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %12 = load i32, i32* @AUTO_SAVE, align 4
  %13 = load i32, i32* @PENDING, align 4
  %14 = load i32, i32* @cp_setup_save, align 4
  %15 = call i32 @cp_bra(%struct.nouveau_grctx* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %17 = load i32, i32* @USER_SAVE, align 4
  %18 = load i32, i32* @PENDING, align 4
  %19 = load i32, i32* @cp_setup_save, align 4
  %20 = call i32 @cp_bra(%struct.nouveau_grctx* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %22 = load i32, i32* @cp_check_load, align 4
  %23 = call i32 @cp_name(%struct.nouveau_grctx* %21, i32 %22)
  %24 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %25 = load i32, i32* @AUTO_LOAD, align 4
  %26 = load i32, i32* @PENDING, align 4
  %27 = load i32, i32* @cp_setup_auto_load, align 4
  %28 = call i32 @cp_bra(%struct.nouveau_grctx* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %30 = load i32, i32* @USER_LOAD, align 4
  %31 = load i32, i32* @PENDING, align 4
  %32 = load i32, i32* @cp_setup_load, align 4
  %33 = call i32 @cp_bra(%struct.nouveau_grctx* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %35 = load i32, i32* @ALWAYS, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i32, i32* @cp_prepare_exit, align 4
  %38 = call i32 @cp_bra(%struct.nouveau_grctx* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %40 = load i32, i32* @cp_setup_auto_load, align 4
  %41 = call i32 @cp_name(%struct.nouveau_grctx* %39, i32 %40)
  %42 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %43 = load i32, i32* @CP_DISABLE1, align 4
  %44 = call i32 @cp_out(%struct.nouveau_grctx* %42, i32 %43)
  %45 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %46 = load i32, i32* @CP_DISABLE2, align 4
  %47 = call i32 @cp_out(%struct.nouveau_grctx* %45, i32 %46)
  %48 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %49 = load i32, i32* @CP_ENABLE, align 4
  %50 = call i32 @cp_out(%struct.nouveau_grctx* %48, i32 %49)
  %51 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %52 = load i32, i32* @CP_NEXT_TO_SWAP, align 4
  %53 = call i32 @cp_out(%struct.nouveau_grctx* %51, i32 %52)
  %54 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %55 = load i32, i32* @UNK01, align 4
  %56 = load i32, i32* @SET, align 4
  %57 = call i32 @cp_set(%struct.nouveau_grctx* %54, i32 %55, i32 %56)
  %58 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %59 = load i32, i32* @cp_setup_load, align 4
  %60 = call i32 @cp_name(%struct.nouveau_grctx* %58, i32 %59)
  %61 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %62 = load i32, i32* @CP_NEWCTX, align 4
  %63 = call i32 @cp_out(%struct.nouveau_grctx* %61, i32 %62)
  %64 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %65 = load i32, i32* @NEWCTX, align 4
  %66 = load i32, i32* @BUSY, align 4
  %67 = call i32 @cp_wait(%struct.nouveau_grctx* %64, i32 %65, i32 %66)
  %68 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %69 = load i32, i32* @UNK1D, align 4
  %70 = load i32, i32* @CLEAR, align 4
  %71 = call i32 @cp_set(%struct.nouveau_grctx* %68, i32 %69, i32 %70)
  %72 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %73 = load i32, i32* @SWAP_DIRECTION, align 4
  %74 = load i32, i32* @LOAD, align 4
  %75 = call i32 @cp_set(%struct.nouveau_grctx* %72, i32 %73, i32 %74)
  %76 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %77 = load i32, i32* @UNK0B, align 4
  %78 = load i32, i32* @SET, align 4
  %79 = load i32, i32* @cp_prepare_exit, align 4
  %80 = call i32 @cp_bra(%struct.nouveau_grctx* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %82 = load i32, i32* @ALWAYS, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32, i32* @cp_swap_state, align 4
  %85 = call i32 @cp_bra(%struct.nouveau_grctx* %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %87 = load i32, i32* @cp_setup_save, align 4
  %88 = call i32 @cp_name(%struct.nouveau_grctx* %86, i32 %87)
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = load i32, i32* @UNK1D, align 4
  %91 = load i32, i32* @SET, align 4
  %92 = call i32 @cp_set(%struct.nouveau_grctx* %89, i32 %90, i32 %91)
  %93 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %94 = load i32, i32* @STATUS, align 4
  %95 = load i32, i32* @BUSY, align 4
  %96 = call i32 @cp_wait(%struct.nouveau_grctx* %93, i32 %94, i32 %95)
  %97 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %98 = load i32, i32* @INTR, align 4
  %99 = load i32, i32* @PENDING, align 4
  %100 = call i32 @cp_wait(%struct.nouveau_grctx* %97, i32 %98, i32 %99)
  %101 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %102 = load i32, i32* @STATUS, align 4
  %103 = load i32, i32* @BUSY, align 4
  %104 = load i32, i32* @cp_setup_save, align 4
  %105 = call i32 @cp_bra(%struct.nouveau_grctx* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %107 = load i32, i32* @UNK01, align 4
  %108 = load i32, i32* @SET, align 4
  %109 = call i32 @cp_set(%struct.nouveau_grctx* %106, i32 %107, i32 %108)
  %110 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %111 = load i32, i32* @SWAP_DIRECTION, align 4
  %112 = load i32, i32* @SAVE, align 4
  %113 = call i32 @cp_set(%struct.nouveau_grctx* %110, i32 %111, i32 %112)
  %114 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %115 = load i32, i32* @cp_swap_state, align 4
  %116 = call i32 @cp_name(%struct.nouveau_grctx* %114, i32 %115)
  %117 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %118 = load i32, i32* @UNK03, align 4
  %119 = load i32, i32* @SET, align 4
  %120 = call i32 @cp_set(%struct.nouveau_grctx* %117, i32 %118, i32 %119)
  %121 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %122 = call i32 @cp_pos(%struct.nouveau_grctx* %121, i32 1)
  %123 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %124 = call i32 @cp_ctx(%struct.nouveau_grctx* %123, i32 4196392, i32 1)
  %125 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %126 = call i32 @cp_pos(%struct.nouveau_grctx* %125, i32 64)
  %127 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %128 = call i32 @nv50_graph_construct_mmio(%struct.nouveau_grctx* %127)
  %129 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %130 = call i32 @nv50_graph_construct_xfer1(%struct.nouveau_grctx* %129)
  %131 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %132 = call i32 @nv50_graph_construct_xfer2(%struct.nouveau_grctx* %131)
  %133 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %134 = load i32, i32* @SWAP_DIRECTION, align 4
  %135 = load i32, i32* @SAVE, align 4
  %136 = load i32, i32* @cp_check_load, align 4
  %137 = call i32 @cp_bra(%struct.nouveau_grctx* %133, i32 %134, i32 %135, i32 %136)
  %138 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %139 = load i32, i32* @UNK20, align 4
  %140 = load i32, i32* @SET, align 4
  %141 = call i32 @cp_set(%struct.nouveau_grctx* %138, i32 %139, i32 %140)
  %142 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %143 = load i32, i32* @SWAP_DIRECTION, align 4
  %144 = load i32, i32* @SAVE, align 4
  %145 = call i32 @cp_set(%struct.nouveau_grctx* %142, i32 %143, i32 %144)
  %146 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %147 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %148 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @cp_lsr(%struct.nouveau_grctx* %146, i32 %149)
  %151 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %152 = load i32, i32* @CP_SET_XFER_POINTER, align 4
  %153 = call i32 @cp_out(%struct.nouveau_grctx* %151, i32 %152)
  %154 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %155 = call i32 @cp_lsr(%struct.nouveau_grctx* %154, i32 4)
  %156 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %157 = load i32, i32* @CP_SEEK_1, align 4
  %158 = call i32 @cp_out(%struct.nouveau_grctx* %156, i32 %157)
  %159 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %160 = load i32, i32* @CP_XFER_1, align 4
  %161 = call i32 @cp_out(%struct.nouveau_grctx* %159, i32 %160)
  %162 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %163 = load i32, i32* @XFER, align 4
  %164 = load i32, i32* @BUSY, align 4
  %165 = call i32 @cp_wait(%struct.nouveau_grctx* %162, i32 %163, i32 %164)
  %166 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %167 = load i32, i32* @cp_prepare_exit, align 4
  %168 = call i32 @cp_name(%struct.nouveau_grctx* %166, i32 %167)
  %169 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %170 = load i32, i32* @UNK01, align 4
  %171 = load i32, i32* @CLEAR, align 4
  %172 = call i32 @cp_set(%struct.nouveau_grctx* %169, i32 %170, i32 %171)
  %173 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %174 = load i32, i32* @UNK03, align 4
  %175 = load i32, i32* @CLEAR, align 4
  %176 = call i32 @cp_set(%struct.nouveau_grctx* %173, i32 %174, i32 %175)
  %177 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %178 = load i32, i32* @UNK1D, align 4
  %179 = load i32, i32* @CLEAR, align 4
  %180 = call i32 @cp_set(%struct.nouveau_grctx* %177, i32 %178, i32 %179)
  %181 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %182 = load i32, i32* @USER_SAVE, align 4
  %183 = load i32, i32* @PENDING, align 4
  %184 = load i32, i32* @cp_exit, align 4
  %185 = call i32 @cp_bra(%struct.nouveau_grctx* %181, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %187 = load i32, i32* @CP_NEXT_TO_CURRENT, align 4
  %188 = call i32 @cp_out(%struct.nouveau_grctx* %186, i32 %187)
  %189 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %190 = load i32, i32* @cp_exit, align 4
  %191 = call i32 @cp_name(%struct.nouveau_grctx* %189, i32 %190)
  %192 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %193 = load i32, i32* @USER_SAVE, align 4
  %194 = load i32, i32* @NOT_PENDING, align 4
  %195 = call i32 @cp_set(%struct.nouveau_grctx* %192, i32 %193, i32 %194)
  %196 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %197 = load i32, i32* @USER_LOAD, align 4
  %198 = load i32, i32* @NOT_PENDING, align 4
  %199 = call i32 @cp_set(%struct.nouveau_grctx* %196, i32 %197, i32 %198)
  %200 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %201 = load i32, i32* @XFER_SWITCH, align 4
  %202 = load i32, i32* @DISABLE, align 4
  %203 = call i32 @cp_set(%struct.nouveau_grctx* %200, i32 %201, i32 %202)
  %204 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %205 = load i32, i32* @STATE, align 4
  %206 = load i32, i32* @STOPPED, align 4
  %207 = call i32 @cp_set(%struct.nouveau_grctx* %204, i32 %205, i32 %206)
  %208 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %209 = load i32, i32* @CP_END, align 4
  %210 = call i32 @cp_out(%struct.nouveau_grctx* %208, i32 %209)
  %211 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %212 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1024
  store i32 %214, i32* %212, align 4
  ret i32 0
}

declare dso_local i32 @cp_set(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i32 @cp_bra(%struct.nouveau_grctx*, i32, i32, i32) #1

declare dso_local i32 @cp_name(%struct.nouveau_grctx*, i32) #1

declare dso_local i32 @cp_out(%struct.nouveau_grctx*, i32) #1

declare dso_local i32 @cp_wait(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i32 @cp_pos(%struct.nouveau_grctx*, i32) #1

declare dso_local i32 @cp_ctx(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i32 @nv50_graph_construct_mmio(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_xfer1(%struct.nouveau_grctx*) #1

declare dso_local i32 @nv50_graph_construct_xfer2(%struct.nouveau_grctx*) #1

declare dso_local i32 @cp_lsr(%struct.nouveau_grctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
