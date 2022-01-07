; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prbearer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prbearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"    octet 3  \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"    octet 4  \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"    octet 4.1 \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"    octet 5%c \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"    octet 6  \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"    octet 7  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @prbearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prbearer(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  store i32* %9, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %5, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %16, align 4
  %19 = call i32 @prbits(i8* %15, i32 %18, i32 8, i32 8)
  %20 = load i8*, i8** %5, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  store i8 10, i8* %23, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %5, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @prbits(i8* %30, i32 %32, i32 8, i32 8)
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 10, i8* %37, align 1
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  %41 = load i32, i32* %39, align 4
  %42 = and i32 %41, 31
  %43 = icmp eq i32 %42, 24
  br i1 %43, label %44, label %60

44:                                               ; preds = %2
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %4, align 8
  %53 = load i32, i32* %51, align 4
  %54 = call i32 @prbits(i8* %50, i32 %53, i32 8, i32 8)
  %55 = load i8*, i8** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  store i8 10, i8* %58, align 1
  br label %60

60:                                               ; preds = %44, %2
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 96
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  store i8 32, i8* %6, align 1
  br label %66

66:                                               ; preds = %91, %65
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %6, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %5, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @prbits(i8* %74, i32 %76, i32 8, i32 8)
  %78 = load i8*, i8** %5, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %5, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  store i8 10, i8* %81, align 1
  %83 = load i8, i8* %6, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %87

86:                                               ; preds = %66
  store i8 97, i8* %6, align 1
  br label %90

87:                                               ; preds = %66
  %88 = load i8, i8* %6, align 1
  %89 = add i8 %88, 1
  store i8 %89, i8* %6, align 1
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %4, align 8
  %94 = load i32, i32* %92, align 4
  %95 = and i32 %94, 128
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %66, label %98

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 96
  %103 = icmp eq i32 %102, 64
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i8*, i8** %5, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %5, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %4, align 8
  %113 = load i32, i32* %111, align 4
  %114 = call i32 @prbits(i8* %110, i32 %113, i32 8, i32 8)
  %115 = load i8*, i8** %5, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %5, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %5, align 8
  store i8 10, i8* %118, align 1
  br label %120

120:                                              ; preds = %104, %99
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 96
  %124 = icmp eq i32 %123, 96
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i8*, i8** %5, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %5, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %4, align 8
  %134 = load i32, i32* %132, align 4
  %135 = call i32 @prbits(i8* %131, i32 %134, i32 8, i32 8)
  %136 = load i8*, i8** %5, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %5, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  store i8 10, i8* %139, align 1
  br label %141

141:                                              ; preds = %125, %120
  %142 = load i8*, i8** %5, align 8
  %143 = load i8*, i8** %3, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  ret i32 %147
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @prbits(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
