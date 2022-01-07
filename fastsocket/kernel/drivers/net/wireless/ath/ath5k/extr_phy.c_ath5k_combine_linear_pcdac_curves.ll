; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_combine_linear_pcdac_curves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_combine_linear_pcdac_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i32*, i32*, i32)* @ath5k_combine_linear_pcdac_curves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_combine_linear_pcdac_curves(%struct.ath5k_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %73

25:                                               ; preds = %4
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %16, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %14, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = icmp sgt i32 %60, 126
  br i1 %61, label %62, label %67

62:                                               ; preds = %25
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 126
  store i32 %66, i32* %15, align 4
  br label %71

67:                                               ; preds = %25
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32*, i32** %11, align 8
  store i32* %72, i32** %12, align 8
  store i32 64, i32* %17, align 4
  br label %98

73:                                               ; preds = %4
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %10, align 8
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %81 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %15, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %14, align 4
  %97 = load i32*, i32** %11, align 8
  store i32* %97, i32** %12, align 8
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %73, %71
  %99 = load i32, i32* %15, align 4
  %100 = sdiv i32 %99, 2
  %101 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %102 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %13, align 4
  store i32 63, i32* %18, align 4
  br label %105

105:                                              ; preds = %183, %98
  %106 = load i32, i32* %18, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %186

108:                                              ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = icmp eq i32 %109, 64
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 2, %112
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = icmp sle i32 %113, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122, %111
  store i32 0, i32* %17, align 4
  %126 = load i32*, i32** %10, align 8
  store i32* %126, i32** %12, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sdiv i32 %127, 2
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %125, %122, %108
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %136, label %157

136:                                              ; preds = %129
  %137 = load i32, i32* %17, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %143, %139
  %141 = load i32, i32* %18, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %18, align 4
  br label %140

156:                                              ; preds = %140
  br label %186

157:                                              ; preds = %136, %129
  %158 = load i32*, i32** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %17, align 4
  %164 = or i32 %162, %163
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %18, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp sgt i32 %173, 126
  br i1 %174, label %175, label %180

175:                                              ; preds = %157
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 126, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %157
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %18, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %18, align 4
  br label %105

186:                                              ; preds = %156, %105
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
