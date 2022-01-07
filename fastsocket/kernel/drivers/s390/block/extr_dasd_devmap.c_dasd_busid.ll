; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_busid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@DASD_IPLDEV = common dso_local global i32 0, align 4
@ipl_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IPL_TYPE_CCW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"The IPL device is not a CCW device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32*, i32*)* @dasd_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_busid(i8** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @DASD_IPLDEV, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @DASD_IPLDEV, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = call i64 @strncmp(i32 %12, i8* %14, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_info, i32 0, i32 0), align 8
  %21 = load i64, i64* @IPL_TYPE_CCW, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %168

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_info, i32 0, i32 1, i32 0, i32 0, i32 0), align 8
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_info, i32 0, i32 1, i32 0, i32 0, i32 1), align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @DASD_IPLDEV, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %35, align 8
  store i32 0, i32* %5, align 4
  br label %168

39:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 48
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 120
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %54, align 8
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %46, %39
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @isxdigit(i8 signext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %168

67:                                               ; preds = %57
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8**, i8*** %6, align 8
  %71 = call i32 @simple_strtoul(i8* %69, i8** %70, i32 16)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i8**, i8*** %6, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 46
  br i1 %80, label %81, label %95

81:                                               ; preds = %74, %67
  %82 = load i32*, i32** %8, align 8
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %87, 65535
  br i1 %88, label %89, label %92

89:                                               ; preds = %86, %81
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %168

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  store i32 0, i32* %5, align 4
  br label %168

95:                                               ; preds = %74
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 255
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %168

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i8**, i8*** %6, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %107, align 8
  %110 = load i8**, i8*** %6, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @isxdigit(i8 signext %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %104
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %168

119:                                              ; preds = %104
  %120 = load i8**, i8*** %6, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i8**, i8*** %6, align 8
  %123 = call i32 @simple_strtoul(i8* %121, i8** %122, i32 16)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %10, align 4
  %128 = icmp sgt i32 %127, 255
  br i1 %128, label %137, label %129

129:                                              ; preds = %126
  %130 = load i8**, i8*** %6, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %130, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 46
  br i1 %136, label %137, label %140

137:                                              ; preds = %129, %126, %119
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %168

140:                                              ; preds = %129
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i8**, i8*** %6, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @isxdigit(i8 signext %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %140
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %168

152:                                              ; preds = %140
  %153 = load i8**, i8*** %6, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = load i8**, i8*** %6, align 8
  %156 = call i32 @simple_strtoul(i8* %154, i8** %155, i32 16)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %10, align 4
  %161 = icmp sgt i32 %160, 65535
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %152
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %10, align 4
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %165, %162, %149, %137, %116, %101, %92, %89, %64, %27, %23
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
