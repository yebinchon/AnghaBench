; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_trap_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv50.c_nv50_graph_trap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_graph_priv = type { i32 }
%struct.nouveau_object = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"TRAP: no units reporting traps?\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TRAP_DISPATCH - no ustatus?\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"TRAP DISPATCH_FAULT\0A\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x%08x 400808 0x%08x 400848 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"no stuck command?\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"TRAP DISPATCH_QUERY\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x 40084c 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"TRAP_DISPATCH (unknown 0x%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"TRAP_M2MF\00", align 1
@nv50_graph_trap_m2mf = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"TRAP_M2MF %08x %08x %08x %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"TRAP_VFETCH\00", align 1
@nv50_graph_trap_vfetch = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"TRAP_VFETCH %08x %08x %08x %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"TRAP_STRMOUT\00", align 1
@nv50_graph_trap_strmout = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"TRAP_STRMOUT %08x %08x %08x %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"TRAP_CCACHE\00", align 1
@nv50_graph_trap_ccache = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [48 x i8] c"TRAP_CCACHE %08x %08x %08x %08x %08x %08x %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"TRAP_UNKC04 0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"TRAP_TEXTURE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"TRAP_MP\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"TRAP_TPDMA\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"TRAP: unknown 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_graph_priv*, i32, i32, i32, %struct.nouveau_object*)* @nv50_graph_trap_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_graph_trap_handler(%struct.nv50_graph_priv* %0, i32 %1, i32 %2, i32 %3, %struct.nouveau_object* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_graph_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.nv50_graph_priv* %0, %struct.nv50_graph_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nouveau_object* %4, %struct.nouveau_object** %11, align 8
  %28 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %29 = call i32 @nv_rd32(%struct.nv50_graph_priv* %28, i32 4194568)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %37 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %404

38:                                               ; preds = %32, %5
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %186

42:                                               ; preds = %38
  %43 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %44 = call i32 @nv_rd32(%struct.nv50_graph_priv* %43, i32 4196356)
  %45 = and i32 %44, 2147483647
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %53 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48, %42
  %55 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %56 = call i32 @nv_wr32(%struct.nv50_graph_priv* %55, i32 4195584, i32 0)
  %57 = load i32, i32* %13, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %117

60:                                               ; preds = %54
  %61 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %62 = call i32 @nv_rd32(%struct.nv50_graph_priv* %61, i32 4196360)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = and i32 %63, 458752
  %65 = ashr i32 %64, 16
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 8188
  store i32 %67, i32* %16, align 4
  %68 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %69 = call i32 @nv_rd32(%struct.nv50_graph_priv* %68, i32 4196364)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %71 = call i32 @nv_rd32(%struct.nv50_graph_priv* %70, i32 4196368)
  store i32 %71, i32* %18, align 4
  %72 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %73 = call i32 @nv_rd32(%struct.nv50_graph_priv* %72, i32 4196372)
  store i32 %73, i32* %19, align 4
  %74 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %75 = call i32 @nv_rd32(%struct.nv50_graph_priv* %74, i32 4196424)
  store i32 %75, i32* %20, align 4
  %76 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %77 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %60
  %81 = load i32, i32* %14, align 4
  %82 = and i32 %81, -2147483648
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %89 = call i32 @nouveau_client_name(%struct.nouveau_object* %88)
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %85, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %87, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  br label %105

98:                                               ; preds = %80, %60
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %103 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %84
  %106 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %107 = call i32 @nv_wr32(%struct.nv50_graph_priv* %106, i32 4196360, i32 0)
  %108 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %109 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %110 = call i32 @nv_rd32(%struct.nv50_graph_priv* %109, i32 4196584)
  %111 = and i32 %110, 3
  %112 = call i32 @nv_wr32(%struct.nv50_graph_priv* %108, i32 4196584, i32 %111)
  %113 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %114 = call i32 @nv_wr32(%struct.nv50_graph_priv* %113, i32 4196424, i32 0)
  %115 = load i32, i32* %13, align 4
  %116 = and i32 %115, -2
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %105, %54
  %118 = load i32, i32* %13, align 4
  %119 = and i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %117
  %122 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %123 = call i32 @nv_rd32(%struct.nv50_graph_priv* %122, i32 4196428)
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = and i32 %124, 458752
  %126 = ashr i32 %125, 16
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %21, align 4
  %128 = and i32 %127, 8188
  store i32 %128, i32* %23, align 4
  %129 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %130 = call i32 @nv_rd32(%struct.nv50_graph_priv* %129, i32 4196444)
  store i32 %130, i32* %24, align 4
  %131 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %132 = call i32 @nv_rd32(%struct.nv50_graph_priv* %131, i32 4196372)
  store i32 %132, i32* %25, align 4
  %133 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %134 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %121
  %138 = load i32, i32* %21, align 4
  %139 = and i32 %138, -2147483648
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.nouveau_object*, %struct.nouveau_object** %11, align 8
  %146 = call i32 @nouveau_client_name(%struct.nouveau_object* %145)
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %25, align 4
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %21, align 4
  %152 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %142, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %144, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  br label %160

153:                                              ; preds = %137, %121
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %158 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %157, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %141
  %161 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %162 = call i32 @nv_wr32(%struct.nv50_graph_priv* %161, i32 4196428, i32 0)
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, -3
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %160, %117
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %171, %168, %165
  %176 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %177 = call i32 @nv_wr32(%struct.nv50_graph_priv* %176, i32 4196356, i32 -1073741824)
  %178 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %179 = call i32 @nv_wr32(%struct.nv50_graph_priv* %178, i32 4194568, i32 1)
  %180 = load i32, i32* %12, align 4
  %181 = and i32 %180, -2
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %175
  store i32 0, i32* %6, align 4
  br label %404

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185, %38
  %187 = load i32, i32* %12, align 4
  %188 = and i32 %187, 2
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %224

190:                                              ; preds = %186
  %191 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %192 = call i32 @nv_rd32(%struct.nv50_graph_priv* %191, i32 4220928)
  %193 = and i32 %192, 2147483647
  store i32 %193, i32* %26, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %190
  %197 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %198 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %199 = load i32, i32* @nv50_graph_trap_m2mf, align 4
  %200 = load i32, i32* %26, align 4
  %201 = call i32 @nouveau_bitfield_print(i32 %199, i32 %200)
  %202 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %203 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %204 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %205 = call i32 @nv_rd32(%struct.nv50_graph_priv* %204, i32 4220932)
  %206 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %207 = call i32 @nv_rd32(%struct.nv50_graph_priv* %206, i32 4220936)
  %208 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %209 = call i32 @nv_rd32(%struct.nv50_graph_priv* %208, i32 4220940)
  %210 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %211 = call i32 @nv_rd32(%struct.nv50_graph_priv* %210, i32 4220944)
  %212 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %205, i32 %207, i32 %209, i32 %211)
  br label %213

213:                                              ; preds = %196, %190
  %214 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %215 = call i32 @nv_wr32(%struct.nv50_graph_priv* %214, i32 4194368, i32 2)
  %216 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %217 = call i32 @nv_wr32(%struct.nv50_graph_priv* %216, i32 4194368, i32 0)
  %218 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %219 = call i32 @nv_wr32(%struct.nv50_graph_priv* %218, i32 4220928, i32 -1073741824)
  %220 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %221 = call i32 @nv_wr32(%struct.nv50_graph_priv* %220, i32 4194568, i32 2)
  %222 = load i32, i32* %12, align 4
  %223 = and i32 %222, -3
  store i32 %223, i32* %12, align 4
  br label %224

224:                                              ; preds = %213, %186
  %225 = load i32, i32* %12, align 4
  %226 = and i32 %225, 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %258

228:                                              ; preds = %224
  %229 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %230 = call i32 @nv_rd32(%struct.nv50_graph_priv* %229, i32 4197380)
  %231 = and i32 %230, 2147483647
  store i32 %231, i32* %27, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %228
  %235 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %236 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %237 = load i32, i32* @nv50_graph_trap_vfetch, align 4
  %238 = load i32, i32* %27, align 4
  %239 = call i32 @nouveau_bitfield_print(i32 %237, i32 %238)
  %240 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %241 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %242 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %243 = call i32 @nv_rd32(%struct.nv50_graph_priv* %242, i32 4197376)
  %244 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %245 = call i32 @nv_rd32(%struct.nv50_graph_priv* %244, i32 4197384)
  %246 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %247 = call i32 @nv_rd32(%struct.nv50_graph_priv* %246, i32 4197388)
  %248 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %249 = call i32 @nv_rd32(%struct.nv50_graph_priv* %248, i32 4197392)
  %250 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %241, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %243, i32 %245, i32 %247, i32 %249)
  br label %251

251:                                              ; preds = %234, %228
  %252 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %253 = call i32 @nv_wr32(%struct.nv50_graph_priv* %252, i32 4197380, i32 -1073741824)
  %254 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %255 = call i32 @nv_wr32(%struct.nv50_graph_priv* %254, i32 4194568, i32 4)
  %256 = load i32, i32* %12, align 4
  %257 = and i32 %256, -5
  store i32 %257, i32* %12, align 4
  br label %258

258:                                              ; preds = %251, %224
  %259 = load i32, i32* %12, align 4
  %260 = and i32 %259, 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %296

262:                                              ; preds = %258
  %263 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %264 = call i32 @nv_rd32(%struct.nv50_graph_priv* %263, i32 4200448)
  %265 = and i32 %264, 2147483647
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %285

268:                                              ; preds = %262
  %269 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %270 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %269, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %271 = load i32, i32* @nv50_graph_trap_strmout, align 4
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @nouveau_bitfield_print(i32 %271, i32 %272)
  %274 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %275 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %276 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %277 = call i32 @nv_rd32(%struct.nv50_graph_priv* %276, i32 4200452)
  %278 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %279 = call i32 @nv_rd32(%struct.nv50_graph_priv* %278, i32 4200456)
  %280 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %281 = call i32 @nv_rd32(%struct.nv50_graph_priv* %280, i32 4200460)
  %282 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %283 = call i32 @nv_rd32(%struct.nv50_graph_priv* %282, i32 4200464)
  %284 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %275, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %277, i32 %279, i32 %281, i32 %283)
  br label %285

285:                                              ; preds = %268, %262
  %286 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %287 = call i32 @nv_wr32(%struct.nv50_graph_priv* %286, i32 4194368, i32 128)
  %288 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %289 = call i32 @nv_wr32(%struct.nv50_graph_priv* %288, i32 4194368, i32 0)
  %290 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %291 = call i32 @nv_wr32(%struct.nv50_graph_priv* %290, i32 4200448, i32 -1073741824)
  %292 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %293 = call i32 @nv_wr32(%struct.nv50_graph_priv* %292, i32 4194568, i32 8)
  %294 = load i32, i32* %12, align 4
  %295 = and i32 %294, -9
  store i32 %295, i32* %12, align 4
  br label %296

296:                                              ; preds = %285, %258
  %297 = load i32, i32* %12, align 4
  %298 = and i32 %297, 16
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %336

300:                                              ; preds = %296
  %301 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %302 = call i32 @nv_rd32(%struct.nv50_graph_priv* %301, i32 4214808)
  %303 = and i32 %302, 2147483647
  store i32 %303, i32* %13, align 4
  %304 = load i32, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %329

306:                                              ; preds = %300
  %307 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %308 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %307, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %309 = load i32, i32* @nv50_graph_trap_ccache, align 4
  %310 = load i32, i32* %13, align 4
  %311 = call i32 @nouveau_bitfield_print(i32 %309, i32 %310)
  %312 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %313 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %314 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %315 = call i32 @nv_rd32(%struct.nv50_graph_priv* %314, i32 4214784)
  %316 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %317 = call i32 @nv_rd32(%struct.nv50_graph_priv* %316, i32 4214788)
  %318 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %319 = call i32 @nv_rd32(%struct.nv50_graph_priv* %318, i32 4214792)
  %320 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %321 = call i32 @nv_rd32(%struct.nv50_graph_priv* %320, i32 4214796)
  %322 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %323 = call i32 @nv_rd32(%struct.nv50_graph_priv* %322, i32 4214800)
  %324 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %325 = call i32 @nv_rd32(%struct.nv50_graph_priv* %324, i32 4214804)
  %326 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %327 = call i32 @nv_rd32(%struct.nv50_graph_priv* %326, i32 4214812)
  %328 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %313, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i32 %315, i32 %317, i32 %319, i32 %321, i32 %323, i32 %325, i32 %327)
  br label %329

329:                                              ; preds = %306, %300
  %330 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %331 = call i32 @nv_wr32(%struct.nv50_graph_priv* %330, i32 4214808, i32 -1073741824)
  %332 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %333 = call i32 @nv_wr32(%struct.nv50_graph_priv* %332, i32 4194568, i32 16)
  %334 = load i32, i32* %12, align 4
  %335 = and i32 %334, -17
  store i32 %335, i32* %12, align 4
  br label %336

336:                                              ; preds = %329, %296
  %337 = load i32, i32* %12, align 4
  %338 = and i32 %337, 32
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %336
  %341 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %342 = call i32 @nv_rd32(%struct.nv50_graph_priv* %341, i32 4202496)
  %343 = and i32 %342, 2147483647
  store i32 %343, i32* %13, align 4
  %344 = load i32, i32* %8, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %340
  %347 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %348 = load i32, i32* %13, align 4
  %349 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %347, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %348)
  br label %350

350:                                              ; preds = %346, %340
  %351 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %352 = call i32 @nv_wr32(%struct.nv50_graph_priv* %351, i32 4202496, i32 -1073741824)
  br label %353

353:                                              ; preds = %350, %336
  %354 = load i32, i32* %12, align 4
  %355 = and i32 %354, 64
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %353
  %358 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @nv50_priv_tp_trap(%struct.nv50_graph_priv* %358, i32 6, i32 4229376, i32 4228608, i32 %359, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %361 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %362 = call i32 @nv_wr32(%struct.nv50_graph_priv* %361, i32 4194568, i32 64)
  %363 = load i32, i32* %12, align 4
  %364 = and i32 %363, -65
  store i32 %364, i32* %12, align 4
  br label %365

365:                                              ; preds = %357, %353
  %366 = load i32, i32* %12, align 4
  %367 = and i32 %366, 128
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %365
  %370 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %371 = load i32, i32* %8, align 4
  %372 = call i32 @nv50_priv_tp_trap(%struct.nv50_graph_priv* %370, i32 7, i32 4227860, i32 4227868, i32 %371, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %373 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %374 = call i32 @nv_wr32(%struct.nv50_graph_priv* %373, i32 4194568, i32 128)
  %375 = load i32, i32* %12, align 4
  %376 = and i32 %375, -129
  store i32 %376, i32* %12, align 4
  br label %377

377:                                              ; preds = %369, %365
  %378 = load i32, i32* %12, align 4
  %379 = and i32 %378, 256
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %377
  %382 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %383 = load i32, i32* %8, align 4
  %384 = call i32 @nv50_priv_tp_trap(%struct.nv50_graph_priv* %382, i32 8, i32 4230664, i32 4228872, i32 %383, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %385 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %386 = call i32 @nv_wr32(%struct.nv50_graph_priv* %385, i32 4194568, i32 256)
  %387 = load i32, i32* %12, align 4
  %388 = and i32 %387, -257
  store i32 %388, i32* %12, align 4
  br label %389

389:                                              ; preds = %381, %377
  %390 = load i32, i32* %12, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %403

392:                                              ; preds = %389
  %393 = load i32, i32* %8, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %392
  %396 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %397 = load i32, i32* %12, align 4
  %398 = call i32 (%struct.nv50_graph_priv*, i8*, ...) @nv_error(%struct.nv50_graph_priv* %396, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %397)
  br label %399

399:                                              ; preds = %395, %392
  %400 = load %struct.nv50_graph_priv*, %struct.nv50_graph_priv** %7, align 8
  %401 = load i32, i32* %12, align 4
  %402 = call i32 @nv_wr32(%struct.nv50_graph_priv* %400, i32 4194568, i32 %401)
  br label %403

403:                                              ; preds = %399, %389
  store i32 1, i32* %6, align 4
  br label %404

404:                                              ; preds = %403, %184, %35
  %405 = load i32, i32* %6, align 4
  ret i32 %405
}

declare dso_local i32 @nv_rd32(%struct.nv50_graph_priv*, i32) #1

declare dso_local i32 @nv_error(%struct.nv50_graph_priv*, i8*, ...) #1

declare dso_local i32 @nv_wr32(%struct.nv50_graph_priv*, i32, i32) #1

declare dso_local i32 @nouveau_client_name(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_bitfield_print(i32, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @nv50_priv_tp_trap(%struct.nv50_graph_priv*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
