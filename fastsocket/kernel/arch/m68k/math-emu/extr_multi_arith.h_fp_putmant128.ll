; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_putmant128.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_putmant128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%union.fp_mant128 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fp_ext*, %union.fp_mant128*, i32)* @fp_putmant128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fp_putmant128(%struct.fp_ext* %0, %union.fp_mant128* %1, i32 %2) #0 {
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %union.fp_mant128*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %union.fp_mant128* %1, %union.fp_mant128** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %192 [
    i32 0, label %9
    i32 1, label %46
    i32 31, label %97
    i32 32, label %150
  ]

9:                                                ; preds = %3
  %10 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %11 = bitcast %union.fp_mant128* %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %16 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %19 = bitcast %union.fp_mant128* %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 24
  %24 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %25 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %27 = bitcast %union.fp_mant128* %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %9
  %33 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %34 = bitcast %union.fp_mant128* %33 to i32**
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32, %9
  %41 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %42 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %32
  br label %192

46:                                               ; preds = %3
  %47 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %48 = bitcast %union.fp_mant128* %47 to i32**
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = call i64 asm sideeffect "lsl.l #1,$0", "={dx},0,~{dirflag},~{fpsr},~{flags}"(i64 %52) #1, !srcloc !2
  store i64 %53, i64* %7, align 8
  %54 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %55 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %60 = bitcast %union.fp_mant128* %59 to i32**
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 asm sideeffect "roxl.l #1,$0", "={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %63) #1, !srcloc !3
  store i32 %64, i32* %58, align 4
  %65 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %66 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %71 = bitcast %union.fp_mant128* %70 to i32**
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 asm sideeffect "roxl.l #1,$0", "={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %74) #1, !srcloc !4
  store i32 %75, i32* %69, align 4
  %76 = load i64, i64* %7, align 8
  %77 = lshr i64 %76, 24
  %78 = trunc i64 %77 to i32
  %79 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %80 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %82 = bitcast %union.fp_mant128* %81 to i32**
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %46
  %88 = load i64, i64* %7, align 8
  %89 = shl i64 %88, 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %46
  %92 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %93 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %87
  br label %192

97:                                               ; preds = %3
  %98 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %99 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %104 = bitcast %union.fp_mant128* %103 to i32**
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %109 = bitcast %union.fp_mant128* %108 to i32**
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 asm sideeffect "lsr.l #1,$1; roxr.l #1,$0", "={dx},{dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %107, i32 %112) #1, !srcloc !5
  store i32 %113, i32* %102, align 4
  %114 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %115 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %120 = bitcast %union.fp_mant128* %119 to i32**
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 asm sideeffect "roxr.l #1,$0", "={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %123) #1, !srcloc !6
  store i32 %124, i32* %118, align 4
  %125 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %126 = bitcast %union.fp_mant128* %125 to i32**
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = zext i32 %129 to i64
  %131 = call i64 asm sideeffect "roxr.l #1,$0", "={dx},0,~{dirflag},~{fpsr},~{flags}"(i64 %130) #1, !srcloc !7
  store i64 %131, i64* %7, align 8
  %132 = load i64, i64* %7, align 8
  %133 = lshr i64 %132, 24
  %134 = trunc i64 %133 to i32
  %135 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %136 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %138 = bitcast %union.fp_mant128* %137 to i32**
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 7
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %97
  %145 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %146 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %144, %97
  br label %192

150:                                              ; preds = %3
  %151 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %152 = bitcast %union.fp_mant128* %151 to i32**
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %157 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %155, i32* %160, align 4
  %161 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %162 = bitcast %union.fp_mant128* %161 to i32**
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %167 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 %165, i32* %170, align 4
  %171 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %172 = bitcast %union.fp_mant128* %171 to i32**
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 24
  %177 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %178 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %union.fp_mant128*, %union.fp_mant128** %5, align 8
  %180 = bitcast %union.fp_mant128* %179 to i32**
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %150
  %187 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %188 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, 1
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %186, %150
  br label %192

192:                                              ; preds = %3, %191, %149, %96, %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 639}
!3 = !{i32 707}
!4 = !{i32 790}
!5 = !{i32 977}
!6 = !{i32 1095}
!7 = !{i32 1178}
