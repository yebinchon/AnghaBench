; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_klconflib.c_format_module_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_klconflib.c_format_module_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_BRICKTYPE_C = common dso_local global i8 0, align 1
@L1_BRICKTYPE_P = common dso_local global i8 0, align 1
@L1_BRICKTYPE_I = common dso_local global i8 0, align 1
@MODULE_FORMAT_BRIEF = common dso_local global i32 0, align 4
@MODULE_FORMAT_LCD = common dso_local global i32 0, align 4
@MODULE_FORMAT_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rack/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/bay/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_module_id(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @MODULE_GET_RACK(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call zeroext i8 @MODULE_GET_BTCHAR(i32 %12)
  store i8 %13, i8* %9, align 1
  %14 = load i8, i8* %9, align 1
  %15 = zext i8 %14 to i32
  switch i32 %15, label %22 [
    i32 135, label %16
    i32 132, label %16
    i32 129, label %18
    i32 130, label %18
    i32 131, label %18
    i32 128, label %18
    i32 133, label %20
    i32 134, label %20
  ]

16:                                               ; preds = %3, %3
  %17 = load i8, i8* @L1_BRICKTYPE_C, align 1
  store i8 %17, i8* %9, align 1
  br label %22

18:                                               ; preds = %3, %3, %3, %3
  %19 = load i8, i8* @L1_BRICKTYPE_P, align 1
  store i8 %19, i8* %9, align 1
  br label %22

20:                                               ; preds = %3, %3
  %21 = load i8, i8* @L1_BRICKTYPE_I, align 1
  store i8 %21, i8* %9, align 1
  br label %22

22:                                               ; preds = %3, %20, %18, %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @MODULE_GET_BPOS(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MODULE_FORMAT_BRIEF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MODULE_FORMAT_LCD, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @RACK_GET_CLASS(i32 %33)
  %35 = getelementptr i8, i8* %34, i64 48
  %36 = ptrtoint i8* %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @RACK_GET_GROUP(i32 %39)
  %41 = getelementptr i8, i8* %40, i64 48
  %42 = ptrtoint i8* %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @RACK_GET_NUM(i32 %45)
  %47 = getelementptr i8, i8* %46, i64 48
  %48 = ptrtoint i8* %47 to i8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8, i8* %9, align 1
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  store i8 %51, i8* %52, align 1
  br label %92

54:                                               ; preds = %28
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @MODULE_FORMAT_LONG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strcpy(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = load i8*, i8** %4, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @RACK_GET_CLASS(i32 %66)
  %68 = getelementptr i8, i8* %67, i64 48
  %69 = ptrtoint i8* %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i32, i32* %7, align 4
  %73 = call i8* @RACK_GET_GROUP(i32 %72)
  %74 = getelementptr i8, i8* %73, i64 48
  %75 = ptrtoint i8* %74 to i8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i32, i32* %7, align 4
  %79 = call i8* @RACK_GET_NUM(i32 %78)
  %80 = getelementptr i8, i8* %79, i64 48
  %81 = ptrtoint i8* %80 to i8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  store i8 %81, i8* %82, align 1
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @strcpy(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = load i8*, i8** %4, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %4, align 8
  br label %91

91:                                               ; preds = %58, %54
  br label %92

92:                                               ; preds = %91, %32
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 10
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  store i8 48, i8* %96, align 1
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @sprintf(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  ret void
}

declare dso_local i32 @MODULE_GET_RACK(i32) #1

declare dso_local zeroext i8 @MODULE_GET_BTCHAR(i32) #1

declare dso_local i32 @MODULE_GET_BPOS(i32) #1

declare dso_local i8* @RACK_GET_CLASS(i32) #1

declare dso_local i8* @RACK_GET_GROUP(i32) #1

declare dso_local i8* @RACK_GET_NUM(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
