; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_string_to_ipaddr6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_string_to_ipaddr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_l3_string_to_ipaddr6(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8 x i16], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = bitcast [8 x i16]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %8, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @memset(i8* %21, i32 0, i32 16)
  br label %23

23:                                               ; preds = %112, %2
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %115

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 58)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 10)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %42, %32
  store i32 1, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %45
  %53 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %54 = call i32 @memset(i8* %53, i32 0, i32 5)
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = icmp sgt i64 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %140

64:                                               ; preds = %52
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i8* %65, i8* %66, i32 %72)
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %75 = call i32 @qeth_l3_isxdigit(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %140

80:                                               ; preds = %64
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @sscanf(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  %87 = trunc i32 %86 to i16
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [8 x i16], [8 x i16]* %16, i64 0, i64 %90
  store i16 %87, i16* %91, align 2
  br label %100

92:                                               ; preds = %80
  %93 = load i32, i32* %11, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 %94, i8* %99, align 1
  br label %100

100:                                              ; preds = %92, %85
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %115

104:                                              ; preds = %100
  br label %112

105:                                              ; preds = %45
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %140

111:                                              ; preds = %105
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %104
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %6, align 8
  store i8* %114, i8** %8, align 8
  br label %23

115:                                              ; preds = %103, %23
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = icmp sgt i32 %118, 8
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %140

123:                                              ; preds = %115
  store i32 7, i32* %12, align 4
  br label %124

124:                                              ; preds = %127, %123
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i16], [8 x i16]* %16, i64 0, i64 %130
  %132 = load i16, i16* %131, align 2
  %133 = trunc i16 %132 to i8
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %12, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 %133, i8* %138, align 1
  br label %124

139:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %120, %108, %77, %61
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @qeth_l3_isxdigit(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
