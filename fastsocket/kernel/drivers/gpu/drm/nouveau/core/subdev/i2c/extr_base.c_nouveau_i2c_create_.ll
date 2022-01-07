; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_base.c_nouveau_i2c_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_base.c_nouveau_i2c_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_oclass = type { i64 }
%struct.nouveau_object = type opaque
%struct.nouveau_bios = type { i32 }
%struct.nouveau_i2c = type { %struct.nouveau_i2c* (%struct.nouveau_i2c*, i32)*, i32, i32, i32 }
%struct.dcb_i2c_entry = type { i64 }
%struct.dcb_output = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@nouveau_i2c_find_type = common dso_local global i32 0, align 4
@nouveau_i2c_identify = common dso_local global i32 0, align 4
@DCB_I2C_UNUSED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nouveau_i2c_extdev_sclass = common dso_local global %struct.nouveau_oclass** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_i2c_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, %struct.nouveau_oclass* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca %struct.nouveau_oclass*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.nouveau_bios*, align 8
  %15 = alloca %struct.nouveau_i2c*, align 8
  %16 = alloca %struct.nouveau_object*, align 8
  %17 = alloca %struct.dcb_i2c_entry, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.dcb_output, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store %struct.nouveau_oclass* %3, %struct.nouveau_oclass** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %26 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %27 = bitcast %struct.nouveau_object* %26 to i8*
  %28 = call %struct.nouveau_bios* @nouveau_bios(i8* %27)
  store %struct.nouveau_bios* %28, %struct.nouveau_bios** %14, align 8
  store i32 -1, i32* %21, align 4
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %30 = bitcast %struct.nouveau_object* %29 to i8*
  %31 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %32 = bitcast %struct.nouveau_object* %31 to i8*
  %33 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %34 = call i32 @nouveau_subdev_create(i8* %30, i8* %32, %struct.nouveau_oclass* %33, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.nouveau_i2c** %15)
  store i32 %34, i32* %18, align 4
  %35 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %15, align 8
  %36 = call i8* @nv_object(%struct.nouveau_i2c* %35)
  %37 = load i8**, i8*** %13, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %7, align 4
  br label %195

42:                                               ; preds = %6
  %43 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %15, align 8
  %44 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %43, i32 0, i32 0
  store %struct.nouveau_i2c* (%struct.nouveau_i2c*, i32)* @nouveau_i2c_find, %struct.nouveau_i2c* (%struct.nouveau_i2c*, i32)** %44, align 8
  %45 = load i32, i32* @nouveau_i2c_find_type, align 4
  %46 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %15, align 8
  %47 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @nouveau_i2c_identify, align 4
  %49 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %15, align 8
  %50 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %15, align 8
  %52 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  br label %54

54:                                               ; preds = %99, %66, %42
  %55 = load %struct.nouveau_bios*, %struct.nouveau_bios** %14, align 8
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %21, align 4
  %58 = call i32 @dcb_i2c_parse(%struct.nouveau_bios* %55, i32 %57, %struct.dcb_i2c_entry* %17)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %100

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %17, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DCB_I2C_UNUSED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %54

67:                                               ; preds = %61
  %68 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %11, align 8
  store %struct.nouveau_oclass* %68, %struct.nouveau_oclass** %10, align 8
  br label %69

69:                                               ; preds = %97, %67
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %18, align 4
  %72 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %73 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %17, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load i8**, i8*** %13, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %13, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %84 = load i32, i32* %21, align 4
  %85 = bitcast %struct.nouveau_object** %16 to i8**
  %86 = call i32 @nouveau_object_ctor(i8* %80, i8* %82, %struct.nouveau_oclass* %83, %struct.dcb_i2c_entry* %17, i32 %84, i8** %85)
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %78, %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %93 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %92, i32 1
  store %struct.nouveau_oclass* %93, %struct.nouveau_oclass** %10, align 8
  %94 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %91, %88
  %98 = phi i1 [ false, %88 ], [ %96, %91 ]
  br i1 %98, label %69, label %99

99:                                               ; preds = %97
  br label %54

100:                                              ; preds = %54
  %101 = load i32, i32* %21, align 4
  %102 = add nsw i32 %101, 15
  %103 = sdiv i32 %102, 16
  %104 = mul nsw i32 %103, 16
  store i32 %104, i32* %21, align 4
  store i32 -1, i32* %19, align 4
  br label %105

105:                                              ; preds = %193, %133, %119, %100
  %106 = load %struct.nouveau_bios*, %struct.nouveau_bios** %14, align 8
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  %109 = call i32 @dcb_outp_parse(%struct.nouveau_bios* %106, i32 %108, i32* %23, i32* %24, %struct.dcb_output* %22)
  store i32 %109, i32* %25, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %194

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %22, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %22, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115, %111
  br label %105

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %22, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %133 [
    i32 128, label %123
    i32 129, label %128
  ]

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %22, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @NV_I2C_TYPE_EXTDDC(i32 %125)
  %127 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %17, i32 0, i32 0
  store i64 %126, i64* %127, align 8
  br label %134

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %22, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @NV_I2C_TYPE_EXTAUX(i32 %130)
  %132 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %17, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  br label %134

133:                                              ; preds = %120
  br label %105

134:                                              ; preds = %128, %123
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %18, align 4
  store i32 -1, i32* %20, align 4
  br label %137

137:                                              ; preds = %192, %134
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  %143 = load %struct.nouveau_oclass**, %struct.nouveau_oclass*** @nouveau_i2c_extdev_sclass, align 8
  %144 = call i32 @ARRAY_SIZE(%struct.nouveau_oclass** %143)
  %145 = icmp slt i32 %142, %144
  br label %146

146:                                              ; preds = %140, %137
  %147 = phi i1 [ false, %137 ], [ %145, %140 ]
  br i1 %147, label %148, label %193

148:                                              ; preds = %146
  %149 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %15, align 8
  %150 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %149, i32 0, i32 0
  %151 = load %struct.nouveau_i2c* (%struct.nouveau_i2c*, i32)*, %struct.nouveau_i2c* (%struct.nouveau_i2c*, i32)** %150, align 8
  %152 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %15, align 8
  %153 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %22, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.nouveau_i2c* %151(%struct.nouveau_i2c* %152, i32 %154)
  %156 = call i8* @nv_object(%struct.nouveau_i2c* %155)
  %157 = bitcast i8* %156 to %struct.nouveau_object*
  store %struct.nouveau_object* %157, %struct.nouveau_object** %8, align 8
  %158 = load %struct.nouveau_oclass**, %struct.nouveau_oclass*** @nouveau_i2c_extdev_sclass, align 8
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.nouveau_oclass*, %struct.nouveau_oclass** %158, i64 %160
  %162 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %161, align 8
  store %struct.nouveau_oclass* %162, %struct.nouveau_oclass** %10, align 8
  br label %163

163:                                              ; preds = %190, %148
  %164 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %165 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %17, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %166, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %181

171:                                              ; preds = %163
  %172 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %173 = bitcast %struct.nouveau_object* %172 to i8*
  %174 = load i8**, i8*** %13, align 8
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %21, align 4
  %179 = bitcast %struct.nouveau_object** %16 to i8**
  %180 = call i32 @nouveau_object_ctor(i8* %173, i8* %175, %struct.nouveau_oclass* %176, %struct.dcb_i2c_entry* null, i32 %177, i8** %179)
  store i32 %180, i32* %18, align 4
  br label %181

181:                                              ; preds = %171, %170
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %186 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %185, i32 1
  store %struct.nouveau_oclass* %186, %struct.nouveau_oclass** %10, align 8
  %187 = getelementptr inbounds %struct.nouveau_oclass, %struct.nouveau_oclass* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br label %190

190:                                              ; preds = %184, %181
  %191 = phi i1 [ false, %181 ], [ %189, %184 ]
  br i1 %191, label %163, label %192

192:                                              ; preds = %190
  br label %137

193:                                              ; preds = %146
  br label %105

194:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %194, %40
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(i8*) #1

declare dso_local i32 @nouveau_subdev_create(i8*, i8*, %struct.nouveau_oclass*, i32, i8*, i8*, %struct.nouveau_i2c**) #1

declare dso_local i8* @nv_object(%struct.nouveau_i2c*) #1

declare dso_local %struct.nouveau_i2c* @nouveau_i2c_find(%struct.nouveau_i2c*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dcb_i2c_parse(%struct.nouveau_bios*, i32, %struct.dcb_i2c_entry*) #1

declare dso_local i32 @nouveau_object_ctor(i8*, i8*, %struct.nouveau_oclass*, %struct.dcb_i2c_entry*, i32, i8**) #1

declare dso_local i32 @dcb_outp_parse(%struct.nouveau_bios*, i32, i32*, i32*, %struct.dcb_output*) #1

declare dso_local i64 @NV_I2C_TYPE_EXTDDC(i32) #1

declare dso_local i64 @NV_I2C_TYPE_EXTAUX(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nouveau_oclass**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
