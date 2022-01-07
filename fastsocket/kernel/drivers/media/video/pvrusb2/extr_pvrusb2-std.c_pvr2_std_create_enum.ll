; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-std.c_pvr2_std_create_enum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-std.c_pvr2_std_create_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_standard = type { i32 }

@pvrusb2_debug = common dso_local global i32 0, align 4
@PVR2_TRACE_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Mapping standards mask=0x%x (%.*s)\00", align 1
@std_mixes = common dso_local global i32* null, align 8
@CSTD_ATSC = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"WARNING: Failed to classify the following standard(s): %.*s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Setting up %u unique standard(s)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_standard* @pvr2_std_create_enum(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_standard*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_standard*, align 8
  %14 = alloca [100 x i8], align 16
  %15 = alloca [100 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @pvrusb2_debug, align 4
  %17 = load i32, i32* @PVR2_TRACE_STD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pvr2_std_id_to_str(i8* %21, i32 100, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @PVR2_TRACE_STD, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %28 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32*, i32** %4, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %56, %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %56

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @match_std(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %49, %40
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %32

59:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** @std_mixes, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32*, i32** @std_mixes, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %66, %71
  %73 = load i32*, i32** @std_mixes, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %65
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load i32, i32* @CSTD_ATSC, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @pvr2_std_id_to_str(i8* %94, i32 100, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %98 = load i32, i32* %8, align 4
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %100 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %97, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %93, %86
  %102 = load i32, i32* @PVR2_TRACE_STD, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  store %struct.v4l2_standard* null, %struct.v4l2_standard** %3, align 8
  br label %210

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call %struct.v4l2_standard* @kzalloc(i32 %112, i32 %113)
  store %struct.v4l2_standard* %114, %struct.v4l2_standard** %13, align 8
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %126, %108
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  %122 = load i32, i32* %7, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %121, i64 %123
  %125 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %124, i32 0, i32 0
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %115

129:                                              ; preds = %115
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %167, %129
  %131 = load i32, i32* %9, align 4
  %132 = load i32*, i32** @std_mixes, align 8
  %133 = call i32 @ARRAY_SIZE(i32* %132)
  %134 = icmp ult i32 %131, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ult i32 %136, %137
  br label %139

139:                                              ; preds = %135, %130
  %140 = phi i1 [ false, %130 ], [ %138, %135 ]
  br i1 %140, label %141, label %170

141:                                              ; preds = %139
  %142 = load i32, i32* %5, align 4
  %143 = load i32*, i32** @std_mixes, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %142, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %141
  br label %167

151:                                              ; preds = %141
  %152 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  %153 = load i32, i32* %7, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %152, i64 %154
  %156 = load i32*, i32** @std_mixes, align 8
  %157 = load i32, i32* %9, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @pvr2_std_fill(%struct.v4l2_standard* %155, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load i32, i32* %7, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %163, %151
  br label %167

167:                                              ; preds = %166, %150
  %168 = load i32, i32* %9, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %130

170:                                              ; preds = %139
  store i32 1, i32* %10, align 4
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %203, %170
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ult i32 %176, %177
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i1 [ false, %172 ], [ %178, %175 ]
  br i1 %180, label %181, label %206

181:                                              ; preds = %179
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  br label %203

187:                                              ; preds = %181
  %188 = load i32, i32* %10, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %11, align 4
  %192 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  %193 = load i32, i32* %7, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.v4l2_standard, %struct.v4l2_standard* %192, i64 %194
  %196 = load i32, i32* %10, align 4
  %197 = call i64 @pvr2_std_fill(%struct.v4l2_standard* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %187
  br label %203

200:                                              ; preds = %187
  %201 = load i32, i32* %7, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %200, %199, %186
  %204 = load i32, i32* %10, align 4
  %205 = shl i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %172

206:                                              ; preds = %179
  %207 = load i32, i32* %6, align 4
  %208 = load i32*, i32** %4, align 8
  store i32 %207, i32* %208, align 4
  %209 = load %struct.v4l2_standard*, %struct.v4l2_standard** %13, align 8
  store %struct.v4l2_standard* %209, %struct.v4l2_standard** %3, align 8
  br label %210

210:                                              ; preds = %206, %107
  %211 = load %struct.v4l2_standard*, %struct.v4l2_standard** %3, align 8
  ret %struct.v4l2_standard* %211
}

declare dso_local i32 @pvr2_std_id_to_str(i8*, i32, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, ...) #1

declare dso_local i64 @match_std(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.v4l2_standard* @kzalloc(i32, i32) #1

declare dso_local i64 @pvr2_std_fill(%struct.v4l2_standard*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
