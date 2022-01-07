; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_J.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_J.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i32, i32, i32, i16*, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @csi_J to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_J(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %168 [
    i32 0, label %8
    i32 1, label %69
    i32 3, label %116
    i32 2, label %137
  ]

8:                                                ; preds = %2
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i16*
  store i16* %21, i16** %6, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = call i32 @DO_UPDATE(%struct.vc_data* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %8
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 11
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %40, %43
  %45 = call i32 %30(%struct.vc_data* %31, i32 %34, i32 %37, i32 1, i32 %44)
  %46 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 11
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %49, align 8
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, 1
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sub i32 %58, %61
  %63 = sub i32 %62, 1
  %64 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %50(%struct.vc_data* %51, i32 %55, i32 0, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %25, %8
  br label %169

69:                                               ; preds = %2
  %70 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %74 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  %77 = ashr i32 %76, 1
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i16*
  store i16* %83, i16** %6, align 8
  %84 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %85 = call i32 @DO_UPDATE(%struct.vc_data* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %69
  %88 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %89 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %88, i32 0, i32 11
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %91, align 8
  %93 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %94 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %92(%struct.vc_data* %93, i32 0, i32 0, i32 %96, i32 %99)
  %101 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 11
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %104, align 8
  %106 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %107 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %111 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, 1
  %114 = call i32 %105(%struct.vc_data* %106, i32 %109, i32 0, i32 1, i32 %113)
  br label %115

115:                                              ; preds = %87, %69
  br label %169

116:                                              ; preds = %2
  %117 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %118 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %117, i32 0, i32 7
  %119 = load i16*, i16** %118, align 8
  %120 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %121 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %124 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = ashr i32 %125, 1
  %127 = call i32 @scr_memsetw(i16* %119, i32 %122, i32 %126)
  %128 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %129 = call i32 @set_origin(%struct.vc_data* %128)
  %130 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %131 = call i32 @CON_IS_VISIBLE(%struct.vc_data* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %116
  %134 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %135 = call i32 @update_screen(%struct.vc_data* %134)
  br label %136

136:                                              ; preds = %133, %116
  br label %137

137:                                              ; preds = %2, %136
  %138 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %139 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %142 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = mul i32 %140, %143
  store i32 %144, i32* %5, align 4
  %145 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %146 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i16*
  store i16* %149, i16** %6, align 8
  %150 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %151 = call i32 @DO_UPDATE(%struct.vc_data* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %137
  %154 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %155 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %154, i32 0, i32 11
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32)** %157, align 8
  %159 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %160 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %161 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %164 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 %158(%struct.vc_data* %159, i32 0, i32 0, i32 %162, i32 %165)
  br label %167

167:                                              ; preds = %153, %137
  br label %169

168:                                              ; preds = %2
  br label %179

169:                                              ; preds = %167, %115, %68
  %170 = load i16*, i16** %6, align 8
  %171 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %172 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = mul i32 2, %174
  %176 = call i32 @scr_memsetw(i16* %170, i32 %173, i32 %175)
  %177 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %178 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %177, i32 0, i32 9
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %169, %168
  ret void
}

declare dso_local i32 @DO_UPDATE(%struct.vc_data*) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @update_screen(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
