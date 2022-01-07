; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_m.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }

@IBMPC_MAP = common dso_local global i32 0, align 4
@color_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @csi_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_m(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %217, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %5, %8
  br i1 %9, label %10, label %220

10:                                               ; preds = %4
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %137 [
    i32 0, label %18
    i32 1, label %21
    i32 2, label %24
    i32 3, label %27
    i32 4, label %30
    i32 5, label %33
    i32 7, label %36
    i32 10, label %39
    i32 11, label %62
    i32 12, label %72
    i32 21, label %82
    i32 22, label %82
    i32 23, label %85
    i32 24, label %88
    i32 25, label %91
    i32 27, label %94
    i32 38, label %97
    i32 39, label %111
    i32 49, label %125
  ]

18:                                               ; preds = %10
  %19 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %20 = call i32 @default_attr(%struct.vc_data* %19)
  br label %216

21:                                               ; preds = %10
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 2
  store i32 2, i32* %23, align 8
  br label %216

24:                                               ; preds = %10
  %25 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  br label %216

27:                                               ; preds = %10
  %28 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %28, i32 0, i32 3
  store i32 1, i32* %29, align 4
  br label %216

30:                                               ; preds = %10
  %31 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 4
  store i32 1, i32* %32, align 8
  br label %216

33:                                               ; preds = %10
  %34 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 5
  store i32 1, i32* %35, align 4
  br label %216

36:                                               ; preds = %10
  %37 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 6
  store i32 1, i32* %38, align 8
  br label %216

39:                                               ; preds = %10
  %40 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %47, %44 ], [ %51, %48 ]
  %54 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %55 = call i8* @set_translate(i32 %53, %struct.vc_data* %54)
  %56 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 11
  store i8* %55, i8** %57, align 8
  %58 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 7
  store i32 0, i32* %59, align 4
  %60 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 8
  store i32 0, i32* %61, align 8
  br label %216

62:                                               ; preds = %10
  %63 = load i32, i32* @IBMPC_MAP, align 4
  %64 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %65 = call i8* @set_translate(i32 %63, %struct.vc_data* %64)
  %66 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 11
  store i8* %65, i8** %67, align 8
  %68 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 7
  store i32 1, i32* %69, align 4
  %70 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 8
  store i32 0, i32* %71, align 8
  br label %216

72:                                               ; preds = %10
  %73 = load i32, i32* @IBMPC_MAP, align 4
  %74 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %75 = call i8* @set_translate(i32 %73, %struct.vc_data* %74)
  %76 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %77 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  %78 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %79 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %78, i32 0, i32 7
  store i32 1, i32* %79, align 4
  %80 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 8
  store i32 1, i32* %81, align 8
  br label %216

82:                                               ; preds = %10, %10
  %83 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %216

85:                                               ; preds = %10
  %86 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  br label %216

88:                                               ; preds = %10
  %89 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %90 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %89, i32 0, i32 4
  store i32 0, i32* %90, align 8
  br label %216

91:                                               ; preds = %10
  %92 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %93 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %92, i32 0, i32 5
  store i32 0, i32* %93, align 4
  br label %216

94:                                               ; preds = %10
  %95 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %96 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 6
  store i32 0, i32* %96, align 8
  br label %216

97:                                               ; preds = %10
  %98 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 15
  %102 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %103 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 240
  %106 = or i32 %101, %105
  %107 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 9
  store i32 %106, i32* %108, align 4
  %109 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %110 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %109, i32 0, i32 4
  store i32 1, i32* %110, align 8
  br label %216

111:                                              ; preds = %10
  %112 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %113 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 15
  %116 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %117 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 240
  %120 = or i32 %115, %119
  %121 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %122 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %124 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %123, i32 0, i32 4
  store i32 0, i32* %124, align 8
  br label %216

125:                                              ; preds = %10
  %126 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %127 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %126, i32 0, i32 10
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 240
  %130 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %131 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 15
  %134 = or i32 %129, %133
  %135 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %136 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 4
  br label %216

137:                                              ; preds = %10
  %138 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %139 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 30
  br i1 %145, label %146, label %175

146:                                              ; preds = %137
  %147 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %148 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp sle i32 %153, 37
  br i1 %154, label %155, label %175

155:                                              ; preds = %146
  %156 = load i32*, i32** @color_table, align 8
  %157 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %158 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 30
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %156, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %169 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %168, i32 0, i32 9
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 240
  %172 = or i32 %167, %171
  %173 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %174 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 4
  br label %215

175:                                              ; preds = %146, %137
  %176 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %177 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp sge i32 %182, 40
  br i1 %183, label %184, label %214

184:                                              ; preds = %175
  %185 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %186 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp sle i32 %191, 47
  br i1 %192, label %193, label %214

193:                                              ; preds = %184
  %194 = load i32*, i32** @color_table, align 8
  %195 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %196 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %201, 40
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %194, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 4
  %207 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %208 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 15
  %211 = or i32 %206, %210
  %212 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %213 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %212, i32 0, i32 9
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %193, %184, %175
  br label %215

215:                                              ; preds = %214, %155
  br label %216

216:                                              ; preds = %215, %125, %111, %97, %94, %91, %88, %85, %82, %72, %62, %52, %36, %33, %30, %27, %24, %21, %18
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %3, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %3, align 4
  br label %4

220:                                              ; preds = %4
  %221 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %222 = call i32 @update_attr(%struct.vc_data* %221)
  ret void
}

declare dso_local i32 @default_attr(%struct.vc_data*) #1

declare dso_local i8* @set_translate(i32, %struct.vc_data*) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
