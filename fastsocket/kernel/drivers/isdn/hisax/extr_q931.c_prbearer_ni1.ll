; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prbearer_ni1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_q931.c_prbearer_ni1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"    octet 3  \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" Speech\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" Unrestricted digital information\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" 3.1 kHz audio\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c" Unknown information-transfer capability\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"    octet 4  \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c" 64 kbps, circuit mode\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" Packet mode\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" Unknown transfer mode\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"    octet 5  \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" Rate adaption\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"    octet 5a \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" u-law\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c" Unknown UI layer 1 protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @prbearer_ni1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prbearer_ni1(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* %10, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @prbits(i8* %18, i32 %20, i32 8, i32 8)
  %22 = load i8*, i8** %5, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* %25, align 4
  switch i32 %27, label %46 [
    i32 128, label %28
    i32 136, label %34
    i32 144, label %40
  ]

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %5, align 8
  br label %52

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %5, align 8
  br label %52

40:                                               ; preds = %2
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** %5, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %5, align 8
  br label %52

46:                                               ; preds = %2
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8*, i8** %5, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %46, %40, %34, %28
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  store i8 10, i8* %53, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i8*, i8** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @prbits(i8* %60, i32 %62, i32 8, i32 8)
  %64 = load i8*, i8** %5, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %5, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %4, align 8
  %69 = load i32, i32* %67, align 4
  switch i32 %69, label %82 [
    i32 144, label %70
    i32 192, label %76
  ]

70:                                               ; preds = %52
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i8*, i8** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %5, align 8
  br label %88

76:                                               ; preds = %52
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %79 = load i8*, i8** %5, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %5, align 8
  br label %88

82:                                               ; preds = %52
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @sprintf(i8* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i8*, i8** %5, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %5, align 8
  br label %88

88:                                               ; preds = %82, %76, %70
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  store i8 10, i8* %89, align 1
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %91, 2
  br i1 %92, label %93, label %142

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %96 = load i8*, i8** %5, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %5, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @prbits(i8* %99, i32 %101, i32 8, i32 8)
  %103 = load i8*, i8** %5, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %5, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %4, align 8
  %108 = load i32, i32* %106, align 4
  switch i32 %108, label %133 [
    i32 33, label %109
    i32 162, label %127
  ]

109:                                              ; preds = %93
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @sprintf(i8* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %112 = load i8*, i8** %5, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @sprintf(i8* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %117 = load i8*, i8** %5, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %5, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @prbits(i8* %120, i32 %122, i32 8, i32 8)
  %124 = load i8*, i8** %5, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %5, align 8
  br label %139

127:                                              ; preds = %93
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @sprintf(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %130 = load i8*, i8** %5, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %5, align 8
  br label %139

133:                                              ; preds = %93
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @sprintf(i8* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %136 = load i8*, i8** %5, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %5, align 8
  br label %139

139:                                              ; preds = %133, %127, %109
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %5, align 8
  store i8 10, i8* %140, align 1
  br label %142

142:                                              ; preds = %139, %88
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** %3, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  ret i32 %148
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @prbits(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
