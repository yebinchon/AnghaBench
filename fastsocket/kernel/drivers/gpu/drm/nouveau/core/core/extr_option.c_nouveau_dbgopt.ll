; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_option.c_nouveau_dbgopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_option.c_nouveau_dbgopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_NOUVEAU_DEBUG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@NV_DBG_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@NV_DBG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@NV_DBG_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@NV_DBG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@NV_DBG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@NV_DBG_TRACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"paranoia\00", align 1
@NV_DBG_PARANOIA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"spam\00", align 1
@NV_DBG_SPAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_dbgopt(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* @CONFIG_NOUVEAU_DEBUG_DEFAULT, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %112, %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %117

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcspn(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %32 [
    i32 61, label %22
  ]

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @strncasecmpz(i8* %23, i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %4, align 8
  br label %112

32:                                               ; preds = %13
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @strncasecmpz(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @NV_DBG_FATAL, align 4
  store i32 %41, i32* %7, align 4
  br label %98

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @strncasecmpz(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @NV_DBG_ERROR, align 4
  store i32 %48, i32* %7, align 4
  br label %97

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @strncasecmpz(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @NV_DBG_WARN, align 4
  store i32 %55, i32* %7, align 4
  br label %96

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @strncasecmpz(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @NV_DBG_INFO, align 4
  store i32 %62, i32* %7, align 4
  br label %95

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @strncasecmpz(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @NV_DBG_DEBUG, align 4
  store i32 %69, i32* %7, align 4
  br label %94

70:                                               ; preds = %63
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @strncasecmpz(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @NV_DBG_TRACE, align 4
  store i32 %76, i32* %7, align 4
  br label %93

77:                                               ; preds = %70
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @strncasecmpz(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @NV_DBG_PARANOIA, align 4
  store i32 %83, i32* %7, align 4
  br label %92

84:                                               ; preds = %77
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @strncasecmpz(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @NV_DBG_SPAM, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %82
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %68
  br label %95

95:                                               ; preds = %94, %61
  br label %96

96:                                               ; preds = %95, %54
  br label %97

97:                                               ; preds = %96, %47
  br label %98

98:                                               ; preds = %97, %40
  br label %99

99:                                               ; preds = %98, %32
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  store i32 1, i32* %6, align 4
  br label %112

110:                                              ; preds = %99
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %119

112:                                              ; preds = %107, %29
  %113 = load i32, i32* %8, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %4, align 8
  br label %10

117:                                              ; preds = %10
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %110
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncasecmpz(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
