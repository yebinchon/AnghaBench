; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"%s: relocation out of range, section %d reloc %d sym '%s'\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: unexpected FLIX relocation: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: unexpected ALT relocation: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: unexpected relocation: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %13, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %220, %5
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 12
  %36 = icmp ult i64 %27, %35
  br i1 %36, label %37, label %223

37:                                               ; preds = %25
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %49, i64 %56
  store i8* %57, i8** %15, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_5__*
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ELF32_R_SYM(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %72
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %14, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %76, %82
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ELF32_R_TYPE(i32 %89)
  switch i32 %90, label %205 [
    i32 159, label %91
    i32 160, label %91
    i32 162, label %91
    i32 161, label %91
    i32 163, label %91
    i32 164, label %92
    i32 158, label %92
    i32 156, label %98
    i32 144, label %177
    i32 142, label %177
    i32 140, label %177
    i32 138, label %177
    i32 136, label %177
    i32 134, label %177
    i32 132, label %177
    i32 130, label %177
    i32 128, label %177
    i32 154, label %177
    i32 152, label %177
    i32 150, label %177
    i32 148, label %177
    i32 146, label %177
    i32 157, label %191
    i32 145, label %191
    i32 143, label %191
    i32 141, label %191
    i32 139, label %191
    i32 137, label %191
    i32 135, label %191
    i32 133, label %191
    i32 131, label %191
    i32 129, label %191
    i32 155, label %191
    i32 153, label %191
    i32 151, label %191
    i32 149, label %191
    i32 147, label %191
  ]

91:                                               ; preds = %37, %37, %37, %37, %37
  br label %219

92:                                               ; preds = %37, %37
  %93 = load i32, i32* %16, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %219

98:                                               ; preds = %37
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 @decode_calln_opcode(i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %98
  %103 = load i8*, i8** %15, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = and i64 %104, -4
  %106 = add i64 %105, 4
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = and i32 %111, 3
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 524288
  %117 = ashr i32 %116, 20
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114, %102
  %120 = load %struct.module*, %struct.module** %11, align 8
  %121 = getelementptr inbounds %struct.module, %struct.module* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  %131 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i8* %130)
  %132 = load i32, i32* @ENOEXEC, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %224

134:                                              ; preds = %114
  %135 = load i32, i32* %16, align 4
  %136 = ashr i32 %135, 2
  store i32 %136, i32* %16, align 4
  br label %176

137:                                              ; preds = %98
  %138 = load i8*, i8** %15, align 8
  %139 = call i32 @decode_l32r_opcode(i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %175

141:                                              ; preds = %137
  %142 = load i8*, i8** %15, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = add i64 %143, 3
  %145 = and i64 %144, -4
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = sub i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = and i32 %150, 3
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %16, align 4
  %155 = ashr i32 %154, 18
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %172

157:                                              ; preds = %153, %141
  %158 = load %struct.module*, %struct.module** %11, align 8
  %159 = getelementptr inbounds %struct.module, %struct.module* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %163, i64 %167
  %169 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %160, i32 %161, i32 %162, i8* %168)
  %170 = load i32, i32* @ENOEXEC, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %6, align 4
  br label %224

172:                                              ; preds = %153
  %173 = load i32, i32* %16, align 4
  %174 = ashr i32 %173, 2
  store i32 %174, i32* %16, align 4
  br label %175

175:                                              ; preds = %172, %137
  br label %176

176:                                              ; preds = %175, %134
  br label %219

177:                                              ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %178 = load %struct.module*, %struct.module** %11, align 8
  %179 = getelementptr inbounds %struct.module, %struct.module* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %182 = load i32, i32* %12, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ELF32_R_TYPE(i32 %186)
  %188 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %187)
  %189 = load i32, i32* @ENOEXEC, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %6, align 4
  br label %224

191:                                              ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %192 = load %struct.module*, %struct.module** %11, align 8
  %193 = getelementptr inbounds %struct.module, %struct.module* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %196 = load i32, i32* %12, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ELF32_R_TYPE(i32 %200)
  %202 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %201)
  %203 = load i32, i32* @ENOEXEC, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %6, align 4
  br label %224

205:                                              ; preds = %37
  %206 = load %struct.module*, %struct.module** %11, align 8
  %207 = getelementptr inbounds %struct.module, %struct.module* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %210 = load i32, i32* %12, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ELF32_R_TYPE(i32 %214)
  %216 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %208, i32 %215)
  %217 = load i32, i32* @ENOEXEC, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %6, align 4
  br label %224

219:                                              ; preds = %176, %92, %91
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %12, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %25

223:                                              ; preds = %25
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %223, %205, %191, %177, %157, %119
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @decode_calln_opcode(i8*) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @decode_l32r_opcode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
