; ModuleID = '/home/carl/AnghaBench/fastdfs/test/extr_combine_result.c_main.c'
source_filename = "/home/carl/AnghaBench/fastdfs/test/extr_combine_result.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FILE_TYPE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: %s <process_count>\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@proccess_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid proccess count: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"total_count=%d, success_count=%d, success ratio: %.2f%% time_used=%ds, avg time used: %dms, QPS=%.2f\0A\0A\00", align 1
@STAT_FILENAME_BY_FILE_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"file_type total_count success_count time_used(s) avg(ms) QPS success_ratio\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"5K\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"50K\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"200K\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"1M\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"10M\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"100M\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"IO speed = %d KB\0A\00", align 1
@STAT_FILENAME_BY_STORAGE_IP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [75 x i8] c"ip_addr  total_count success_count time_used(s) avg(ms) QPS success_ratio\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @FILE_TYPE_COUNT, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca %struct.TYPE_4__, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %185

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @atoi(i8* %31)
  store i32 %32, i32* @proccess_count, align 4
  %33 = load i32, i32* @proccess_count, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @proccess_count, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %185

39:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %40 = call i32 @combine_stat_overall(i32* %10, i32* %11, i32* %9)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = sitofp i32 %46 to double
  %48 = fmul double 1.000000e+02, %47
  %49 = load i32, i32* %10, align 4
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %48, %50
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi double [ %51, %45 ], [ 0.000000e+00, %52 ]
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 1000
  %61 = load i32, i32* %10, align 4
  %62 = sdiv i32 %60, %61
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %58
  %65 = phi i32 [ %62, %58 ], [ 0, %63 ]
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = sitofp i32 %70 to double
  %72 = load i32, i32* %9, align 4
  %73 = sitofp i32 %72 to double
  %74 = fdiv double %71, %73
  br label %75

75:                                               ; preds = %69, %68
  %76 = phi double [ 0.000000e+00, %68 ], [ %74, %69 ]
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42, double %54, i32 %55, i32 %65, double %76)
  %78 = load i32, i32* @STAT_FILENAME_BY_FILE_TYPE, align 4
  %79 = load i32, i32* @FILE_TYPE_COUNT, align 4
  %80 = call i64 @combine_stat_by(i32 %78, %struct.TYPE_4__* %19, i32 %79, i32* %8)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @print_stat_by(%struct.TYPE_4__* %19, i32 %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %75
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %162, %87
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %165

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @strcmp(i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 5120, i32* %13, align 4
  br label %152

101:                                              ; preds = %92
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @strcmp(i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 51200, i32* %13, align 4
  br label %151

110:                                              ; preds = %101
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @strcmp(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 204800, i32* %13, align 4
  br label %150

119:                                              ; preds = %110
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @strcmp(i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 1048576, i32* %13, align 4
  br label %149

128:                                              ; preds = %119
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @strcmp(i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 10485760, i32* %13, align 4
  br label %148

137:                                              ; preds = %128
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @strcmp(i32 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  store i32 104857600, i32* %13, align 4
  br label %147

146:                                              ; preds = %137
  store i32 0, i32* %13, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %136
  br label %149

149:                                              ; preds = %148, %127
  br label %150

150:                                              ; preds = %149, %118
  br label %151

151:                                              ; preds = %150, %109
  br label %152

152:                                              ; preds = %151, %100
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %153, %158
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %152
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %88

165:                                              ; preds = %88
  %166 = load i32, i32* %9, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %9, align 4
  %171 = mul nsw i32 %170, 1024
  %172 = sdiv i32 %169, %171
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %168, %165
  %175 = load i32, i32* @STAT_FILENAME_BY_STORAGE_IP, align 4
  %176 = load i32, i32* @FILE_TYPE_COUNT, align 4
  %177 = call i64 @combine_stat_by(i32 %175, %struct.TYPE_4__* %19, i32 %176, i32* %8)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0))
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @print_stat_by(%struct.TYPE_4__* %19, i32 %181)
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %179, %174
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %185

185:                                              ; preds = %184, %35, %22
  %186 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @combine_stat_overall(i32*, i32*, i32*) #2

declare dso_local i64 @combine_stat_by(i32, %struct.TYPE_4__*, i32, i32*) #2

declare dso_local i32 @print_stat_by(%struct.TYPE_4__*, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
