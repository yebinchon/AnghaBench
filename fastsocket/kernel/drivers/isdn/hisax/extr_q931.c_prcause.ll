; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prcause.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prcause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"    coding \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" location \00", align 1
@CVSIZE = common dso_local global i32 0, align 4
@cvlist = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown cause type %x!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  cause value %x : %s \0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"    diag attribute %d \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" rej %d \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" av %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @prcause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prcause(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32* %18, i32** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %6, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @prbits(i8* %24, i32 %26, i32 7, i32 2)
  %28 = load i8*, i8** %6, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i8*, i8** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @prbits(i8* %36, i32 %38, i32 4, i32 4)
  %40 = load i8*, i8** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 10, i8* %43, align 1
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @skipext(i32* %45)
  store i32* %46, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  %49 = load i32, i32* %47, align 4
  %50 = and i32 127, %49
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %66, %2
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @CVSIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvlist, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %51

69:                                               ; preds = %64, %51
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @CVSIZE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %6, align 8
  br label %93

80:                                               ; preds = %69
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvlist, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %82, i8* %88)
  %90 = load i8*, i8** %6, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %6, align 8
  br label %93

93:                                               ; preds = %80, %73
  br label %94

94:                                               ; preds = %93, %134
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = icmp ugt i32* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %135

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %4, align 8
  %103 = load i32, i32* %101, align 4
  %104 = and i32 %103, 127
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %6, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 127
  %113 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i8*, i8** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %6, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %99
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  store i8 10, i8* %122, align 1
  br label %135

124:                                              ; preds = %99
  %125 = load i8*, i8** %6, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %4, align 8
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 127
  %130 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %6, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %6, align 8
  br label %134

134:                                              ; preds = %124
  br label %94

135:                                              ; preds = %121, %98
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %3, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  ret i32 %141
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @prbits(i8*, i32, i32, i32) #1

declare dso_local i32* @skipext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
