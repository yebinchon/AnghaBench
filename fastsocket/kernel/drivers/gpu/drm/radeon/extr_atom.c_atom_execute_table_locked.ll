; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_execute_table_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_execute_table_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_4__*, i32*, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i64, i32*, %struct.atom_context* }
%struct.atom_context = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATOM_CT_SIZE_PTR = common dso_local global i64 0, align 8
@ATOM_CT_WS_PTR = common dso_local global i64 0, align 8
@ATOM_CT_PS_PTR = common dso_local global i64 0, align 8
@ATOM_CT_PS_MASK = common dso_local global i32 0, align 4
@ATOM_CT_CODE_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c">> execute %04X (len %d, WS %d, PS %d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@debug_depth = common dso_local global i32 0, align 4
@ATOM_OP_NAMES_CNT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s @ 0x%04X\0A\00", align 1
@atom_op_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"[%d] @ 0x%04X\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"atombios stuck executing %04X (len %d, WS %d, PS %d) @ 0x%04X\0A\00", align 1
@ATOM_OP_CNT = common dso_local global i8 0, align 1
@opcode_table = common dso_local global %struct.TYPE_5__* null, align 8
@ATOM_OP_EOT = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_context*, i32, i32*)* @atom_execute_table_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atom_execute_table_locked(%struct.atom_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.atom_context*, %struct.atom_context** %5, align 8
  %17 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @CU16(i64 %23)
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %166

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @ATOM_CT_SIZE_PTR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @CU16(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @ATOM_CT_WS_PTR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @CU8(i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @ATOM_CT_PS_PTR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @CU8(i64 %44)
  %46 = load i32, i32* @ATOM_CT_PS_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ATOM_CT_CODE_PTR, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.atom_context*, %struct.atom_context** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  store %struct.atom_context* %56, %struct.atom_context** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sdiv i32 %58, 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  store i32* %63, i32** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %30
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 4, %70
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32* @kzalloc(i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32* %73, i32** %74, align 8
  br label %77

75:                                               ; preds = %30
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i32, i32* @debug_depth, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @debug_depth, align 4
  br label %80

80:                                               ; preds = %77, %152
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = sext i32 %81 to i64
  %84 = call i32 @CU8(i64 %83)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %13, align 1
  %86 = load i8, i8* %13, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @ATOM_OP_NAMES_CNT, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %80
  %92 = load i32*, i32** @atom_op_names, align 8
  %93 = load i8, i8* %13, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %98)
  br label %106

100:                                              ; preds = %80
  %101 = load i8, i8* %13, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %100, %91
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %114, i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %15, align 4
  br label %157

120:                                              ; preds = %106
  %121 = load i8, i8* %13, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @ATOM_OP_CNT, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i8, i8* %13, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @opcode_table, align 8
  %132 = load i8, i8* %13, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32 (%struct.TYPE_4__*, i32*, i32)*, i32 (%struct.TYPE_4__*, i32*, i32)** %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** @opcode_table, align 8
  %138 = load i8, i8* %13, align 1
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 %136(%struct.TYPE_4__* %14, i32* %12, i32 %142)
  br label %145

144:                                              ; preds = %126, %120
  br label %153

145:                                              ; preds = %130
  %146 = load i8, i8* %13, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* @ATOM_OP_EOT, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %153

152:                                              ; preds = %145
  br label %80

153:                                              ; preds = %151, %144
  %154 = load i32, i32* @debug_depth, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* @debug_depth, align 4
  %156 = call i32 (i8*, ...) @SDEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %157

157:                                              ; preds = %153, %110
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @kfree(i32* %162)
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %15, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %27
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @CU16(i64) #1

declare dso_local i32 @CU8(i64) #1

declare dso_local i32 @SDEBUG(i8*, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
