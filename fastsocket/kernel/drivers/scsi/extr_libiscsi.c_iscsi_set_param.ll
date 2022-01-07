; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_set_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %12, i32 0, i32 0
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %10, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 9
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  store %struct.iscsi_session* %17, %struct.iscsi_session** %11, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %194 [
    i32 153, label %19
    i32 162, label %24
    i32 146, label %29
    i32 131, label %34
    i32 136, label %39
    i32 134, label %44
    i32 143, label %49
    i32 142, label %54
    i32 151, label %59
    i32 158, label %64
    i32 148, label %69
    i32 144, label %74
    i32 149, label %79
    i32 152, label %84
    i32 145, label %89
    i32 139, label %94
    i32 157, label %99
    i32 155, label %104
    i32 154, label %109
    i32 129, label %114
    i32 128, label %119
    i32 141, label %124
    i32 140, label %129
    i32 132, label %134
    i32 133, label %139
    i32 130, label %144
    i32 137, label %149
    i32 138, label %154
    i32 150, label %159
    i32 147, label %164
    i32 160, label %169
    i32 161, label %174
    i32 159, label %179
    i32 135, label %184
    i32 156, label %189
  ]

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 25
  %23 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %22)
  br label %197

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 24
  %28 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %27)
  br label %197

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 23
  %33 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %32)
  br label %197

34:                                               ; preds = %4
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %37 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %36, i32 0, i32 22
  %38 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %37)
  br label %197

39:                                               ; preds = %4
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 8
  %43 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %42)
  br label %197

44:                                               ; preds = %4
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 7
  %48 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %47)
  br label %197

49:                                               ; preds = %4
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 6
  %53 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %52)
  br label %197

54:                                               ; preds = %4
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 5
  %58 = call i32 @sscanf(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %57)
  br label %197

59:                                               ; preds = %4
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %62 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %61, i32 0, i32 4
  %63 = call i32 @sscanf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %62)
  br label %197

64:                                               ; preds = %4
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %67 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %66, i32 0, i32 3
  %68 = call i32 @sscanf(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %67)
  br label %197

69:                                               ; preds = %4
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %72 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %71, i32 0, i32 21
  %73 = call i32 @sscanf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %72)
  br label %197

74:                                               ; preds = %4
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %77 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %76, i32 0, i32 20
  %78 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %77)
  br label %197

79:                                               ; preds = %4
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %82 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %81, i32 0, i32 19
  %83 = call i32 @sscanf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %82)
  br label %197

84:                                               ; preds = %4
  %85 = load i8*, i8** %8, align 8
  %86 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %87 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %86, i32 0, i32 18
  %88 = call i32 @sscanf(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %87)
  br label %197

89:                                               ; preds = %4
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %92 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %91, i32 0, i32 17
  %93 = call i32 @sscanf(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %92)
  br label %197

94:                                               ; preds = %4
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %97 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %96, i32 0, i32 16
  %98 = call i32 @sscanf(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %97)
  br label %197

99:                                               ; preds = %4
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %102 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %101, i32 0, i32 15
  %103 = call i32 @sscanf(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %102)
  br label %197

104:                                              ; preds = %4
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %107 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %106, i32 0, i32 14
  %108 = call i32 @sscanf(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %107)
  br label %197

109:                                              ; preds = %4
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %112 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %111, i32 0, i32 2
  %113 = call i32 @sscanf(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %112)
  br label %197

114:                                              ; preds = %4
  %115 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %116 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %115, i32 0, i32 13
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @iscsi_switch_str_param(i32* %116, i8* %117)
  store i32 %118, i32* %5, align 4
  br label %198

119:                                              ; preds = %4
  %120 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %121 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %120, i32 0, i32 12
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @iscsi_switch_str_param(i32* %121, i8* %122)
  store i32 %123, i32* %5, align 4
  br label %198

124:                                              ; preds = %4
  %125 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %126 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %125, i32 0, i32 11
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @iscsi_switch_str_param(i32* %126, i8* %127)
  store i32 %128, i32* %5, align 4
  br label %198

129:                                              ; preds = %4
  %130 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %131 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %130, i32 0, i32 10
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @iscsi_switch_str_param(i32* %131, i8* %132)
  store i32 %133, i32* %5, align 4
  br label %198

134:                                              ; preds = %4
  %135 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %136 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %135, i32 0, i32 9
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @iscsi_switch_str_param(i32* %136, i8* %137)
  store i32 %138, i32* %5, align 4
  br label %198

139:                                              ; preds = %4
  %140 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %141 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %140, i32 0, i32 8
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @iscsi_switch_str_param(i32* %141, i8* %142)
  store i32 %143, i32* %5, align 4
  br label %198

144:                                              ; preds = %4
  %145 = load i8*, i8** %8, align 8
  %146 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %147 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %146, i32 0, i32 7
  %148 = call i32 @sscanf(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %147)
  br label %197

149:                                              ; preds = %4
  %150 = load i8*, i8** %8, align 8
  %151 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %152 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %151, i32 0, i32 1
  %153 = call i32 @sscanf(i8* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %152)
  br label %197

154:                                              ; preds = %4
  %155 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %156 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %155, i32 0, i32 0
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @iscsi_switch_str_param(i32* %156, i8* %157)
  store i32 %158, i32* %5, align 4
  br label %198

159:                                              ; preds = %4
  %160 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %161 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %160, i32 0, i32 6
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @iscsi_switch_str_param(i32* %161, i8* %162)
  store i32 %163, i32* %5, align 4
  br label %198

164:                                              ; preds = %4
  %165 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %166 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %165, i32 0, i32 5
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @iscsi_switch_str_param(i32* %166, i8* %167)
  store i32 %168, i32* %5, align 4
  br label %198

169:                                              ; preds = %4
  %170 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %171 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %170, i32 0, i32 4
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @iscsi_switch_str_param(i32* %171, i8* %172)
  store i32 %173, i32* %5, align 4
  br label %198

174:                                              ; preds = %4
  %175 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %176 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %175, i32 0, i32 3
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 @iscsi_switch_str_param(i32* %176, i8* %177)
  store i32 %178, i32* %5, align 4
  br label %198

179:                                              ; preds = %4
  %180 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %181 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %180, i32 0, i32 2
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @iscsi_switch_str_param(i32* %181, i8* %182)
  store i32 %183, i32* %5, align 4
  br label %198

184:                                              ; preds = %4
  %185 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %186 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %185, i32 0, i32 1
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @iscsi_switch_str_param(i32* %186, i8* %187)
  store i32 %188, i32* %5, align 4
  br label %198

189:                                              ; preds = %4
  %190 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %191 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %190, i32 0, i32 0
  %192 = load i8*, i8** %8, align 8
  %193 = call i32 @iscsi_switch_str_param(i32* %191, i8* %192)
  store i32 %193, i32* %5, align 4
  br label %198

194:                                              ; preds = %4
  %195 = load i32, i32* @ENOSYS, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %5, align 4
  br label %198

197:                                              ; preds = %149, %144, %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %197, %194, %189, %184, %179, %174, %169, %164, %159, %154, %139, %134, %129, %124, %119, %114
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @iscsi_switch_str_param(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
