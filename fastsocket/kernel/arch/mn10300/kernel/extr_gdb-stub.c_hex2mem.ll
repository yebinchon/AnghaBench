; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_hex2mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_hex2mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i32)* @hex2mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hex2mem(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %union.anon, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = ptrtoint i32* %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @hex(i32 %25)
  %27 = shl i32 %26, 4
  %28 = bitcast %union.anon* %11 to [4 x i32]*
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @hex(i32 %33)
  %35 = bitcast %union.anon* %11 to [4 x i32]*
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = bitcast %union.anon* %11 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @gdbstub_write_byte(i32 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  store i8* null, i8** %5, align 8
  br label %267

45:                                               ; preds = %21
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %18, %4
  %51 = load i32*, i32** %10, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = and i32 %52, 3
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %104

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 @hex(i32 %62)
  %64 = shl i32 %63, 4
  %65 = bitcast %union.anon* %11 to [4 x i32]*
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i64 0, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 @hex(i32 %70)
  %72 = bitcast %union.anon* %11 to [4 x i32]*
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  %78 = load i8, i8* %76, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 @hex(i32 %79)
  %81 = shl i32 %80, 4
  %82 = bitcast %union.anon* %11 to [4 x i32]*
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %82, i64 0, i64 1
  store i32 %81, i32* %83, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = load i8, i8* %84, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 @hex(i32 %87)
  %89 = bitcast %union.anon* %11 to [4 x i32]*
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = bitcast %union.anon* %11 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = call i64 @gdbstub_write_word(i32 %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %58
  store i8* null, i8** %5, align 8
  br label %267

99:                                               ; preds = %58
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32* %101, i32** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 2
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %99, %55, %50
  br label %105

105:                                              ; preds = %183, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp sge i32 %106, 4
  br i1 %107, label %108, label %188

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  %111 = load i8, i8* %109, align 1
  %112 = sext i8 %111 to i32
  %113 = call i32 @hex(i32 %112)
  %114 = shl i32 %113, 4
  %115 = bitcast %union.anon* %11 to [4 x i32]*
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 0, i64 0
  store i32 %114, i32* %116, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  %119 = load i8, i8* %117, align 1
  %120 = sext i8 %119 to i32
  %121 = call i32 @hex(i32 %120)
  %122 = bitcast %union.anon* %11 to [4 x i32]*
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %122, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = call i32 @hex(i32 %129)
  %131 = shl i32 %130, 4
  %132 = bitcast %union.anon* %11 to [4 x i32]*
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %132, i64 0, i64 1
  store i32 %131, i32* %133, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %6, align 8
  %136 = load i8, i8* %134, align 1
  %137 = sext i8 %136 to i32
  %138 = call i32 @hex(i32 %137)
  %139 = bitcast %union.anon* %11 to [4 x i32]*
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %139, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %6, align 8
  %145 = load i8, i8* %143, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 @hex(i32 %146)
  %148 = shl i32 %147, 4
  %149 = bitcast %union.anon* %11 to [4 x i32]*
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %149, i64 0, i64 2
  store i32 %148, i32* %150, align 4
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %6, align 8
  %153 = load i8, i8* %151, align 1
  %154 = sext i8 %153 to i32
  %155 = call i32 @hex(i32 %154)
  %156 = bitcast %union.anon* %11 to [4 x i32]*
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i64 0, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %6, align 8
  %162 = load i8, i8* %160, align 1
  %163 = sext i8 %162 to i32
  %164 = call i32 @hex(i32 %163)
  %165 = shl i32 %164, 4
  %166 = bitcast %union.anon* %11 to [4 x i32]*
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %166, i64 0, i64 3
  store i32 %165, i32* %167, align 4
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %6, align 8
  %170 = load i8, i8* %168, align 1
  %171 = sext i8 %170 to i32
  %172 = call i32 @hex(i32 %171)
  %173 = bitcast %union.anon* %11 to [4 x i32]*
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %173, i64 0, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = bitcast %union.anon* %11 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = call i64 @gdbstub_write_dword(i32 %178, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %108
  store i8* null, i8** %5, align 8
  br label %267

183:                                              ; preds = %108
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  store i32* %185, i32** %10, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sub nsw i32 %186, 4
  store i32 %187, i32* %8, align 4
  br label %105

188:                                              ; preds = %105
  %189 = load i32, i32* %8, align 4
  %190 = icmp sge i32 %189, 2
  br i1 %190, label %191, label %237

191:                                              ; preds = %188
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %6, align 8
  %194 = load i8, i8* %192, align 1
  %195 = sext i8 %194 to i32
  %196 = call i32 @hex(i32 %195)
  %197 = shl i32 %196, 4
  %198 = bitcast %union.anon* %11 to [4 x i32]*
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %198, i64 0, i64 0
  store i32 %197, i32* %199, align 4
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %6, align 8
  %202 = load i8, i8* %200, align 1
  %203 = sext i8 %202 to i32
  %204 = call i32 @hex(i32 %203)
  %205 = bitcast %union.anon* %11 to [4 x i32]*
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %205, i64 0, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %6, align 8
  %211 = load i8, i8* %209, align 1
  %212 = sext i8 %211 to i32
  %213 = call i32 @hex(i32 %212)
  %214 = shl i32 %213, 4
  %215 = bitcast %union.anon* %11 to [4 x i32]*
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %215, i64 0, i64 1
  store i32 %214, i32* %216, align 4
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %6, align 8
  %219 = load i8, i8* %217, align 1
  %220 = sext i8 %219 to i32
  %221 = call i32 @hex(i32 %220)
  %222 = bitcast %union.anon* %11 to [4 x i32]*
  %223 = getelementptr inbounds [4 x i32], [4 x i32]* %222, i64 0, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = bitcast %union.anon* %11 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %10, align 8
  %229 = call i64 @gdbstub_write_word(i32 %227, i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %191
  store i8* null, i8** %5, align 8
  br label %267

232:                                              ; preds = %191
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  store i32* %234, i32** %10, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sub nsw i32 %235, 2
  store i32 %236, i32* %8, align 4
  br label %237

237:                                              ; preds = %232, %188
  %238 = load i32, i32* %8, align 4
  %239 = icmp sge i32 %238, 1
  br i1 %239, label %240, label %265

240:                                              ; preds = %237
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %6, align 8
  %243 = load i8, i8* %241, align 1
  %244 = sext i8 %243 to i32
  %245 = call i32 @hex(i32 %244)
  %246 = shl i32 %245, 4
  %247 = bitcast %union.anon* %11 to [4 x i32]*
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %247, i64 0, i64 0
  store i32 %246, i32* %248, align 4
  %249 = load i8*, i8** %6, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %6, align 8
  %251 = load i8, i8* %249, align 1
  %252 = sext i8 %251 to i32
  %253 = call i32 @hex(i32 %252)
  %254 = bitcast %union.anon* %11 to [4 x i32]*
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %254, i64 0, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = bitcast %union.anon* %11 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %10, align 8
  %261 = call i64 @gdbstub_write_byte(i32 %259, i32* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %240
  store i8* null, i8** %5, align 8
  br label %267

264:                                              ; preds = %240
  br label %265

265:                                              ; preds = %264, %237
  %266 = load i8*, i8** %6, align 8
  store i8* %266, i8** %5, align 8
  br label %267

267:                                              ; preds = %265, %263, %231, %182, %98, %44
  %268 = load i8*, i8** %5, align 8
  ret i8* %268
}

declare dso_local i32 @hex(i32) #1

declare dso_local i64 @gdbstub_write_byte(i32, i32*) #1

declare dso_local i64 @gdbstub_write_word(i32, i32*) #1

declare dso_local i64 @gdbstub_write_dword(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
