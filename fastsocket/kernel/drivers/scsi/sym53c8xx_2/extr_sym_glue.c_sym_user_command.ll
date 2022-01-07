; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_user_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_user_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32 }
%struct.sym_usrcmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"setsync\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"settags\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"setverbose\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"setwide\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"setflag\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"resetdev\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cleardev\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"no_disc\00", align 1
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@DEBUG_ALLOC = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@DEBUG_PHASE = common dso_local global i32 0, align 4
@DEBUG_POINTER = common dso_local global i32 0, align 4
@DEBUG_QUEUE = common dso_local global i32 0, align 4
@DEBUG_RESULT = common dso_local global i32 0, align 4
@DEBUG_SCATTER = common dso_local global i32 0, align 4
@DEBUG_SCRIPT = common dso_local global i32 0, align 4
@DEBUG_TAGS = common dso_local global i32 0, align 4
@DEBUG_TIMING = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*, i32)* @sym_user_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_user_command(%struct.Scsi_Host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sym_hcb*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sym_usrcmd, align 4
  %12 = alloca %struct.sym_usrcmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = call %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host* %16)
  store %struct.sym_hcb* %17, %struct.sym_hcb** %8, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %10, align 4
  store %struct.sym_usrcmd* %11, %struct.sym_usrcmd** %12, align 8
  %20 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %21 = call i32 @memset(%struct.sym_usrcmd* %20, i32 0, i32 12)
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %24, %3
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @is_keyword(i8* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %43 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %42, i32 0, i32 0
  store i32 131, i32* %43, align 4
  br label %99

44:                                               ; preds = %36
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @is_keyword(i8* %45, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %51 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %50, i32 0, i32 0
  store i32 130, i32* %51, align 4
  br label %98

52:                                               ; preds = %44
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @is_keyword(i8* %53, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %59 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %58, i32 0, i32 0
  store i32 129, i32* %59, align 4
  br label %97

60:                                               ; preds = %52
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @is_keyword(i8* %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %63, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %67 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %66, i32 0, i32 0
  store i32 128, i32* %67, align 4
  br label %96

68:                                               ; preds = %60
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @is_keyword(i8* %69, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %75 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %74, i32 0, i32 0
  store i32 132, i32* %75, align 4
  br label %95

76:                                               ; preds = %68
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @is_keyword(i8* %77, i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %79, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %83 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %82, i32 0, i32 0
  store i32 134, i32* %83, align 4
  br label %94

84:                                               ; preds = %76
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @is_keyword(i8* %85, i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %87, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %91 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %90, i32 0, i32 0
  store i32 135, i32* %91, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %92, %89
  br label %94

94:                                               ; preds = %93, %81
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %57
  br label %98

98:                                               ; preds = %97, %49
  br label %99

99:                                               ; preds = %98, %41
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %212

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %9, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %114 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %144 [
    i32 131, label %116
    i32 130, label %116
    i32 128, label %116
    i32 132, label %116
    i32 134, label %116
    i32 135, label %116
  ]

116:                                              ; preds = %105, %105, %105, %105, %105, %105
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @SKIP_SPACES(i8* %117, i32 %118)
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @is_keyword(i8* %120, i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %122, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load i32, i32* %13, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %9, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %10, align 4
  %132 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %133 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %132, i32 0, i32 1
  store i32 -1, i32* %133, align 4
  br label %143

134:                                              ; preds = %116
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @GET_INT_ARG(i8* %135, i32 %136, i32 %137)
  %139 = load i32, i32* %14, align 4
  %140 = shl i32 1, %139
  %141 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %142 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %134, %124
  br label %144

144:                                              ; preds = %105, %143
  %145 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %146 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %189 [
    i32 129, label %148
    i32 131, label %148
    i32 130, label %148
    i32 128, label %148
    i32 132, label %158
  ]

148:                                              ; preds = %144, %144, %144, %144
  %149 = load i8*, i8** %9, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @SKIP_SPACES(i8* %149, i32 %150)
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %155 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @GET_INT_ARG(i8* %152, i32 %153, i32 %156)
  br label %190

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %180, %158
  %160 = load i32, i32* %10, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %159
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @SKIP_SPACES(i8* %163, i32 %164)
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @is_keyword(i8* %166, i32 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %168, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %162
  %171 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %174 = getelementptr inbounds %struct.sym_usrcmd, %struct.sym_usrcmd* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %180

177:                                              ; preds = %162
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %212

180:                                              ; preds = %170
  %181 = load i32, i32* %13, align 4
  %182 = load i8*, i8** %9, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %9, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %10, align 4
  br label %159

188:                                              ; preds = %159
  br label %190

189:                                              ; preds = %144
  br label %190

190:                                              ; preds = %189, %188, %148
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %4, align 4
  br label %212

196:                                              ; preds = %190
  %197 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %198 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i64, i64* %15, align 8
  %201 = call i32 @spin_lock_irqsave(i32 %199, i64 %200)
  %202 = load %struct.sym_hcb*, %struct.sym_hcb** %8, align 8
  %203 = load %struct.sym_usrcmd*, %struct.sym_usrcmd** %12, align 8
  %204 = call i32 @sym_exec_user_command(%struct.sym_hcb* %202, %struct.sym_usrcmd* %203)
  %205 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %206 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i64, i64* %15, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32 %207, i64 %208)
  br label %210

210:                                              ; preds = %196
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %210, %193, %177, %102
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.sym_usrcmd*, i32, i32) #1

declare dso_local i32 @is_keyword(i8*, i32, i8*) #1

declare dso_local i32 @SKIP_SPACES(i8*, i32) #1

declare dso_local i32 @GET_INT_ARG(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @sym_exec_user_command(%struct.sym_hcb*, %struct.sym_usrcmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
