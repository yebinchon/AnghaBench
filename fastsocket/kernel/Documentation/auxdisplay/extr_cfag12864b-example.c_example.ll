; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_example.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/auxdisplay/extr_cfag12864b-example.c_example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CFAG12864B_WIDTH = common dso_local global i32 0, align 4
@CFAG12864B_HEIGHT = common dso_local global i32 0, align 4
@EXAMPLES = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [17 x i8] c"Example %i/%i - \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Draw points setting bits\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Clear the LCD\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Draw rows formatting a [128*64] matrix\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Fill the lcd\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Draw columns unsetting bits\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Do negative not-ing all bits\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c" - [Press Enter]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @example to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %8 = load i32, i32* @CFAG12864B_WIDTH, align 4
  %9 = load i32, i32* @CFAG12864B_HEIGHT, align 4
  %10 = mul nsw i32 %8, %9
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @EXAMPLES, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %156

20:                                               ; preds = %1
  %21 = load i8, i8* %2, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @EXAMPLES, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i8, i8* %2, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %154 [
    i32 1, label %28
    i32 2, label %58
    i32 3, label %61
    i32 4, label %99
    i32 5, label %102
    i32 6, label %129
  ]

28:                                               ; preds = %20
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (...) @cfag12864b_clear()
  store i16 0, i16* %3, align 2
  br label %31

31:                                               ; preds = %52, %28
  %32 = load i16, i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = load i32, i32* @CFAG12864B_WIDTH, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  store i16 0, i16* %4, align 2
  br label %37

37:                                               ; preds = %46, %36
  %38 = load i16, i16* %4, align 2
  %39 = zext i16 %38 to i32
  %40 = load i32, i32* @CFAG12864B_HEIGHT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i16, i16* %3, align 2
  %44 = load i16, i16* %4, align 2
  %45 = call i32 @cfag12864b_set(i16 zeroext %43, i16 zeroext %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %48, 2
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %4, align 2
  br label %37

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i16, i16* %3, align 2
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %54, 2
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %3, align 2
  br label %31

57:                                               ; preds = %31
  br label %154

58:                                               ; preds = %20
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 (...) @cfag12864b_clear()
  br label %154

61:                                               ; preds = %20
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @CFAG12864B_WIDTH, align 4
  %64 = load i32, i32* @CFAG12864B_HEIGHT, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i32 @memset(i8* %13, i32 0, i32 %65)
  store i16 0, i16* %3, align 2
  br label %67

67:                                               ; preds = %94, %61
  %68 = load i16, i16* %3, align 2
  %69 = zext i16 %68 to i32
  %70 = load i32, i32* @CFAG12864B_WIDTH, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  store i16 0, i16* %4, align 2
  br label %73

73:                                               ; preds = %88, %72
  %74 = load i16, i16* %4, align 2
  %75 = zext i16 %74 to i32
  %76 = load i32, i32* @CFAG12864B_HEIGHT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i16, i16* %4, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* @CFAG12864B_WIDTH, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i16, i16* %3, align 2
  %84 = zext i16 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %13, i64 %86
  store i8 1, i8* %87, align 1
  br label %88

88:                                               ; preds = %78
  %89 = load i16, i16* %4, align 2
  %90 = zext i16 %89 to i32
  %91 = add nsw i32 %90, 2
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %4, align 2
  br label %73

93:                                               ; preds = %73
  br label %94

94:                                               ; preds = %93
  %95 = load i16, i16* %3, align 2
  %96 = add i16 %95, 1
  store i16 %96, i16* %3, align 2
  br label %67

97:                                               ; preds = %67
  %98 = call i32 @cfag12864b_format(i8* %13)
  br label %154

99:                                               ; preds = %20
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %101 = call i32 (...) @cfag12864b_fill()
  br label %154

102:                                              ; preds = %20
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i16 0, i16* %3, align 2
  br label %104

104:                                              ; preds = %123, %102
  %105 = load i16, i16* %3, align 2
  %106 = zext i16 %105 to i32
  %107 = load i32, i32* @CFAG12864B_WIDTH, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  store i16 0, i16* %4, align 2
  br label %110

110:                                              ; preds = %119, %109
  %111 = load i16, i16* %4, align 2
  %112 = zext i16 %111 to i32
  %113 = load i32, i32* @CFAG12864B_HEIGHT, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i16, i16* %3, align 2
  %117 = load i16, i16* %4, align 2
  %118 = call i32 @cfag12864b_unset(i16 zeroext %116, i16 zeroext %117)
  br label %119

119:                                              ; preds = %115
  %120 = load i16, i16* %4, align 2
  %121 = add i16 %120, 1
  store i16 %121, i16* %4, align 2
  br label %110

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122
  %124 = load i16, i16* %3, align 2
  %125 = zext i16 %124 to i32
  %126 = add nsw i32 %125, 2
  %127 = trunc i32 %126 to i16
  store i16 %127, i16* %3, align 2
  br label %104

128:                                              ; preds = %104
  br label %154

129:                                              ; preds = %20
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i16 0, i16* %3, align 2
  br label %131

131:                                              ; preds = %150, %129
  %132 = load i16, i16* %3, align 2
  %133 = zext i16 %132 to i32
  %134 = load i32, i32* @CFAG12864B_WIDTH, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  store i16 0, i16* %4, align 2
  br label %137

137:                                              ; preds = %146, %136
  %138 = load i16, i16* %4, align 2
  %139 = zext i16 %138 to i32
  %140 = load i32, i32* @CFAG12864B_HEIGHT, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i16, i16* %3, align 2
  %144 = load i16, i16* %4, align 2
  %145 = call i32 @cfag12864b_not(i16 zeroext %143, i16 zeroext %144)
  br label %146

146:                                              ; preds = %142
  %147 = load i16, i16* %4, align 2
  %148 = add i16 %147, 1
  store i16 %148, i16* %4, align 2
  br label %137

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149
  %151 = load i16, i16* %3, align 2
  %152 = add i16 %151, 1
  store i16 %152, i16* %3, align 2
  br label %131

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %20, %153, %128, %99, %97, %58, %57
  %155 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %154, %19
  %157 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %7, align 4
  switch i32 %158, label %160 [
    i32 0, label %159
    i32 1, label %159
  ]

159:                                              ; preds = %156, %156
  ret void

160:                                              ; preds = %156
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @cfag12864b_clear(...) #2

declare dso_local i32 @cfag12864b_set(i16 zeroext, i16 zeroext) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @cfag12864b_format(i8*) #2

declare dso_local i32 @cfag12864b_fill(...) #2

declare dso_local i32 @cfag12864b_unset(i16 zeroext, i16 zeroext) #2

declare dso_local i32 @cfag12864b_not(i16 zeroext, i16 zeroext) #2

declare dso_local i32 @puts(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
