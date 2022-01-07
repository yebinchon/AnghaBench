; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_parse_parameter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_parse_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@PARM_DIR = common dso_local global i8* null, align 8
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"No value for '%s' parameter specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Using default: %s\0A\00", align 1
@PARM_DIR_DFLT = common dso_local global i8* null, align 8
@PARM_PART = common dso_local global i8* null, align 8
@PARM_MEM = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid value for '%s' parameter specified\0A\00", align 1
@PARM_COMP = common dso_local global i8* null, align 8
@PARM_COMP_DFLT = common dso_local global i8* null, align 8
@PARM_COMP_GZIP = common dso_local global i8* null, align 8
@PARM_COMP_NONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Unknown dump compression '%s' specified!\0A\00", align 1
@PARM_DEBUG = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Using default: %d\0A\00", align 1
@PARM_DEBUG_DFLT = common dso_local global i8* null, align 8
@PARM_DEBUG_MIN = common dso_local global i8* null, align 8
@PARM_DEBUG_MAX = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [74 x i8] c"Invalid value (%i) for %s parameter specified (allowed range is %i - %i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Using default: %i\0A\00", align 1
@PARM_MODE = common dso_local global i8* null, align 8
@PARM_MODE_DFLT = common dso_local global i8* null, align 8
@PARM_MODE_INTERACT = common dso_local global i8* null, align 8
@PARM_MODE_INTERACT_NUM = common dso_local global i32 0, align 4
@PARM_MODE_AUTO = common dso_local global i8* null, align 8
@PARM_MODE_AUTO_NUM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Unknown dump mode: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_parameter(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strtok(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %177

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** @PARM_DIR, align 8
  %17 = call i64 @strcmp(i8* %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i8*, i8** @PARM_DIR, align 8
  %25 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** @PARM_DIR_DFLT, align 8
  %27 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** @PARM_DIR_DFLT, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %23, %19
  br label %176

30:                                               ; preds = %14
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** @PARM_PART, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 5), align 8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 5), align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i8*, i8** @PARM_PART, align 8
  %42 = call i32 @PRINT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 -1, i32* %2, align 4
  br label %177

43:                                               ; preds = %35
  br label %175

44:                                               ; preds = %30
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** @PARM_MEM, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** @PARM_MEM, align 8
  %55 = call i32 @PRINT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i32 -1, i32* %2, align 4
  br label %177

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strtoll(i8* %57, i8** %5, i32 0)
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 4), align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i8*, i8** @PARM_MEM, align 8
  %65 = call i32 @PRINT_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  store i32 -1, i32* %2, align 4
  br label %177

66:                                               ; preds = %56
  br label %174

67:                                               ; preds = %44
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** @PARM_COMP, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8*, i8** @PARM_COMP, align 8
  %78 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load i8*, i8** @PARM_COMP_DFLT, align 8
  %80 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** @PARM_COMP_DFLT, align 8
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  br label %99

82:                                               ; preds = %72
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %84 = load i8*, i8** @PARM_COMP_GZIP, align 8
  %85 = call i64 @strcmp(i8* %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %89 = load i8*, i8** @PARM_COMP_NONE, align 8
  %90 = call i64 @strcmp(i8* %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %94 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** @PARM_COMP_DFLT, align 8
  %96 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** @PARM_COMP_DFLT, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  br label %98

98:                                               ; preds = %92, %87, %82
  br label %99

99:                                               ; preds = %98, %76
  br label %173

100:                                              ; preds = %67
  %101 = load i8*, i8** %4, align 8
  %102 = load i8*, i8** @PARM_DEBUG, align 8
  %103 = call i64 @strcmp(i8* %101, i8* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %100
  %106 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %106, i8** %7, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i8*, i8** @PARM_DEBUG, align 8
  %111 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = load i8*, i8** @PARM_DEBUG_DFLT, align 8
  %113 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  br label %134

114:                                              ; preds = %105
  %115 = load i8*, i8** %7, align 8
  %116 = call i8* @atoi(i8* %115)
  store i8* %116, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %117 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %118 = load i8*, i8** @PARM_DEBUG_MIN, align 8
  %119 = icmp ult i8* %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %122 = load i8*, i8** @PARM_DEBUG_MAX, align 8
  %123 = icmp ugt i8* %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120, %114
  %125 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %126 = load i8*, i8** @PARM_DEBUG, align 8
  %127 = load i8*, i8** @PARM_DEBUG_MIN, align 8
  %128 = load i8*, i8** @PARM_DEBUG_MAX, align 8
  %129 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i8* %125, i8* %126, i8* %127, i8* %128)
  %130 = load i8*, i8** @PARM_DEBUG_DFLT, align 8
  %131 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** @PARM_DEBUG_DFLT, align 8
  store i8* %132, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  br label %133

133:                                              ; preds = %124, %120
  br label %134

134:                                              ; preds = %133, %109
  br label %172

135:                                              ; preds = %100
  %136 = load i8*, i8** %4, align 8
  %137 = load i8*, i8** @PARM_MODE, align 8
  %138 = call i64 @strcmp(i8* %136, i8* %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %171

140:                                              ; preds = %135
  %141 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %141, i8** %8, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i8*, i8** @PARM_MODE, align 8
  %146 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %145)
  %147 = load i8*, i8** @PARM_MODE_DFLT, align 8
  %148 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %147)
  br label %170

149:                                              ; preds = %140
  %150 = load i8*, i8** %8, align 8
  %151 = load i8*, i8** @PARM_MODE_INTERACT, align 8
  %152 = call i64 @strcmp(i8* %150, i8* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @PARM_MODE_INTERACT_NUM, align 4
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3), align 8
  br label %169

156:                                              ; preds = %149
  %157 = load i8*, i8** %8, align 8
  %158 = load i8*, i8** @PARM_MODE_AUTO, align 8
  %159 = call i64 @strcmp(i8* %157, i8* %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @PARM_MODE_AUTO_NUM, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3), align 8
  br label %168

163:                                              ; preds = %156
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %164)
  %166 = load i8*, i8** @PARM_MODE_DFLT, align 8
  %167 = call i32 (i8*, i8*, ...) @PRINT_WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %163, %161
  br label %169

169:                                              ; preds = %168, %154
  br label %170

170:                                              ; preds = %169, %144
  br label %171

171:                                              ; preds = %170, %135
  br label %172

172:                                              ; preds = %171, %134
  br label %173

173:                                              ; preds = %172, %99
  br label %174

174:                                              ; preds = %173, %66
  br label %175

175:                                              ; preds = %174, %43
  br label %176

176:                                              ; preds = %175, %29
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %63, %53, %40, %13
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @PRINT_WARN(i8*, i8*, ...) #1

declare dso_local i32 @PRINT_ERR(i8*, i8*) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
