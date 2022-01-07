; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_disptext_ni1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_disptext_ni1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"    Unknown display type\0A\00", align 1
@DTAGSIZE = common dso_local global i32 0, align 4
@dtaglist = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"    %s: \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"    (unknown display tag %2x): \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @disptext_ni1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disptext_ni1(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %14, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  %21 = icmp ne i32 %20, 128
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %137

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %129, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %130

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* %42, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 2
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 128
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %38
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  br label %129

57:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @DTAGSIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtaglist, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %63, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %76

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %58

76:                                               ; preds = %71, %58
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @DTAGSIZE, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dtaglist, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %6, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %6, align 8
  br label %92

92:                                               ; preds = %96, %80
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %9, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %5, align 8
  %99 = load i32, i32* %97, align 4
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  store i8 %100, i8* %101, align 1
  br label %92

103:                                              ; preds = %92
  br label %123

104:                                              ; preds = %76
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %6, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %6, align 8
  br label %111

111:                                              ; preds = %115, %104
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %9, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %5, align 8
  %118 = load i32, i32* %116, align 4
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %6, align 8
  store i8 %119, i8* %120, align 1
  br label %111

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i8*, i8** %6, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %6, align 8
  br label %129

129:                                              ; preds = %123, %54
  br label %35

130:                                              ; preds = %35
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %130, %22
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
