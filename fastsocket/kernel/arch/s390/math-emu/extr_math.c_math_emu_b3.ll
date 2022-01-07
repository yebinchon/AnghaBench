; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_b3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_math_emu_b3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@math_emu_b3.format_table = internal constant <{ [155 x i32], [101 x i32] }> <{ [155 x i32] [i32 3, i32 3, i32 3, i32 3, i32 15, i32 13, i32 14, i32 13, i32 3, i32 3, i32 3, i32 3, i32 15, i32 3, i32 6, i32 6, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 1, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 18, i32 13, i32 17, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 8, i32 7, i32 0, i32 12, i32 11, i32 10], [101 x i32] zeroinitializer }>, align 16
@math_emu_b3.jump_table = internal global <{ [155 x i8*], [101 x i8*] }> <{ [155 x i8*] [i8* inttoptr (i64 150 to i8*), i8* inttoptr (i64 153 to i8*), i8* inttoptr (i64 147 to i8*), i8* inttoptr (i64 160 to i8*), i8* inttoptr (i64 158 to i8*), i8* inttoptr (i64 145 to i8*), i8* inttoptr (i64 144 to i8*), i8* inttoptr (i64 135 to i8*), i8* inttoptr (i64 163 to i8*), i8* inttoptr (i64 180 to i8*), i8* inttoptr (i64 184 to i8*), i8* inttoptr (i64 133 to i8*), i8* inttoptr (i64 140 to i8*), i8* inttoptr (i64 172 to i8*), i8* inttoptr (i64 142 to i8*), i8* inttoptr (i64 137 to i8*), i8* inttoptr (i64 151 to i8*), i8* inttoptr (i64 154 to i8*), i8* inttoptr (i64 148 to i8*), i8* inttoptr (i64 161 to i8*), i8* inttoptr (i64 130 to i8*), i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 129 to i8*), i8* inttoptr (i64 139 to i8*), i8* inttoptr (i64 164 to i8*), i8* inttoptr (i64 182 to i8*), i8* inttoptr (i64 185 to i8*), i8* inttoptr (i64 134 to i8*), i8* inttoptr (i64 141 to i8*), i8* inttoptr (i64 173 to i8*), i8* inttoptr (i64 143 to i8*), i8* inttoptr (i64 138 to i8*), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* inttoptr (i64 149 to i8*), i8* inttoptr (i64 152 to i8*), i8* inttoptr (i64 146 to i8*), i8* inttoptr (i64 159 to i8*), i8* inttoptr (i64 156 to i8*), i8* inttoptr (i64 157 to i8*), i8* inttoptr (i64 155 to i8*), i8* inttoptr (i64 165 to i8*), i8* inttoptr (i64 162 to i8*), i8* inttoptr (i64 175 to i8*), i8* inttoptr (i64 183 to i8*), i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 136 to i8*), i8* inttoptr (i64 169 to i8*), i8* null, i8* null, i8* null, i8* null, i8* null, i8* inttoptr (i64 170 to i8*), i8* null, i8* null, i8* null, i8* inttoptr (i64 166 to i8*), i8* null, i8* null, i8* null, i8* inttoptr (i64 171 to i8*), i8* null, i8* null, i8* null, i8* inttoptr (i64 167 to i8*), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* inttoptr (i64 132 to i8*), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* inttoptr (i64 168 to i8*), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* inttoptr (i64 179 to i8*), i8* inttoptr (i64 181 to i8*), i8* inttoptr (i64 174 to i8*), i8* null, i8* inttoptr (i64 177 to i8*), i8* inttoptr (i64 178 to i8*), i8* inttoptr (i64 176 to i8*)], [101 x i8*] zeroinitializer }>, align 16
@SIGILL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SIGFPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @math_emu_b3(i32* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [155 x i32], [101 x i32] }>* @math_emu_b3.format_table to [256 x i32]*), i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %849 [
    i32 1, label %13
    i32 2, label %87
    i32 3, label %127
    i32 4, label %167
    i32 5, label %245
    i32 6, label %301
    i32 7, label %357
    i32 8, label %396
    i32 9, label %420
    i32 10, label %444
    i32 11, label %499
    i32 12, label %540
    i32 13, label %581
    i32 14, label %631
    i32 15, label %681
    i32 16, label %716
    i32 17, label %759
    i32 18, label %802
    i32 19, label %831
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 34
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @SIGILL, align 4
  store i32 %20, i32* %3, align 4
  br label %875

21:                                               ; preds = %13
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 4
  %26 = and i32 %25, 15
  %27 = call i32 @emu_store_regd(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 4
  %32 = and i32 %31, 15
  %33 = add nsw i32 %32, 2
  %34 = call i32 @emu_store_regd(i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = call i32 @emu_store_regd(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = add nsw i32 %43, 2
  %45 = call i32 @emu_store_regd(i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = bitcast i8* %51 to i32 (%struct.pt_regs*, i32, i32)*
  %53 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = call i32 %52(%struct.pt_regs* %53, i32 %57, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 4
  %67 = and i32 %66, 15
  %68 = call i32 @emu_load_regd(i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 4
  %73 = and i32 %72, 15
  %74 = add nsw i32 %73, 2
  %75 = call i32 @emu_load_regd(i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  %80 = call i32 @emu_load_regd(i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 15
  %85 = add nsw i32 %84, 2
  %86 = call i32 @emu_load_regd(i32 %85)
  br label %851

87:                                               ; preds = %2
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 4
  %92 = and i32 %91, 15
  %93 = call i32 @emu_store_regd(i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  %98 = call i32 @emu_store_regd(i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to i32 (%struct.pt_regs*, i32, i32)*
  %106 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 4
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  %115 = call i32 %105(%struct.pt_regs* %106, i32 %110, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 4
  %120 = and i32 %119, 15
  %121 = call i32 @emu_load_regd(i32 %120)
  %122 = load i32*, i32** %4, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 15
  %126 = call i32 @emu_load_regd(i32 %125)
  br label %851

127:                                              ; preds = %2
  %128 = load i32*, i32** %4, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 4
  %132 = and i32 %131, 15
  %133 = call i32 @emu_store_rege(i32 %132)
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 15
  %138 = call i32 @emu_store_rege(i32 %137)
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = bitcast i8* %144 to i32 (%struct.pt_regs*, i32, i32)*
  %146 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %147 = load i32*, i32** %4, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 4
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 15
  %155 = call i32 %145(%struct.pt_regs* %146, i32 %150, i32 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 4
  %160 = and i32 %159, 15
  %161 = call i32 @emu_load_rege(i32 %160)
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 15
  %166 = call i32 @emu_load_rege(i32 %165)
  br label %851

167:                                              ; preds = %2
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 34
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* @SIGILL, align 4
  store i32 %174, i32* %3, align 4
  br label %875

175:                                              ; preds = %167
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 4
  %180 = and i32 %179, 15
  %181 = call i32 @emu_store_regd(i32 %180)
  %182 = load i32*, i32** %4, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = ashr i32 %184, 4
  %186 = and i32 %185, 15
  %187 = add nsw i32 %186, 2
  %188 = call i32 @emu_store_regd(i32 %187)
  %189 = load i32*, i32** %4, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  %191 = load i32, i32* %190, align 4
  %192 = and i32 %191, 15
  %193 = call i32 @emu_store_regd(i32 %192)
  %194 = load i32*, i32** %4, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 15
  %198 = add nsw i32 %197, 2
  %199 = call i32 @emu_store_regd(i32 %198)
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = bitcast i8* %205 to i32 (%struct.pt_regs*, i32, i32, i32)*
  %207 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %208 = load i32*, i32** %4, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 4
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 15
  %216 = load i32*, i32** %4, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 4
  %220 = call i32 %206(%struct.pt_regs* %207, i32 %211, i32 %215, i32 %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32*, i32** %4, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 3
  %223 = load i32, i32* %222, align 4
  %224 = ashr i32 %223, 4
  %225 = and i32 %224, 15
  %226 = call i32 @emu_load_regd(i32 %225)
  %227 = load i32*, i32** %4, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 3
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 4
  %231 = and i32 %230, 15
  %232 = add nsw i32 %231, 2
  %233 = call i32 @emu_load_regd(i32 %232)
  %234 = load i32*, i32** %4, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, 15
  %238 = call i32 @emu_load_regd(i32 %237)
  %239 = load i32*, i32** %4, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 15
  %243 = add nsw i32 %242, 2
  %244 = call i32 @emu_load_regd(i32 %243)
  br label %851

245:                                              ; preds = %2
  %246 = load i32*, i32** %4, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 4
  %250 = and i32 %249, 15
  %251 = call i32 @emu_store_regd(i32 %250)
  %252 = load i32*, i32** %4, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  %254 = load i32, i32* %253, align 4
  %255 = ashr i32 %254, 4
  %256 = and i32 %255, 15
  %257 = call i32 @emu_store_regd(i32 %256)
  %258 = load i32*, i32** %4, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 3
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, 15
  %262 = call i32 @emu_store_regd(i32 %261)
  %263 = load i32*, i32** %4, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = bitcast i8* %268 to i32 (%struct.pt_regs*, i32, i32, i32)*
  %270 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %271 = load i32*, i32** %4, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 3
  %273 = load i32, i32* %272, align 4
  %274 = ashr i32 %273, 4
  %275 = load i32*, i32** %4, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 3
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 15
  %279 = load i32*, i32** %4, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = ashr i32 %281, 4
  %283 = call i32 %269(%struct.pt_regs* %270, i32 %274, i32 %278, i32 %282)
  store i32 %283, i32* %6, align 4
  %284 = load i32*, i32** %4, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  %286 = load i32, i32* %285, align 4
  %287 = ashr i32 %286, 4
  %288 = and i32 %287, 15
  %289 = call i32 @emu_load_regd(i32 %288)
  %290 = load i32*, i32** %4, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 3
  %292 = load i32, i32* %291, align 4
  %293 = ashr i32 %292, 4
  %294 = and i32 %293, 15
  %295 = call i32 @emu_load_regd(i32 %294)
  %296 = load i32*, i32** %4, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 15
  %300 = call i32 @emu_load_regd(i32 %299)
  br label %851

301:                                              ; preds = %2
  %302 = load i32*, i32** %4, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  %304 = load i32, i32* %303, align 4
  %305 = ashr i32 %304, 4
  %306 = and i32 %305, 15
  %307 = call i32 @emu_store_rege(i32 %306)
  %308 = load i32*, i32** %4, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 3
  %310 = load i32, i32* %309, align 4
  %311 = ashr i32 %310, 4
  %312 = and i32 %311, 15
  %313 = call i32 @emu_store_rege(i32 %312)
  %314 = load i32*, i32** %4, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 3
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, 15
  %318 = call i32 @emu_store_rege(i32 %317)
  %319 = load i32*, i32** %4, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %322
  %324 = load i8*, i8** %323, align 8
  %325 = bitcast i8* %324 to i32 (%struct.pt_regs*, i32, i32, i32)*
  %326 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %327 = load i32*, i32** %4, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 3
  %329 = load i32, i32* %328, align 4
  %330 = ashr i32 %329, 4
  %331 = load i32*, i32** %4, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 3
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, 15
  %335 = load i32*, i32** %4, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 2
  %337 = load i32, i32* %336, align 4
  %338 = ashr i32 %337, 4
  %339 = call i32 %325(%struct.pt_regs* %326, i32 %330, i32 %334, i32 %338)
  store i32 %339, i32* %6, align 4
  %340 = load i32*, i32** %4, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 2
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 4
  %344 = and i32 %343, 15
  %345 = call i32 @emu_load_rege(i32 %344)
  %346 = load i32*, i32** %4, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 3
  %348 = load i32, i32* %347, align 4
  %349 = ashr i32 %348, 4
  %350 = and i32 %349, 15
  %351 = call i32 @emu_load_rege(i32 %350)
  %352 = load i32*, i32** %4, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 3
  %354 = load i32, i32* %353, align 4
  %355 = and i32 %354, 15
  %356 = call i32 @emu_load_rege(i32 %355)
  br label %851

357:                                              ; preds = %2
  %358 = load i32*, i32** %4, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 3
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, 32
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %357
  %364 = load i32, i32* @SIGILL, align 4
  store i32 %364, i32* %3, align 4
  br label %875

365:                                              ; preds = %357
  %366 = load i32*, i32** %4, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %369
  %371 = load i8*, i8** %370, align 8
  %372 = bitcast i8* %371 to i32 (%struct.pt_regs*, i32, i32)*
  %373 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %374 = load i32*, i32** %4, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 3
  %376 = load i32, i32* %375, align 4
  %377 = ashr i32 %376, 4
  %378 = load i32*, i32** %4, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 3
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, 15
  %382 = call i32 %372(%struct.pt_regs* %373, i32 %377, i32 %381)
  store i32 %382, i32* %6, align 4
  %383 = load i32*, i32** %4, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 3
  %385 = load i32, i32* %384, align 4
  %386 = ashr i32 %385, 4
  %387 = and i32 %386, 15
  %388 = call i32 @emu_load_regd(i32 %387)
  %389 = load i32*, i32** %4, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 3
  %391 = load i32, i32* %390, align 4
  %392 = ashr i32 %391, 4
  %393 = and i32 %392, 15
  %394 = add nsw i32 %393, 2
  %395 = call i32 @emu_load_regd(i32 %394)
  br label %851

396:                                              ; preds = %2
  %397 = load i32*, i32** %4, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 1
  %399 = load i32, i32* %398, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = bitcast i8* %402 to i32 (%struct.pt_regs*, i32, i32)*
  %404 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %405 = load i32*, i32** %4, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 3
  %407 = load i32, i32* %406, align 4
  %408 = ashr i32 %407, 4
  %409 = load i32*, i32** %4, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 3
  %411 = load i32, i32* %410, align 4
  %412 = and i32 %411, 15
  %413 = call i32 %403(%struct.pt_regs* %404, i32 %408, i32 %412)
  store i32 %413, i32* %6, align 4
  %414 = load i32*, i32** %4, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 3
  %416 = load i32, i32* %415, align 4
  %417 = ashr i32 %416, 4
  %418 = and i32 %417, 15
  %419 = call i32 @emu_load_regd(i32 %418)
  br label %851

420:                                              ; preds = %2
  %421 = load i32*, i32** %4, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 1
  %423 = load i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %424
  %426 = load i8*, i8** %425, align 8
  %427 = bitcast i8* %426 to i32 (%struct.pt_regs*, i32, i32)*
  %428 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %429 = load i32*, i32** %4, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 3
  %431 = load i32, i32* %430, align 4
  %432 = ashr i32 %431, 4
  %433 = load i32*, i32** %4, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 3
  %435 = load i32, i32* %434, align 4
  %436 = and i32 %435, 15
  %437 = call i32 %427(%struct.pt_regs* %428, i32 %432, i32 %436)
  store i32 %437, i32* %6, align 4
  %438 = load i32*, i32** %4, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 3
  %440 = load i32, i32* %439, align 4
  %441 = ashr i32 %440, 4
  %442 = and i32 %441, 15
  %443 = call i32 @emu_load_rege(i32 %442)
  br label %851

444:                                              ; preds = %2
  %445 = load i32*, i32** %4, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 2
  %447 = load i32, i32* %446, align 4
  %448 = and i32 %447, 128
  %449 = icmp eq i32 %448, 128
  br i1 %449, label %456, label %450

450:                                              ; preds = %444
  %451 = load i32*, i32** %4, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 2
  %453 = load i32, i32* %452, align 4
  %454 = and i32 %453, 96
  %455 = icmp eq i32 %454, 32
  br i1 %455, label %456, label %458

456:                                              ; preds = %450, %444
  %457 = load i32, i32* @SIGILL, align 4
  store i32 %457, i32* %3, align 4
  br label %875

458:                                              ; preds = %450
  %459 = load i32*, i32** %4, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 3
  %461 = load i32, i32* %460, align 4
  %462 = and i32 %461, 2
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %458
  %465 = load i32, i32* @SIGILL, align 4
  store i32 %465, i32* %3, align 4
  br label %875

466:                                              ; preds = %458
  %467 = load i32*, i32** %4, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 3
  %469 = load i32, i32* %468, align 4
  %470 = and i32 %469, 15
  %471 = call i32 @emu_store_regd(i32 %470)
  %472 = load i32*, i32** %4, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 3
  %474 = load i32, i32* %473, align 4
  %475 = and i32 %474, 15
  %476 = add nsw i32 %475, 2
  %477 = call i32 @emu_store_regd(i32 %476)
  %478 = load i32*, i32** %4, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 1
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %481
  %483 = load i8*, i8** %482, align 8
  %484 = bitcast i8* %483 to i32 (%struct.pt_regs*, i32, i32, i32)*
  %485 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %486 = load i32*, i32** %4, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 3
  %488 = load i32, i32* %487, align 4
  %489 = ashr i32 %488, 4
  %490 = load i32*, i32** %4, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 3
  %492 = load i32, i32* %491, align 4
  %493 = and i32 %492, 15
  %494 = load i32*, i32** %4, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 2
  %496 = load i32, i32* %495, align 4
  %497 = ashr i32 %496, 4
  %498 = call i32 %484(%struct.pt_regs* %485, i32 %489, i32 %493, i32 %497)
  store i32 %498, i32* %6, align 4
  br label %851

499:                                              ; preds = %2
  %500 = load i32*, i32** %4, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 2
  %502 = load i32, i32* %501, align 4
  %503 = and i32 %502, 128
  %504 = icmp eq i32 %503, 128
  br i1 %504, label %511, label %505

505:                                              ; preds = %499
  %506 = load i32*, i32** %4, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 2
  %508 = load i32, i32* %507, align 4
  %509 = and i32 %508, 96
  %510 = icmp eq i32 %509, 32
  br i1 %510, label %511, label %513

511:                                              ; preds = %505, %499
  %512 = load i32, i32* @SIGILL, align 4
  store i32 %512, i32* %3, align 4
  br label %875

513:                                              ; preds = %505
  %514 = load i32*, i32** %4, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 3
  %516 = load i32, i32* %515, align 4
  %517 = and i32 %516, 15
  %518 = call i32 @emu_store_regd(i32 %517)
  %519 = load i32*, i32** %4, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 1
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %522
  %524 = load i8*, i8** %523, align 8
  %525 = bitcast i8* %524 to i32 (%struct.pt_regs*, i32, i32, i32)*
  %526 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %527 = load i32*, i32** %4, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 3
  %529 = load i32, i32* %528, align 4
  %530 = ashr i32 %529, 4
  %531 = load i32*, i32** %4, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 3
  %533 = load i32, i32* %532, align 4
  %534 = and i32 %533, 15
  %535 = load i32*, i32** %4, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 2
  %537 = load i32, i32* %536, align 4
  %538 = ashr i32 %537, 4
  %539 = call i32 %525(%struct.pt_regs* %526, i32 %530, i32 %534, i32 %538)
  store i32 %539, i32* %6, align 4
  br label %851

540:                                              ; preds = %2
  %541 = load i32*, i32** %4, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 2
  %543 = load i32, i32* %542, align 4
  %544 = and i32 %543, 128
  %545 = icmp eq i32 %544, 128
  br i1 %545, label %552, label %546

546:                                              ; preds = %540
  %547 = load i32*, i32** %4, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 2
  %549 = load i32, i32* %548, align 4
  %550 = and i32 %549, 96
  %551 = icmp eq i32 %550, 32
  br i1 %551, label %552, label %554

552:                                              ; preds = %546, %540
  %553 = load i32, i32* @SIGILL, align 4
  store i32 %553, i32* %3, align 4
  br label %875

554:                                              ; preds = %546
  %555 = load i32*, i32** %4, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 3
  %557 = load i32, i32* %556, align 4
  %558 = and i32 %557, 15
  %559 = call i32 @emu_store_rege(i32 %558)
  %560 = load i32*, i32** %4, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 1
  %562 = load i32, i32* %561, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %563
  %565 = load i8*, i8** %564, align 8
  %566 = bitcast i8* %565 to i32 (%struct.pt_regs*, i32, i32, i32)*
  %567 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %568 = load i32*, i32** %4, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 3
  %570 = load i32, i32* %569, align 4
  %571 = ashr i32 %570, 4
  %572 = load i32*, i32** %4, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 3
  %574 = load i32, i32* %573, align 4
  %575 = and i32 %574, 15
  %576 = load i32*, i32** %4, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 2
  %578 = load i32, i32* %577, align 4
  %579 = ashr i32 %578, 4
  %580 = call i32 %566(%struct.pt_regs* %567, i32 %571, i32 %575, i32 %579)
  store i32 %580, i32* %6, align 4
  br label %851

581:                                              ; preds = %2
  %582 = load i32*, i32** %4, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 3
  %584 = load i32, i32* %583, align 4
  %585 = and i32 %584, 32
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %581
  %588 = load i32, i32* @SIGILL, align 4
  store i32 %588, i32* %3, align 4
  br label %875

589:                                              ; preds = %581
  %590 = load i32*, i32** %4, align 8
  %591 = getelementptr inbounds i32, i32* %590, i64 3
  %592 = load i32, i32* %591, align 4
  %593 = ashr i32 %592, 4
  %594 = and i32 %593, 15
  %595 = call i32 @emu_store_regd(i32 %594)
  %596 = load i32*, i32** %4, align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 3
  %598 = load i32, i32* %597, align 4
  %599 = and i32 %598, 15
  %600 = call i32 @emu_store_regd(i32 %599)
  %601 = load i32*, i32** %4, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 1
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %604
  %606 = load i8*, i8** %605, align 8
  %607 = bitcast i8* %606 to i32 (%struct.pt_regs*, i32, i32)*
  %608 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %609 = load i32*, i32** %4, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 3
  %611 = load i32, i32* %610, align 4
  %612 = ashr i32 %611, 4
  %613 = load i32*, i32** %4, align 8
  %614 = getelementptr inbounds i32, i32* %613, i64 3
  %615 = load i32, i32* %614, align 4
  %616 = and i32 %615, 15
  %617 = call i32 %607(%struct.pt_regs* %608, i32 %612, i32 %616)
  store i32 %617, i32* %6, align 4
  %618 = load i32*, i32** %4, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 3
  %620 = load i32, i32* %619, align 4
  %621 = ashr i32 %620, 4
  %622 = and i32 %621, 15
  %623 = call i32 @emu_load_regd(i32 %622)
  %624 = load i32*, i32** %4, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 3
  %626 = load i32, i32* %625, align 4
  %627 = ashr i32 %626, 4
  %628 = and i32 %627, 15
  %629 = add nsw i32 %628, 2
  %630 = call i32 @emu_load_regd(i32 %629)
  br label %851

631:                                              ; preds = %2
  %632 = load i32*, i32** %4, align 8
  %633 = getelementptr inbounds i32, i32* %632, i64 3
  %634 = load i32, i32* %633, align 4
  %635 = and i32 %634, 32
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %631
  %638 = load i32, i32* @SIGILL, align 4
  store i32 %638, i32* %3, align 4
  br label %875

639:                                              ; preds = %631
  %640 = load i32*, i32** %4, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 3
  %642 = load i32, i32* %641, align 4
  %643 = ashr i32 %642, 4
  %644 = and i32 %643, 15
  %645 = call i32 @emu_store_rege(i32 %644)
  %646 = load i32*, i32** %4, align 8
  %647 = getelementptr inbounds i32, i32* %646, i64 3
  %648 = load i32, i32* %647, align 4
  %649 = and i32 %648, 15
  %650 = call i32 @emu_store_rege(i32 %649)
  %651 = load i32*, i32** %4, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 1
  %653 = load i32, i32* %652, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %654
  %656 = load i8*, i8** %655, align 8
  %657 = bitcast i8* %656 to i32 (%struct.pt_regs*, i32, i32)*
  %658 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %659 = load i32*, i32** %4, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 3
  %661 = load i32, i32* %660, align 4
  %662 = ashr i32 %661, 4
  %663 = load i32*, i32** %4, align 8
  %664 = getelementptr inbounds i32, i32* %663, i64 3
  %665 = load i32, i32* %664, align 4
  %666 = and i32 %665, 15
  %667 = call i32 %657(%struct.pt_regs* %658, i32 %662, i32 %666)
  store i32 %667, i32* %6, align 4
  %668 = load i32*, i32** %4, align 8
  %669 = getelementptr inbounds i32, i32* %668, i64 3
  %670 = load i32, i32* %669, align 4
  %671 = ashr i32 %670, 4
  %672 = and i32 %671, 15
  %673 = call i32 @emu_load_regd(i32 %672)
  %674 = load i32*, i32** %4, align 8
  %675 = getelementptr inbounds i32, i32* %674, i64 3
  %676 = load i32, i32* %675, align 4
  %677 = ashr i32 %676, 4
  %678 = and i32 %677, 15
  %679 = add nsw i32 %678, 2
  %680 = call i32 @emu_load_regd(i32 %679)
  br label %851

681:                                              ; preds = %2
  %682 = load i32*, i32** %4, align 8
  %683 = getelementptr inbounds i32, i32* %682, i64 3
  %684 = load i32, i32* %683, align 4
  %685 = ashr i32 %684, 4
  %686 = and i32 %685, 15
  %687 = call i32 @emu_store_rege(i32 %686)
  %688 = load i32*, i32** %4, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 3
  %690 = load i32, i32* %689, align 4
  %691 = and i32 %690, 15
  %692 = call i32 @emu_store_rege(i32 %691)
  %693 = load i32*, i32** %4, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 1
  %695 = load i32, i32* %694, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %696
  %698 = load i8*, i8** %697, align 8
  %699 = bitcast i8* %698 to i32 (%struct.pt_regs*, i32, i32)*
  %700 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %701 = load i32*, i32** %4, align 8
  %702 = getelementptr inbounds i32, i32* %701, i64 3
  %703 = load i32, i32* %702, align 4
  %704 = ashr i32 %703, 4
  %705 = load i32*, i32** %4, align 8
  %706 = getelementptr inbounds i32, i32* %705, i64 3
  %707 = load i32, i32* %706, align 4
  %708 = and i32 %707, 15
  %709 = call i32 %699(%struct.pt_regs* %700, i32 %704, i32 %708)
  store i32 %709, i32* %6, align 4
  %710 = load i32*, i32** %4, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 3
  %712 = load i32, i32* %711, align 4
  %713 = ashr i32 %712, 4
  %714 = and i32 %713, 15
  %715 = call i32 @emu_load_regd(i32 %714)
  br label %851

716:                                              ; preds = %2
  %717 = load i32*, i32** %4, align 8
  %718 = getelementptr inbounds i32, i32* %717, i64 3
  %719 = load i32, i32* %718, align 4
  %720 = and i32 %719, 2
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %722, label %724

722:                                              ; preds = %716
  %723 = load i32, i32* @SIGILL, align 4
  store i32 %723, i32* %3, align 4
  br label %875

724:                                              ; preds = %716
  %725 = load i32*, i32** %4, align 8
  %726 = getelementptr inbounds i32, i32* %725, i64 3
  %727 = load i32, i32* %726, align 4
  %728 = and i32 %727, 15
  %729 = call i32 @emu_store_regd(i32 %728)
  %730 = load i32*, i32** %4, align 8
  %731 = getelementptr inbounds i32, i32* %730, i64 3
  %732 = load i32, i32* %731, align 4
  %733 = and i32 %732, 15
  %734 = add nsw i32 %733, 2
  %735 = call i32 @emu_store_regd(i32 %734)
  %736 = load i32*, i32** %4, align 8
  %737 = getelementptr inbounds i32, i32* %736, i64 1
  %738 = load i32, i32* %737, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %739
  %741 = load i8*, i8** %740, align 8
  %742 = bitcast i8* %741 to i32 (%struct.pt_regs*, i32, i32)*
  %743 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %744 = load i32*, i32** %4, align 8
  %745 = getelementptr inbounds i32, i32* %744, i64 3
  %746 = load i32, i32* %745, align 4
  %747 = ashr i32 %746, 4
  %748 = load i32*, i32** %4, align 8
  %749 = getelementptr inbounds i32, i32* %748, i64 3
  %750 = load i32, i32* %749, align 4
  %751 = and i32 %750, 15
  %752 = call i32 %742(%struct.pt_regs* %743, i32 %747, i32 %751)
  store i32 %752, i32* %6, align 4
  %753 = load i32*, i32** %4, align 8
  %754 = getelementptr inbounds i32, i32* %753, i64 3
  %755 = load i32, i32* %754, align 4
  %756 = ashr i32 %755, 4
  %757 = and i32 %756, 15
  %758 = call i32 @emu_load_regd(i32 %757)
  br label %851

759:                                              ; preds = %2
  %760 = load i32*, i32** %4, align 8
  %761 = getelementptr inbounds i32, i32* %760, i64 3
  %762 = load i32, i32* %761, align 4
  %763 = and i32 %762, 2
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %767

765:                                              ; preds = %759
  %766 = load i32, i32* @SIGILL, align 4
  store i32 %766, i32* %3, align 4
  br label %875

767:                                              ; preds = %759
  %768 = load i32*, i32** %4, align 8
  %769 = getelementptr inbounds i32, i32* %768, i64 3
  %770 = load i32, i32* %769, align 4
  %771 = and i32 %770, 15
  %772 = call i32 @emu_store_regd(i32 %771)
  %773 = load i32*, i32** %4, align 8
  %774 = getelementptr inbounds i32, i32* %773, i64 3
  %775 = load i32, i32* %774, align 4
  %776 = and i32 %775, 15
  %777 = add nsw i32 %776, 2
  %778 = call i32 @emu_store_regd(i32 %777)
  %779 = load i32*, i32** %4, align 8
  %780 = getelementptr inbounds i32, i32* %779, i64 1
  %781 = load i32, i32* %780, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %782
  %784 = load i8*, i8** %783, align 8
  %785 = bitcast i8* %784 to i32 (%struct.pt_regs*, i32, i32)*
  %786 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %787 = load i32*, i32** %4, align 8
  %788 = getelementptr inbounds i32, i32* %787, i64 3
  %789 = load i32, i32* %788, align 4
  %790 = ashr i32 %789, 4
  %791 = load i32*, i32** %4, align 8
  %792 = getelementptr inbounds i32, i32* %791, i64 3
  %793 = load i32, i32* %792, align 4
  %794 = and i32 %793, 15
  %795 = call i32 %785(%struct.pt_regs* %786, i32 %790, i32 %794)
  store i32 %795, i32* %6, align 4
  %796 = load i32*, i32** %4, align 8
  %797 = getelementptr inbounds i32, i32* %796, i64 3
  %798 = load i32, i32* %797, align 4
  %799 = ashr i32 %798, 4
  %800 = and i32 %799, 15
  %801 = call i32 @emu_load_rege(i32 %800)
  br label %851

802:                                              ; preds = %2
  %803 = load i32*, i32** %4, align 8
  %804 = getelementptr inbounds i32, i32* %803, i64 3
  %805 = load i32, i32* %804, align 4
  %806 = and i32 %805, 15
  %807 = call i32 @emu_store_regd(i32 %806)
  %808 = load i32*, i32** %4, align 8
  %809 = getelementptr inbounds i32, i32* %808, i64 1
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %811
  %813 = load i8*, i8** %812, align 8
  %814 = bitcast i8* %813 to i32 (%struct.pt_regs*, i32, i32)*
  %815 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %816 = load i32*, i32** %4, align 8
  %817 = getelementptr inbounds i32, i32* %816, i64 3
  %818 = load i32, i32* %817, align 4
  %819 = ashr i32 %818, 4
  %820 = load i32*, i32** %4, align 8
  %821 = getelementptr inbounds i32, i32* %820, i64 3
  %822 = load i32, i32* %821, align 4
  %823 = and i32 %822, 15
  %824 = call i32 %814(%struct.pt_regs* %815, i32 %819, i32 %823)
  store i32 %824, i32* %6, align 4
  %825 = load i32*, i32** %4, align 8
  %826 = getelementptr inbounds i32, i32* %825, i64 3
  %827 = load i32, i32* %826, align 4
  %828 = ashr i32 %827, 4
  %829 = and i32 %828, 15
  %830 = call i32 @emu_load_rege(i32 %829)
  br label %851

831:                                              ; preds = %2
  %832 = load i32*, i32** %4, align 8
  %833 = getelementptr inbounds i32, i32* %832, i64 1
  %834 = load i32, i32* %833, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [155 x i8*], [101 x i8*] }>* @math_emu_b3.jump_table to [256 x i8*]*), i64 0, i64 %835
  %837 = load i8*, i8** %836, align 8
  %838 = bitcast i8* %837 to i32 (%struct.pt_regs*, i32, i32)*
  %839 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %840 = load i32*, i32** %4, align 8
  %841 = getelementptr inbounds i32, i32* %840, i64 3
  %842 = load i32, i32* %841, align 4
  %843 = ashr i32 %842, 4
  %844 = load i32*, i32** %4, align 8
  %845 = getelementptr inbounds i32, i32* %844, i64 3
  %846 = load i32, i32* %845, align 4
  %847 = and i32 %846, 15
  %848 = call i32 %838(%struct.pt_regs* %839, i32 %843, i32 %847)
  store i32 %848, i32* %6, align 4
  br label %851

849:                                              ; preds = %2
  %850 = load i32, i32* @SIGILL, align 4
  store i32 %850, i32* %3, align 4
  br label %875

851:                                              ; preds = %831, %802, %767, %724, %681, %639, %589, %554, %513, %466, %420, %396, %365, %301, %245, %175, %127, %87, %21
  %852 = load i32, i32* %6, align 4
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %874

854:                                              ; preds = %851
  %855 = load i32, i32* %6, align 4
  %856 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %857 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %856, i32 0, i32 0
  %858 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %857, i32 0, i32 0
  %859 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %858, i32 0, i32 0
  %860 = load i32, i32* %859, align 4
  %861 = or i32 %860, %855
  store i32 %861, i32* %859, align 4
  %862 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %863 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %862, i32 0, i32 0
  %864 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %863, i32 0, i32 0
  %865 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %864, i32 0, i32 0
  %866 = load i32, i32* %865, align 4
  %867 = load i32, i32* %6, align 4
  %868 = shl i32 %867, 8
  %869 = and i32 %866, %868
  %870 = icmp ne i32 %869, 0
  br i1 %870, label %871, label %873

871:                                              ; preds = %854
  %872 = load i32, i32* @SIGFPE, align 4
  store i32 %872, i32* %3, align 4
  br label %875

873:                                              ; preds = %854
  br label %874

874:                                              ; preds = %873, %851
  store i32 0, i32* %3, align 4
  br label %875

875:                                              ; preds = %874, %871, %849, %765, %722, %637, %587, %552, %511, %464, %456, %363, %173, %19
  %876 = load i32, i32* %3, align 4
  ret i32 %876
}

declare dso_local i32 @emu_store_regd(i32) #1

declare dso_local i32 @emu_load_regd(i32) #1

declare dso_local i32 @emu_store_rege(i32) #1

declare dso_local i32 @emu_load_rege(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
