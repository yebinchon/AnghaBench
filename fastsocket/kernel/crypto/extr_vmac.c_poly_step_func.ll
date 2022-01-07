; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_poly_step_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_vmac.c_poly_step_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INDEX_HIGH = common dso_local global i64 0, align 8
@INDEX_LOW = common dso_local global i64 0, align 8
@a0 = common dso_local global i32 0, align 4
@a1 = common dso_local global i32 0, align 4
@a2 = common dso_local global i32 0, align 4
@a3 = common dso_local global i32 0, align 4
@k0 = common dso_local global i32 0, align 4
@k1 = common dso_local global i32 0, align 4
@k2 = common dso_local global i32 0, align 4
@k3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*)* @poly_step_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly_step_func(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* @INDEX_HIGH, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* @INDEX_HIGH, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MUL32(i32 %20, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* @INDEX_LOW, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* @INDEX_LOW, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MUL32(i32 %36, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* @INDEX_HIGH, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i64, i64* @INDEX_HIGH, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MUL32(i32 %47, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %13, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* @INDEX_LOW, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i64, i64* @INDEX_LOW, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MUL32(i32 %58, i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = ashr i32 %67, 32
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* @INDEX_LOW, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i64, i64* @INDEX_HIGH, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MUL32(i32 %72, i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* @INDEX_HIGH, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i64, i64* @INDEX_LOW, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MUL32(i32 %83, i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i64, i64* @INDEX_LOW, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i64, i64* @INDEX_HIGH, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @MUL32(i32 %94, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* @INDEX_HIGH, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i64, i64* @INDEX_LOW, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MUL32(i32 %105, i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = and i32 %113, 2147483647
  %115 = shl i32 %114, 32
  %116 = load i32, i32* %15, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = ashr i32 %118, 31
  store i32 %119, i32* %13, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = load i64, i64* @INDEX_LOW, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %13, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i64, i64* @INDEX_LOW, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i64, i64* @INDEX_LOW, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @MUL32(i32 %129, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i64, i64* @INDEX_HIGH, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = load i64, i64* @INDEX_HIGH, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @MUL32(i32 %140, i32 %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i64, i64* @INDEX_LOW, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i64, i64* @INDEX_LOW, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @MUL32(i32 %149, i32 %153)
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %14, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = load i64, i64* @INDEX_HIGH, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = load i64, i64* @INDEX_HIGH, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @MUL32(i32 %160, i32 %164)
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %13, align 4
  %176 = ashr i32 %175, 32
  store i32 %176, i32* %13, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = load i64, i64* @INDEX_HIGH, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %13, align 4
  %183 = load i32*, i32** %8, align 8
  %184 = load i64, i64* @INDEX_LOW, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = load i64, i64* @INDEX_HIGH, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @MUL32(i32 %186, i32 %190)
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %13, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = load i64, i64* @INDEX_HIGH, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %10, align 8
  %199 = load i64, i64* @INDEX_LOW, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @MUL32(i32 %197, i32 %201)
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %13, align 4
  %205 = load i32*, i32** %7, align 8
  %206 = load i64, i64* @INDEX_LOW, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %9, align 8
  %210 = load i64, i64* @INDEX_HIGH, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @MUL32(i32 %208, i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32*, i32** %7, align 8
  %215 = load i64, i64* @INDEX_HIGH, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = load i64, i64* @INDEX_LOW, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @MUL32(i32 %217, i32 %221)
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = shl i32 %231, 32
  %233 = load i32, i32* %16, align 4
  %234 = or i32 %232, %233
  %235 = load i32*, i32** %8, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %13, align 4
  %237 = ashr i32 %236, 32
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32*, i32** %7, align 8
  store i32 %240, i32* %241, align 4
  ret void
}

declare dso_local i32 @MUL32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
