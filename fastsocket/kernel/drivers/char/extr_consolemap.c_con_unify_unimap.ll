; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_unify_unimap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_consolemap.c_con_unify_unimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.vc_data = type { i64* }
%struct.uni_pagedir = type { i64, i32, i32*** }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@vc_cons = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.uni_pagedir*)* @con_unify_unimap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @con_unify_unimap(%struct.vc_data* %0, %struct.uni_pagedir* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.uni_pagedir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_pagedir*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.uni_pagedir* %1, %struct.uni_pagedir** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %157, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %160

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vc_cons_allocated(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %157

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vc_cons, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.uni_pagedir*
  store %struct.uni_pagedir* %31, %struct.uni_pagedir** %9, align 8
  %32 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %33 = icmp ne %struct.uni_pagedir* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %21
  %35 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %36 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %37 = icmp eq %struct.uni_pagedir* %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %40 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %43 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %34, %21
  br label %157

47:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %136, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %139

51:                                               ; preds = %48
  %52 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %53 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %52, i32 0, i32 2
  %54 = load i32***, i32**** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32**, i32*** %54, i64 %56
  %58 = load i32**, i32*** %57, align 8
  store i32** %58, i32*** %10, align 8
  %59 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %60 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %59, i32 0, i32 2
  %61 = load i32***, i32**** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32**, i32*** %61, i64 %63
  %65 = load i32**, i32*** %64, align 8
  store i32** %65, i32*** %11, align 8
  %66 = load i32**, i32*** %10, align 8
  %67 = icmp ne i32** %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %51
  %69 = load i32**, i32*** %11, align 8
  %70 = icmp ne i32** %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %136

72:                                               ; preds = %68, %51
  %73 = load i32**, i32*** %10, align 8
  %74 = icmp ne i32** %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32**, i32*** %11, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %72
  br label %139

79:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %128, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 32
  br i1 %82, label %83, label %131

83:                                               ; preds = %80
  %84 = load i32**, i32*** %10, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %83
  %91 = load i32**, i32*** %11, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %128

98:                                               ; preds = %90, %83
  %99 = load i32**, i32*** %10, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i32**, i32*** %11, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %105, %98
  br label %131

113:                                              ; preds = %105
  %114 = load i32**, i32*** %10, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i32**, i32*** %11, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @memcmp(i32* %118, i32* %123, i32 256)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %131

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %97
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %80

131:                                              ; preds = %126, %112, %80
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 32
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %139

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135, %71
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %48

139:                                              ; preds = %134, %78, %48
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 32
  br i1 %141, label %142, label %156

142:                                              ; preds = %139
  %143 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %144 = getelementptr inbounds %struct.uni_pagedir, %struct.uni_pagedir* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.uni_pagedir*, %struct.uni_pagedir** %9, align 8
  %148 = ptrtoint %struct.uni_pagedir* %147 to i64
  %149 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %150 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  store i64 %148, i64* %151, align 8
  %152 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %153 = call i32 @con_release_unimap(%struct.uni_pagedir* %152)
  %154 = load %struct.uni_pagedir*, %struct.uni_pagedir** %5, align 8
  %155 = call i32 @kfree(%struct.uni_pagedir* %154)
  store i32 1, i32* %3, align 4
  br label %161

156:                                              ; preds = %139
  br label %157

157:                                              ; preds = %156, %46, %20
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %12

160:                                              ; preds = %12
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %142
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @con_release_unimap(%struct.uni_pagedir*) #1

declare dso_local i32 @kfree(%struct.uni_pagedir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
