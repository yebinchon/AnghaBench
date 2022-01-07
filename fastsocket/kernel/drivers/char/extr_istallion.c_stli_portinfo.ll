; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_portinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.seq_file = type { i32 }
%struct.stlibrd = type { i32 }
%struct.stliport = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@BST_STARTED = common dso_local global i32 0, align 4
@stli_comstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"2681\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SC26198\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CD1400\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%d: uart:%s \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"tx:%d rx:%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" fe:%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" pe:%d\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" brk:%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" oe:%d\00", align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"RTS\00", align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"CTS\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"DTR\00", align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"DCD\00", align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"DSR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.stlibrd*, %struct.stliport*, i32)* @stli_portinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_portinfo(%struct.seq_file* %0, %struct.stlibrd* %1, %struct.stliport* %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.stlibrd*, align 8
  %7 = alloca %struct.stliport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.stlibrd* %1, %struct.stlibrd** %6, align 8
  store %struct.stliport* %2, %struct.stliport** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.stliport*, %struct.stliport** %7, align 8
  %13 = call i32 @stli_portcmdstats(i32* null, %struct.stliport* %12)
  store i32 %13, i32* %10, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %14 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %15 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BST_STARTED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 0), align 8
  switch i32 %21, label %24 [
    i32 0, label %22
    i32 1, label %23
  ]

22:                                               ; preds = %20
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %25

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %25

25:                                               ; preds = %24, %23, %22
  br label %26

26:                                               ; preds = %25, %4
  %27 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8 signext %29, i8* %30)
  %32 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %33 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BST_STARTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %130

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %130

41:                                               ; preds = %38
  %42 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 7), align 8
  %44 = trunc i64 %43 to i32
  %45 = trunc i32 %44 to i8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 6), align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8 signext %45, i32 %47)
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 5), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 5), align 8
  %54 = trunc i64 %53 to i32
  %55 = trunc i32 %54 to i8
  %56 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8 signext %55)
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 4), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 4), align 8
  %63 = trunc i64 %62 to i32
  %64 = trunc i32 %63 to i8
  %65 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8 signext %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 3), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 3), align 8
  %72 = trunc i64 %71 to i32
  %73 = trunc i32 %72 to i8
  %74 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8 signext %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 2), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 2), align 8
  %81 = trunc i64 %80 to i32
  %82 = trunc i32 %81 to i8
  %83 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8 signext %82)
  br label %84

84:                                               ; preds = %78, %75
  store i8 32, i8* %11, align 1
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 1), align 4
  %86 = load i32, i32* @TIOCM_RTS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %91 = load i8, i8* %11, align 1
  %92 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8 signext %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i8 124, i8* %11, align 1
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 1), align 4
  %95 = load i32, i32* @TIOCM_CTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %100 = load i8, i8* %11, align 1
  %101 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8 signext %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i8 124, i8* %11, align 1
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 1), align 4
  %104 = load i32, i32* @TIOCM_DTR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %109 = load i8, i8* %11, align 1
  %110 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8 signext %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  store i8 124, i8* %11, align 1
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 1), align 4
  %113 = load i32, i32* @TIOCM_CD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %118 = load i8, i8* %11, align 1
  %119 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8 signext %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store i8 124, i8* %11, align 1
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stli_comstats, i32 0, i32 1), align 4
  %122 = load i32, i32* @TIOCM_DSR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %127 = load i8, i8* %11, align 1
  %128 = call i32 (%struct.seq_file*, i8*, i8, ...) @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8 signext %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  store i8 124, i8* %11, align 1
  br label %129

129:                                              ; preds = %125, %120
  br label %130

130:                                              ; preds = %129, %38, %26
  %131 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %132 = call i32 @seq_putc(%struct.seq_file* %131, i8 signext 10)
  ret void
}

declare dso_local i32 @stli_portcmdstats(i32*, %struct.stliport*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 signext, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
