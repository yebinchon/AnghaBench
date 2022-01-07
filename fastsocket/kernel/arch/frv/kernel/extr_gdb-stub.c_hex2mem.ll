; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_hex2mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_hex2mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @hex2mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hex2mem(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.anon, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 1
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @hex(i32 %23)
  %25 = shl i32 %24, 4
  %26 = bitcast %union.anon* %9 to [4 x i32]*
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @hex(i32 %31)
  %33 = bitcast %union.anon* %9 to [4 x i32]*
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = bitcast %union.anon* %9 to [4 x i32]*
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gdbstub_write_byte(i32* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %19
  store i8* null, i8** %4, align 8
  br label %267

44:                                               ; preds = %19
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %16, %3
  %50 = load i32*, i32** %8, align 8
  %51 = ptrtoint i32* %50 to i32
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %103

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %55, 2
  br i1 %56, label %57, label %103

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 @hex(i32 %61)
  %63 = shl i32 %62, 4
  %64 = bitcast %union.anon* %9 to [4 x i32]*
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i64 0, i64 0
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  %68 = load i8, i8* %66, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 @hex(i32 %69)
  %71 = bitcast %union.anon* %9 to [4 x i32]*
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 @hex(i32 %78)
  %80 = shl i32 %79, 4
  %81 = bitcast %union.anon* %9 to [4 x i32]*
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %81, i64 0, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  %87 = call i32 @hex(i32 %86)
  %88 = bitcast %union.anon* %9 to [4 x i32]*
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %88, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = bitcast %union.anon* %9 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @gdbstub_write_word(i32* %92, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %57
  store i8* null, i8** %4, align 8
  br label %267

98:                                               ; preds = %57
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  store i32* %100, i32** %8, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %101, 2
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %54, %49
  br label %104

104:                                              ; preds = %182, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %105, 4
  br i1 %106, label %107, label %187

107:                                              ; preds = %104
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  %112 = call i32 @hex(i32 %111)
  %113 = shl i32 %112, 4
  %114 = bitcast %union.anon* %9 to [4 x i32]*
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %114, i64 0, i64 0
  store i32 %113, i32* %115, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %5, align 8
  %118 = load i8, i8* %116, align 1
  %119 = sext i8 %118 to i32
  %120 = call i32 @hex(i32 %119)
  %121 = bitcast %union.anon* %9 to [4 x i32]*
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %121, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  %127 = load i8, i8* %125, align 1
  %128 = sext i8 %127 to i32
  %129 = call i32 @hex(i32 %128)
  %130 = shl i32 %129, 4
  %131 = bitcast %union.anon* %9 to [4 x i32]*
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %131, i64 0, i64 1
  store i32 %130, i32* %132, align 4
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %5, align 8
  %135 = load i8, i8* %133, align 1
  %136 = sext i8 %135 to i32
  %137 = call i32 @hex(i32 %136)
  %138 = bitcast %union.anon* %9 to [4 x i32]*
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %138, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %5, align 8
  %144 = load i8, i8* %142, align 1
  %145 = sext i8 %144 to i32
  %146 = call i32 @hex(i32 %145)
  %147 = shl i32 %146, 4
  %148 = bitcast %union.anon* %9 to [4 x i32]*
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %148, i64 0, i64 2
  store i32 %147, i32* %149, align 4
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  %152 = load i8, i8* %150, align 1
  %153 = sext i8 %152 to i32
  %154 = call i32 @hex(i32 %153)
  %155 = bitcast %union.anon* %9 to [4 x i32]*
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %155, i64 0, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %5, align 8
  %161 = load i8, i8* %159, align 1
  %162 = sext i8 %161 to i32
  %163 = call i32 @hex(i32 %162)
  %164 = shl i32 %163, 4
  %165 = bitcast %union.anon* %9 to [4 x i32]*
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %165, i64 0, i64 3
  store i32 %164, i32* %166, align 4
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %5, align 8
  %169 = load i8, i8* %167, align 1
  %170 = sext i8 %169 to i32
  %171 = call i32 @hex(i32 %170)
  %172 = bitcast %union.anon* %9 to [4 x i32]*
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %172, i64 0, i64 3
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = bitcast %union.anon* %9 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @gdbstub_write_dword(i32* %176, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %107
  store i8* null, i8** %4, align 8
  br label %267

182:                                              ; preds = %107
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  store i32* %184, i32** %8, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sub nsw i32 %185, 4
  store i32 %186, i32* %7, align 4
  br label %104

187:                                              ; preds = %104
  %188 = load i32, i32* %7, align 4
  %189 = icmp sge i32 %188, 2
  br i1 %189, label %190, label %236

190:                                              ; preds = %187
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %5, align 8
  %193 = load i8, i8* %191, align 1
  %194 = sext i8 %193 to i32
  %195 = call i32 @hex(i32 %194)
  %196 = shl i32 %195, 4
  %197 = bitcast %union.anon* %9 to [4 x i32]*
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %197, i64 0, i64 0
  store i32 %196, i32* %198, align 4
  %199 = load i8*, i8** %5, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %5, align 8
  %201 = load i8, i8* %199, align 1
  %202 = sext i8 %201 to i32
  %203 = call i32 @hex(i32 %202)
  %204 = bitcast %union.anon* %9 to [4 x i32]*
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %204, i64 0, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load i8*, i8** %5, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %5, align 8
  %210 = load i8, i8* %208, align 1
  %211 = sext i8 %210 to i32
  %212 = call i32 @hex(i32 %211)
  %213 = shl i32 %212, 4
  %214 = bitcast %union.anon* %9 to [4 x i32]*
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 1
  store i32 %213, i32* %215, align 4
  %216 = load i8*, i8** %5, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %5, align 8
  %218 = load i8, i8* %216, align 1
  %219 = sext i8 %218 to i32
  %220 = call i32 @hex(i32 %219)
  %221 = bitcast %union.anon* %9 to [4 x i32]*
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %221, i64 0, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = bitcast %union.anon* %9 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @gdbstub_write_word(i32* %225, i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %190
  store i8* null, i8** %4, align 8
  br label %267

231:                                              ; preds = %190
  %232 = load i32*, i32** %8, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 2
  store i32* %233, i32** %8, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sub nsw i32 %234, 2
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %231, %187
  %237 = load i32, i32* %7, align 4
  %238 = icmp sge i32 %237, 1
  br i1 %238, label %239, label %265

239:                                              ; preds = %236
  %240 = load i8*, i8** %5, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %5, align 8
  %242 = load i8, i8* %240, align 1
  %243 = sext i8 %242 to i32
  %244 = call i32 @hex(i32 %243)
  %245 = shl i32 %244, 4
  %246 = bitcast %union.anon* %9 to [4 x i32]*
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %246, i64 0, i64 0
  store i32 %245, i32* %247, align 4
  %248 = load i8*, i8** %5, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %5, align 8
  %250 = load i8, i8* %248, align 1
  %251 = sext i8 %250 to i32
  %252 = call i32 @hex(i32 %251)
  %253 = bitcast %union.anon* %9 to [4 x i32]*
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %253, i64 0, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  %257 = load i32*, i32** %8, align 8
  %258 = bitcast %union.anon* %9 to [4 x i32]*
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %258, i64 0, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @gdbstub_write_byte(i32* %257, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %239
  store i8* null, i8** %4, align 8
  br label %267

264:                                              ; preds = %239
  br label %265

265:                                              ; preds = %264, %236
  %266 = load i8*, i8** %5, align 8
  store i8* %266, i8** %4, align 8
  br label %267

267:                                              ; preds = %265, %263, %230, %181, %97, %43
  %268 = load i8*, i8** %4, align 8
  ret i8* %268
}

declare dso_local i32 @hex(i32) #1

declare dso_local i32 @gdbstub_write_byte(i32*, i32) #1

declare dso_local i32 @gdbstub_write_word(i32*, i32) #1

declare dso_local i32 @gdbstub_write_dword(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
