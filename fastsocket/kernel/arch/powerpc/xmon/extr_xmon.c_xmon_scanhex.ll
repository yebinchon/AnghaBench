; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_xmon_scanhex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_xmon_scanhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@termch = common dso_local global i32 0, align 4
@N_PTREGS = common dso_local global i32 0, align 4
@regnames = common dso_local global i32* null, align 8
@xmon_regs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"regs not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid register name '%%%s'\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@tmpstr = common dso_local global i8* null, align 8
@bus_error_jmp = common dso_local global i32 0, align 4
@catch_memory_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown symbol '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scanhex(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %10 = call i32 (...) @skipbl()
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %71

13:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 7
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = call i32 (...) @inchar()
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @isalnum(i32 %20) #4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* @termch, align 4
  br label %34

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %29
  store i8 %27, i8* %30, align 1
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %14

34:                                               ; preds = %23, %14
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %36
  store i8 0, i8* %37, align 1
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %65, %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @N_PTREGS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32*, i32** @regnames, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %49 = call i64 @strcmp(i32 %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load i32*, i32** @xmon_regs, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %166

56:                                               ; preds = %51
  %57 = load i32*, i32** @xmon_regs, align 8
  %58 = bitcast i32* %57 to i64*
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %3, align 8
  store i64 %62, i64* %63, align 8
  store i32 1, i32* %2, align 4
  br label %166

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %38

68:                                               ; preds = %38
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 0, i32* %2, align 4
  br label %166

71:                                               ; preds = %1
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 48
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = call i32 (...) @inchar()
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 120
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (...) @inchar()
  store i32 %79, i32* %4, align 4
  br label %90

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @hexdigit(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @EOF, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* @termch, align 4
  %88 = load i64*, i64** %3, align 8
  store i64 0, i64* %88, align 8
  store i32 1, i32* %2, align 4
  br label %166

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %78
  br label %140

91:                                               ; preds = %71
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 36
  br i1 %93, label %94, label %139

94:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 63
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = call i32 (...) @inchar()
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i64 @isspace(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* @termch, align 4
  br label %115

105:                                              ; preds = %98
  %106 = load i32, i32* %4, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** @tmpstr, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 %107, i8* %111, align 1
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %95

115:                                              ; preds = %103, %95
  %116 = load i8*, i8** @tmpstr, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load i64*, i64** %3, align 8
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @bus_error_jmp, align 4
  %123 = call i64 @setjmp(i32 %122) #5
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  store i32 1, i32* @catch_memory_errors, align 4
  %126 = call i32 (...) @sync()
  %127 = load i8*, i8** @tmpstr, align 8
  %128 = call i64 @kallsyms_lookup_name(i8* %127)
  %129 = load i64*, i64** %3, align 8
  store i64 %128, i64* %129, align 8
  %130 = call i32 (...) @sync()
  br label %131

131:                                              ; preds = %125, %115
  store i32 0, i32* @catch_memory_errors, align 4
  %132 = load i64*, i64** %3, align 8
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i8*, i8** @tmpstr, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %136)
  store i32 0, i32* %2, align 4
  br label %166

138:                                              ; preds = %131
  store i32 1, i32* %2, align 4
  br label %166

139:                                              ; preds = %91
  br label %140

140:                                              ; preds = %139, %90
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @hexdigit(i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @EOF, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* @termch, align 4
  store i32 0, i32* %2, align 4
  br label %166

148:                                              ; preds = %140
  store i64 0, i64* %6, align 8
  br label %149

149:                                              ; preds = %158, %148
  %150 = load i64, i64* %6, align 8
  %151 = shl i64 %150, 4
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %151, %153
  store i64 %154, i64* %6, align 8
  %155 = call i32 (...) @inchar()
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @hexdigit(i32 %156)
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @EOF, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %149, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* @termch, align 4
  %164 = load i64, i64* %6, align 8
  %165 = load i64*, i64** %3, align 8
  store i64 %164, i64* %165, align 8
  store i32 1, i32* %2, align 4
  br label %166

166:                                              ; preds = %162, %146, %138, %135, %86, %68, %56, %54
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @skipbl(...) #1

declare dso_local i32 @inchar(...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @hexdigit(i32) #1

declare dso_local i64 @isspace(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #3

declare dso_local i32 @sync(...) #1

declare dso_local i64 @kallsyms_lookup_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
