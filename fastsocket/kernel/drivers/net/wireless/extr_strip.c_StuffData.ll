; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_StuffData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_StuffData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Stuff_Magic = common dso_local global i32 0, align 4
@Stuff_CodeMask = common dso_local global i32 0, align 4
@Stuff_CountMask = common dso_local global i32 0, align 4
@Stuff_DiffZero = common dso_local global i32 0, align 4
@Stuff_MaxCount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32**)* @StuffData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @StuffData(i32* %0, i32 %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %10, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  store i32 130, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  store i32* %23, i32** %5, align 8
  br label %177

24:                                               ; preds = %4
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @Stuff_Magic, align 4
  %31 = xor i32 %29, %30
  %32 = load i32, i32* @Stuff_CodeMask, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @Stuff_Magic, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* @Stuff_CountMask, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %27, %24
  br label %41

41:                                               ; preds = %162, %40
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ult i32* %42, %43
  br i1 %44, label %45, label %163

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %153 [
    i32 130, label %47
    i32 128, label %65
    i32 129, label %79
    i32 131, label %101
  ]

47:                                               ; preds = %45
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  store i32* %48, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  store i32 128, i32* %12, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  br label %64

56:                                               ; preds = %47
  store i32 129, i32* %12, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %57, align 4
  %60 = load i32, i32* @Stuff_Magic, align 4
  %61 = xor i32 %59, %60
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %56, %53
  br label %153

65:                                               ; preds = %45
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %6, align 8
  br label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 128, %75
  %77 = call i32 @StuffData_FinishBlock(i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  br label %153

79:                                               ; preds = %45
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @Stuff_Magic, align 4
  %83 = xor i32 %81, %82
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %6, align 8
  br label %153

93:                                               ; preds = %79
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 129, %97
  %99 = call i32 @StuffData_FinishBlock(i32 %98)
  br label %153

100:                                              ; preds = %93
  store i32 131, i32* %12, align 4
  br label %101

101:                                              ; preds = %45, %100
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @Stuff_DiffZero, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32 @StuffData_FinishBlock(i32 %108)
  br label %150

110:                                              ; preds = %101
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @Stuff_Magic, align 4
  %114 = xor i32 %112, %113
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 -1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %110
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 -1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 -2
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %119
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %128, 2
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 131
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 129, i32* %12, align 4
  br label %135

135:                                              ; preds = %134, %127
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @StuffData_FinishBlock(i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 -2
  store i32* %139, i32** %11, align 8
  store i32 2, i32* %13, align 4
  store i32 129, i32* %12, align 4
  br label %149

140:                                              ; preds = %119, %110
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @Stuff_Magic, align 4
  %144 = xor i32 %142, %143
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %8, align 8
  store i32 %144, i32* %145, align 4
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %140, %135
  br label %150

150:                                              ; preds = %149, %105
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %6, align 8
  br label %153

153:                                              ; preds = %45, %150, %96, %88, %78, %64
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @Stuff_MaxCount, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %158, %159
  %161 = call i32 @StuffData_FinishBlock(i32 %160)
  br label %162

162:                                              ; preds = %157, %153
  br label %41

163:                                              ; preds = %41
  %164 = load i32, i32* %12, align 4
  %165 = icmp eq i32 %164, 130
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i32**, i32*** %9, align 8
  store i32* null, i32** %167, align 8
  br label %175

168:                                              ; preds = %163
  %169 = load i32*, i32** %11, align 8
  %170 = load i32**, i32*** %9, align 8
  store i32* %169, i32** %170, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @StuffData_FinishBlock(i32 %173)
  br label %175

175:                                              ; preds = %168, %166
  %176 = load i32*, i32** %8, align 8
  store i32* %176, i32** %5, align 8
  br label %177

177:                                              ; preds = %175, %22
  %178 = load i32*, i32** %5, align 8
  ret i32* %178
}

declare dso_local i32 @StuffData_FinishBlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
