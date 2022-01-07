; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_feature_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_feature_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DASD_FEATURE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@DASD_FEATURE_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"diag\00", align 1
@DASD_FEATURE_USEDIAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"erplog\00", align 1
@DASD_FEATURE_ERPLOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"failfast\00", align 1
@DASD_FEATURE_FAILFAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%*s is not a supported device option\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"A closing parenthesis ')' is missing in the dasd= parameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @dasd_feature_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_feature_list(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 40
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8**, i8*** %5, align 8
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @DASD_FEATURE_DEFAULT, align 4
  store i32 %16, i32* %3, align 4
  br label %150

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %126
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 41
  br label %45

45:                                               ; preds = %37, %29, %21
  %46 = phi i1 [ false, %29 ], [ false, %21 ], [ %44, %37 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %21

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @DASD_FEATURE_READONLY, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %116

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @DASD_FEATURE_USEDIAG, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %115

73:                                               ; preds = %65, %62
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %114

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @DASD_FEATURE_ERPLOG, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %113

95:                                               ; preds = %87, %84
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @DASD_FEATURE_FAILFAST, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %112

106:                                              ; preds = %98, %95
  %107 = load i32, i32* %7, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %107, i8* %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %106, %102
  br label %113

113:                                              ; preds = %112, %91
  br label %114

114:                                              ; preds = %113, %80
  br label %115

115:                                              ; preds = %114, %69
  br label %116

116:                                              ; preds = %115, %58
  %117 = load i32, i32* %7, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %4, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 58
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %129

126:                                              ; preds = %116
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  br label %20

129:                                              ; preds = %125
  %130 = load i8*, i8** %4, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 41
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %141

138:                                              ; preds = %129
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %4, align 8
  br label %141

141:                                              ; preds = %138, %134
  %142 = load i8*, i8** %4, align 8
  %143 = load i8**, i8*** %5, align 8
  store i8* %142, i8** %143, align 8
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %3, align 4
  br label %150

148:                                              ; preds = %141
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %146, %13
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
