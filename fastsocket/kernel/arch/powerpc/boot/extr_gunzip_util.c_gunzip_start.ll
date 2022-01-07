; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_gunzip_util.c_gunzip_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_gunzip_util.c_gunzip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gunzip_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"insufficient scratch space for gunzip\0A\0D\00", align 1
@Z_DEFLATED = common dso_local global i8 0, align 1
@RESERVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad gzipped data\0A\0D\00", align 1
@EXTRA_FIELD = common dso_local global i32 0, align 4
@ORIG_NAME = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@HEAD_CRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"gunzip_start: ran out of data in header\0A\0D\00", align 1
@MAX_WBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"inflateInit2 returned %d\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gunzip_start(%struct.gunzip_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gunzip_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gunzip_state* %0, %struct.gunzip_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %13 = call i32 @memset(%struct.gunzip_state* %12, i32 0, i32 32)
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 31
  br i1 %18, label %19, label %134

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 139
  br i1 %24, label %25, label %134

25:                                               ; preds = %19
  %26 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %27 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %30 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = call i32 (...) @zlib_inflate_workspacesize()
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %25
  store i32 10, i32* %8, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @Z_DEFLATED, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @RESERVED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %37
  %55 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @EXTRA_FIELD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 10
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 12, %65
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 11
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = add nsw i32 %66, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %61, %56
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ORIG_NAME, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %88, %78
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %79

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %73
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @COMMENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %105, %95
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %96

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @HEAD_CRC, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %115
  %122 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %123 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %122, i32 0, i32 0
  %124 = load i32, i32* @MAX_WBITS, align 4
  %125 = sub nsw i32 0, %124
  %126 = call i32 @zlib_inflateInit2(%struct.TYPE_2__* %123, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @Z_OK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %130, %121
  br label %134

134:                                              ; preds = %133, %19, %3
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %137 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr i8, i8* %139, i64 %141
  %143 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %144 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  store i8* %142, i8** %145, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.gunzip_state*, %struct.gunzip_state** %4, align 8
  %150 = getelementptr inbounds %struct.gunzip_state, %struct.gunzip_state* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  ret void
}

declare dso_local i32 @memset(%struct.gunzip_state*, i32, i32) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @zlib_inflateInit2(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
