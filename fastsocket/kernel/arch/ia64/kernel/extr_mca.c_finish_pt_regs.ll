; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca.c_finish_pt_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca.c_finish_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.TYPE_4__*, i64*)* @finish_pt_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_pt_regs(%struct.pt_regs* %0, %struct.TYPE_4__* %1, i64* %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = call %struct.TYPE_5__* @ia64_psr(%struct.pt_regs* %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 32
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 31
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 30
  store i32 %26, i32* %28, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 32
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 31
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 30
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %29, %13
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 29
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 28
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 27
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 26
  %70 = load i64*, i64** %6, align 8
  %71 = call i32 @copy_reg(i32* %64, i32 %67, i32* %69, i64* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 25
  %81 = load i64*, i64** %6, align 8
  %82 = call i32 @copy_reg(i32* %75, i32 %78, i32* %80, i64* %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 24
  %92 = load i64*, i64** %6, align 8
  %93 = call i32 @copy_reg(i32* %86, i32 %89, i32* %91, i64* %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 23
  %103 = load i64*, i64** %6, align 8
  %104 = call i32 @copy_reg(i32* %97, i32 %100, i32* %102, i64* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 22
  %114 = load i64*, i64** %6, align 8
  %115 = call i32 @copy_reg(i32* %108, i32 %111, i32* %113, i64* %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 9
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %124 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %123, i32 0, i32 21
  %125 = load i64*, i64** %6, align 8
  %126 = call i32 @copy_reg(i32* %119, i32 %122, i32* %124, i64* %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 10
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %135 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %134, i32 0, i32 20
  %136 = load i64*, i64** %6, align 8
  %137 = call i32 @copy_reg(i32* %130, i32 %133, i32* %135, i64* %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 11
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %146 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %145, i32 0, i32 19
  %147 = load i64*, i64** %6, align 8
  %148 = call i32 @copy_reg(i32* %141, i32 %144, i32* %146, i64* %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 12
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %157 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %156, i32 0, i32 18
  %158 = load i64*, i64** %6, align 8
  %159 = call i32 @copy_reg(i32* %152, i32 %155, i32* %157, i64* %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 13
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %168 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %167, i32 0, i32 17
  %169 = load i64*, i64** %6, align 8
  %170 = call i32 @copy_reg(i32* %163, i32 %166, i32* %168, i64* %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 14
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %178, i32 0, i32 16
  %180 = load i64*, i64** %6, align 8
  %181 = call i32 @copy_reg(i32* %174, i32 %177, i32* %179, i64* %180)
  %182 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %183 = call %struct.TYPE_5__* @ia64_psr(%struct.pt_regs* %182)
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %45
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %7, align 8
  br label %195

191:                                              ; preds = %45
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %7, align 8
  br label %195

195:                                              ; preds = %191, %187
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %202 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %201, i32 0, i32 15
  %203 = load i64*, i64** %6, align 8
  %204 = call i32 @copy_reg(i32* %197, i32 %200, i32* %202, i64* %203)
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %211 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %210, i32 0, i32 14
  %212 = load i64*, i64** %6, align 8
  %213 = call i32 @copy_reg(i32* %206, i32 %209, i32* %211, i64* %212)
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %220 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %219, i32 0, i32 13
  %221 = load i64*, i64** %6, align 8
  %222 = call i32 @copy_reg(i32* %215, i32 %218, i32* %220, i64* %221)
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %229 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %228, i32 0, i32 12
  %230 = load i64*, i64** %6, align 8
  %231 = call i32 @copy_reg(i32* %224, i32 %227, i32* %229, i64* %230)
  %232 = load i32*, i32** %7, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 4
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %238 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %237, i32 0, i32 11
  %239 = load i64*, i64** %6, align 8
  %240 = call i32 @copy_reg(i32* %233, i32 %236, i32* %238, i64* %239)
  %241 = load i32*, i32** %7, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 5
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %247 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %246, i32 0, i32 10
  %248 = load i64*, i64** %6, align 8
  %249 = call i32 @copy_reg(i32* %242, i32 %245, i32* %247, i64* %248)
  %250 = load i32*, i32** %7, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 6
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %256 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %255, i32 0, i32 9
  %257 = load i64*, i64** %6, align 8
  %258 = call i32 @copy_reg(i32* %251, i32 %254, i32* %256, i64* %257)
  %259 = load i32*, i32** %7, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 7
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %265 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %264, i32 0, i32 8
  %266 = load i64*, i64** %6, align 8
  %267 = call i32 @copy_reg(i32* %260, i32 %263, i32* %265, i64* %266)
  %268 = load i32*, i32** %7, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 8
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %274 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %273, i32 0, i32 7
  %275 = load i64*, i64** %6, align 8
  %276 = call i32 @copy_reg(i32* %269, i32 %272, i32* %274, i64* %275)
  %277 = load i32*, i32** %7, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 9
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %283 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %282, i32 0, i32 6
  %284 = load i64*, i64** %6, align 8
  %285 = call i32 @copy_reg(i32* %278, i32 %281, i32* %283, i64* %284)
  %286 = load i32*, i32** %7, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 10
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %292 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %291, i32 0, i32 5
  %293 = load i64*, i64** %6, align 8
  %294 = call i32 @copy_reg(i32* %287, i32 %290, i32* %292, i64* %293)
  %295 = load i32*, i32** %7, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 11
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %301 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %300, i32 0, i32 4
  %302 = load i64*, i64** %6, align 8
  %303 = call i32 @copy_reg(i32* %296, i32 %299, i32* %301, i64* %302)
  %304 = load i32*, i32** %7, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 12
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %310 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %309, i32 0, i32 3
  %311 = load i64*, i64** %6, align 8
  %312 = call i32 @copy_reg(i32* %305, i32 %308, i32* %310, i64* %311)
  %313 = load i32*, i32** %7, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 13
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %319 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %318, i32 0, i32 2
  %320 = load i64*, i64** %6, align 8
  %321 = call i32 @copy_reg(i32* %314, i32 %317, i32* %319, i64* %320)
  %322 = load i32*, i32** %7, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 14
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %328 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %327, i32 0, i32 1
  %329 = load i64*, i64** %6, align 8
  %330 = call i32 @copy_reg(i32* %323, i32 %326, i32* %328, i64* %329)
  %331 = load i32*, i32** %7, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 15
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %337 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %336, i32 0, i32 0
  %338 = load i64*, i64** %6, align 8
  %339 = call i32 @copy_reg(i32* %332, i32 %335, i32* %337, i64* %338)
  ret void
}

declare dso_local %struct.TYPE_5__* @ia64_psr(%struct.pt_regs*) #1

declare dso_local i32 @copy_reg(i32*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
