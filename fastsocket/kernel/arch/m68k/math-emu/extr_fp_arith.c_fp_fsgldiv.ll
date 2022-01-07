; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fsgldiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_arith.c_fp_fsgldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32*, i64 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fsgldiv\0A\00", align 1
@FPSR_EXC_DZ = common dso_local global i32 0, align 4
@FPSR_EXC_UNFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fsgldiv(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %9 = load i32, i32* @PINSTR, align 4
  %10 = call i32 @dprint(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %12 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %13 = call i32 @fp_dyadic_check(%struct.fp_ext* %11, %struct.fp_ext* %12)
  %14 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %15 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %18 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %16, %19
  %21 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %22 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %24 = call i64 @IS_INF(%struct.fp_ext* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %28 = call i64 @IS_INF(%struct.fp_ext* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %32 = call i32 @fp_set_nan(%struct.fp_ext* %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %34, %struct.fp_ext** %3, align 8
  br label %214

35:                                               ; preds = %2
  %36 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %37 = call i64 @IS_INF(%struct.fp_ext* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %41 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %43 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %46 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %47, %struct.fp_ext** %3, align 8
  br label %214

48:                                               ; preds = %35
  %49 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %50 = call i64 @IS_ZERO(%struct.fp_ext* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %54 = call i64 @IS_ZERO(%struct.fp_ext* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %58 = call i32 @fp_set_nan(%struct.fp_ext* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %60, %struct.fp_ext** %3, align 8
  br label %214

61:                                               ; preds = %48
  %62 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %63 = call i64 @IS_ZERO(%struct.fp_ext* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* @FPSR_EXC_DZ, align 4
  %67 = call i32 @fp_set_sr(i32 %66)
  %68 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %69 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %68, i32 0, i32 1
  store i32 32767, i32* %69, align 4
  %70 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %71 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %73, %struct.fp_ext** %3, align 8
  br label %214

74:                                               ; preds = %61
  %75 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %76 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %79 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = add nsw i32 %81, 16383
  store i32 %82, i32* %6, align 4
  %83 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %84 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, -256
  store i32 %89, i32* %87, align 4
  %90 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %91 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -256
  store i32 %96, i32* %94, align 4
  %97 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %98 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %104 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %102, %108
  br i1 %109, label %110, label %160

110:                                              ; preds = %74
  %111 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %112 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %111, i32 0, i32 2
  %113 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %114 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %113, i32 0, i32 2
  %115 = bitcast %struct.TYPE_3__* %112 to { i32*, i64 }*
  %116 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %115, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = bitcast %struct.TYPE_3__* %114 to { i32*, i64 }*
  %121 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %120, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @fp_sub64(i32* %117, i64 %119, i32* %122, i64 %124)
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %129 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %135 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @fp_div64(i64 %126, i64 %127, i32 %133, i32 0, i32 %139)
  %141 = load i64, i64* %7, align 8
  %142 = lshr i64 %141, 1
  %143 = or i64 2147483648, %142
  %144 = trunc i64 %143 to i32
  %145 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %146 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %144, i32* %149, align 4
  %150 = load i64, i64* %7, align 8
  %151 = and i64 %150, 1
  %152 = load i64, i64* %8, align 8
  %153 = or i64 %151, %152
  %154 = trunc i64 %153 to i32
  %155 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %156 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 %154, i32* %159, align 4
  br label %192

160:                                              ; preds = %74
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* %8, align 8
  %163 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %164 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %170 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @fp_div64(i64 %161, i64 %162, i32 %168, i32 0, i32 %174)
  %176 = load i64, i64* %7, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %179 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 %177, i32* %182, align 4
  %183 = load i64, i64* %8, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %186 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 %184, i32* %189, align 4
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %160, %110
  %193 = load i32, i32* %6, align 4
  %194 = icmp sge i32 %193, 32767
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %197 = call i32 @fp_set_ovrflw(%struct.fp_ext* %196)
  %198 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %198, %struct.fp_ext** %3, align 8
  br label %214

199:                                              ; preds = %192
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %202 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %199
  %206 = load i32, i32* @FPSR_EXC_UNFL, align 4
  %207 = call i32 @fp_set_sr(i32 %206)
  %208 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sub nsw i32 0, %209
  %211 = call i32 @fp_denormalize(%struct.fp_ext* %208, i32 %210)
  br label %212

212:                                              ; preds = %205, %199
  %213 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %213, %struct.fp_ext** %3, align 8
  br label %214

214:                                              ; preds = %212, %195, %65, %59, %39, %33
  %215 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %215
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_dyadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_sr(i32) #1

declare dso_local i32 @fp_sub64(i32*, i64, i32*, i64) #1

declare dso_local i32 @fp_div64(i64, i64, i32, i32, i32) #1

declare dso_local i32 @fp_set_ovrflw(%struct.fp_ext*) #1

declare dso_local i32 @fp_denormalize(%struct.fp_ext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
