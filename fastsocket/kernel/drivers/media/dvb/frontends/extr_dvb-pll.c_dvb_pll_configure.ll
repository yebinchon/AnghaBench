; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dvb-pll.c_dvb_pll_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dvb-pll.c_dvb_pll_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dvb_pll_priv* }
%struct.dvb_pll_priv = type { %struct.dvb_pll_desc* }
%struct.dvb_pll_desc = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32 (%struct.dvb_frontend.0*, i32*, %struct.dvb_frontend_parameters*)* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend_parameters = type opaque
%struct.dvb_frontend_parameters.1 = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"pll: %s: freq=%d | i=%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"pll: %s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, %struct.dvb_frontend_parameters.1*)* @dvb_pll_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_pll_configure(%struct.dvb_frontend* %0, i32* %1, %struct.dvb_frontend_parameters.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dvb_frontend_parameters.1*, align 8
  %8 = alloca %struct.dvb_pll_priv*, align 8
  %9 = alloca %struct.dvb_pll_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.dvb_frontend_parameters.1* %2, %struct.dvb_frontend_parameters.1** %7, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %13, align 8
  store %struct.dvb_pll_priv* %14, %struct.dvb_pll_priv** %8, align 8
  %15 = load %struct.dvb_pll_priv*, %struct.dvb_pll_priv** %8, align 8
  %16 = getelementptr inbounds %struct.dvb_pll_priv, %struct.dvb_pll_priv* %15, i32 0, i32 0
  %17 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %16, align 8
  store %struct.dvb_pll_desc* %17, %struct.dvb_pll_desc** %9, align 8
  %18 = load %struct.dvb_frontend_parameters.1*, %struct.dvb_frontend_parameters.1** %7, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters.1, %struct.dvb_frontend_parameters.1* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %3
  %23 = load %struct.dvb_frontend_parameters.1*, %struct.dvb_frontend_parameters.1** %7, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend_parameters.1, %struct.dvb_frontend_parameters.1* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %27 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.dvb_frontend_parameters.1*, %struct.dvb_frontend_parameters.1** %7, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend_parameters.1, %struct.dvb_frontend_parameters.1* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %35 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %200

41:                                               ; preds = %30, %3
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %45 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.dvb_frontend_parameters.1*, %struct.dvb_frontend_parameters.1** %7, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend_parameters.1, %struct.dvb_frontend_parameters.1* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %53 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %51, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %63

62:                                               ; preds = %48
  br label %66

63:                                               ; preds = %61
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %42

66:                                               ; preds = %62, %42
  %67 = load i64, i64* @debug, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %71 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dvb_frontend_parameters.1*, %struct.dvb_frontend_parameters.1** %7, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend_parameters.1, %struct.dvb_frontend_parameters.1* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %79 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %69, %66
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %85 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %200

91:                                               ; preds = %82
  %92 = load %struct.dvb_frontend_parameters.1*, %struct.dvb_frontend_parameters.1** %7, align 8
  %93 = getelementptr inbounds %struct.dvb_frontend_parameters.1, %struct.dvb_frontend_parameters.1* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %96 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %94, %98
  %100 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %101 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %100, i32 0, i32 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %99, %109
  %111 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %112 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = sdiv i64 %110, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = ashr i32 %122, 8
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 255
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %131 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %141 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %140, i32 0, i32 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %151 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %150, i32 0, i32 6
  %152 = load i32 (%struct.dvb_frontend.0*, i32*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, i32*, %struct.dvb_frontend_parameters*)** %151, align 8
  %153 = icmp ne i32 (%struct.dvb_frontend.0*, i32*, %struct.dvb_frontend_parameters*)* %152, null
  br i1 %153, label %154, label %164

154:                                              ; preds = %91
  %155 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %156 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %155, i32 0, i32 6
  %157 = load i32 (%struct.dvb_frontend.0*, i32*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, i32*, %struct.dvb_frontend_parameters*)** %156, align 8
  %158 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %159 = bitcast %struct.dvb_frontend* %158 to %struct.dvb_frontend.0*
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.dvb_frontend_parameters.1*, %struct.dvb_frontend_parameters.1** %7, align 8
  %162 = bitcast %struct.dvb_frontend_parameters.1* %161 to %struct.dvb_frontend_parameters*
  %163 = call i32 %157(%struct.dvb_frontend.0* %159, i32* %160, %struct.dvb_frontend_parameters* %162)
  br label %164

164:                                              ; preds = %154, %91
  %165 = load i64, i64* @debug, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %164
  %168 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %169 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %171, i32 %174, i32 %177, i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %167, %164
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %188 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %187, i32 0, i32 4
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %186, %194
  %196 = load %struct.dvb_pll_desc*, %struct.dvb_pll_desc** %9, align 8
  %197 = getelementptr inbounds %struct.dvb_pll_desc, %struct.dvb_pll_desc* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %195, %198
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %185, %88, %38
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
