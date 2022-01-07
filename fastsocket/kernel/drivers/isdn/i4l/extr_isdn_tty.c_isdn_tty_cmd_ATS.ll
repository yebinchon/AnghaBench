; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_cmd_ATS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_cmd_ATS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@ISDN_MODEM_NUMREG = common dso_local global i32 0, align 4
@PARSE_ERROR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.TYPE_8__*)* @isdn_tty_cmd_ATS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_tty_cmd_ATS(i8** %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = call i32 @isdn_getnum(i8** %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ISDN_MODEM_NUMREG, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @PARSE_ERROR1, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i8**, i8*** %3, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %169 [
    i32 61, label %28
    i32 46, label %59
    i32 63, label %161
  ]

28:                                               ; preds = %22
  %29 = load i8**, i8*** %3, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  %33 = load i8**, i8*** %3, align 8
  %34 = call i32 @isdn_getnum(i8** %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 255
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %28
  %41 = load i32, i32* @PARSE_ERROR1, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = call i32 @isdn_tty_check_ats(i32 %43, i32 %44, %struct.TYPE_8__* %45, %struct.TYPE_9__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @PARSE_ERROR1, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %171

59:                                               ; preds = %22
  %60 = load i8**, i8*** %3, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %61, align 8
  %64 = load i8**, i8*** %3, align 8
  %65 = call i32 @isdn_getnum(i8** %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 7
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %59
  %72 = load i32, i32* @PARSE_ERROR1, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i8**, i8*** %3, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %158 [
    i32 61, label %79
    i32 63, label %136
  ]

79:                                               ; preds = %73
  %80 = load i8**, i8*** %3, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %81, align 8
  %84 = load i8**, i8*** %3, align 8
  %85 = call i32 @isdn_getnum(i8** %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %79
  %92 = load i32, i32* @PARSE_ERROR1, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = shl i32 1, %104
  %106 = or i32 %103, %105
  store i32 %106, i32* %8, align 4
  br label %119

107:                                              ; preds = %93
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = shl i32 1, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %114, %117
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %107, %96
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = call i32 @isdn_tty_check_ats(i32 %120, i32 %121, %struct.TYPE_8__* %122, %struct.TYPE_9__* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @PARSE_ERROR1, align 4
  br label %128

128:                                              ; preds = %126, %119
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  br label %160

136:                                              ; preds = %73
  %137 = load i8**, i8*** %3, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %138, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = call i32 @isdn_tty_at_cout(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = shl i32 1, %150
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = call i32 @isdn_tty_at_cout(i8* %155, %struct.TYPE_8__* %156)
  br label %160

158:                                              ; preds = %73
  %159 = load i32, i32* @PARSE_ERROR1, align 4
  br label %160

160:                                              ; preds = %158, %136, %128
  br label %171

161:                                              ; preds = %22
  %162 = load i8**, i8*** %3, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %163, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = call i32 @isdn_tty_show_profile(i32 %166, %struct.TYPE_8__* %167)
  br label %171

169:                                              ; preds = %22
  %170 = load i32, i32* @PARSE_ERROR1, align 4
  br label %171

171:                                              ; preds = %169, %161, %160, %51
  ret i32 0
}

declare dso_local i32 @isdn_getnum(i8**) #1

declare dso_local i32 @isdn_tty_check_ats(i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @isdn_tty_at_cout(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @isdn_tty_show_profile(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
