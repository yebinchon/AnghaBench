; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_icst525.c_icst525_ps_to_vco.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_icst525.c_icst525_ps_to_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icst525_params = type { i32, i32, i64, i64, i32, i32 }
%struct.icst525_vco = type { i32, i32, i32 }

@s2div = common dso_local global i64* null, align 8
@idx2s = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @icst525_ps_to_vco(%struct.icst525_params* %0, i64 %1) #0 {
  %3 = alloca %struct.icst525_vco, align 4
  %4 = alloca %struct.icst525_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca { i64, i32 }, align 8
  store %struct.icst525_params* %0, %struct.icst525_params** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 1
  %18 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %19 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 2
  %22 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %23 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  %25 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %26 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = udiv i64 1000000000, %27
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %48, %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64*, i64** @s2div, align 8
  %32 = load i64*, i64** @idx2s, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %31, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = udiv i64 %30, %38
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load i64, i64* %6, align 8
  %45 = icmp ult i64 %44, 100000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %53

47:                                               ; preds = %43, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = load i64*, i64** @idx2s, align 8
  %51 = call i32 @ARRAY_SIZE(i64* %50)
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %29, label %53

53:                                               ; preds = %48, %46
  %54 = load i32, i32* %8, align 4
  %55 = load i64*, i64** @idx2s, align 8
  %56 = call i32 @ARRAY_SIZE(i64* %55)
  %57 = icmp uge i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %143

59:                                               ; preds = %53
  %60 = load i64*, i64** @idx2s, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %68 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = udiv i64 500000000, %69
  store i64 %70, i64* %7, align 8
  %71 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %72 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %139, %59
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %77 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ule i32 %75, %78
  br i1 %79, label %80, label %142

80:                                               ; preds = %74
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = mul i64 %81, %83
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %6, align 8
  %87 = udiv i64 %86, 2
  %88 = add i64 %85, %87
  %89 = load i64, i64* %6, align 8
  %90 = udiv i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %94 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %80
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.icst525_params*, %struct.icst525_params** %4, align 8
  %100 = getelementptr inbounds %struct.icst525_params, %struct.icst525_params* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ugt i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %80
  br label %139

104:                                              ; preds = %97
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = udiv i32 %106, 2
  %108 = zext i32 %107 to i64
  %109 = add i64 %105, %108
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = udiv i64 %109, %111
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %6, align 8
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load i32, i32* %14, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %119, %104
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i32, i32* %13, align 4
  %128 = sub i32 %127, 8
  %129 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = sub i32 %130, 2
  %132 = getelementptr inbounds %struct.icst525_vco, %struct.icst525_vco* %3, i32 0, i32 2
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %142

136:                                              ; preds = %126
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %122
  br label %139

139:                                              ; preds = %138, %103
  %140 = load i32, i32* %9, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %74

142:                                              ; preds = %135, %74
  br label %143

143:                                              ; preds = %142, %58
  %144 = bitcast { i64, i32 }* %15 to i8*
  %145 = bitcast %struct.icst525_vco* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 4 %145, i64 12, i1 false)
  %146 = load { i64, i32 }, { i64, i32 }* %15, align 8
  ret { i64, i32 } %146
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
