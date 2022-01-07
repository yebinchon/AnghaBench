; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_setstd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_setstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7343_state = type { i32, i32, i32 }
%struct.adv7343_std_info = type { i32, i32, i32 }

@stdinfo = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid std or std is not supported: %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SD_STD_MASK = common dso_local global i32 0, align 4
@ADV7343_SD_MODE_REG1 = common dso_local global i32 0, align 4
@INPUT_MODE_MASK = common dso_local global i64 0, align 8
@SD_INPUT_MODE = common dso_local global i32 0, align 4
@ADV7343_MODE_SELECT_REG = common dso_local global i32 0, align 4
@ADV7343_FSC_REG0 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error setting std, write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @adv7343_setstd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_setstd(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adv7343_state*, align 8
  %7 = alloca %struct.adv7343_std_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call %struct.adv7343_state* @to_state(%struct.v4l2_subdev* %15)
  store %struct.adv7343_state* %16, %struct.adv7343_state** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %18 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i64, i64* @stdinfo, align 8
  %21 = inttoptr i64 %20 to %struct.adv7343_std_info*
  store %struct.adv7343_std_info* %21, %struct.adv7343_std_info** %7, align 8
  %22 = load i64, i64* @stdinfo, align 8
  %23 = call i32 @ARRAY_SIZE(i64 %22)
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %40, %2
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.adv7343_std_info*, %struct.adv7343_std_info** %7, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %29, i64 %31
  %33 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %24

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* @debug, align 4
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @v4l2_dbg(i32 1, i32 %48, %struct.v4l2_subdev* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %173

55:                                               ; preds = %43
  %56 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %57 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SD_STD_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.adv7343_std_info*, %struct.adv7343_std_info** %7, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %62, i64 %64
  %66 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %71 = load i32, i32* @ADV7343_SD_MODE_REG1, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @adv7343_write(%struct.v4l2_subdev* %70, i32 %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  br label %165

77:                                               ; preds = %55
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %80 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %82 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @INPUT_MODE_MASK, align 8
  %85 = trunc i64 %84 to i32
  %86 = xor i32 %85, -1
  %87 = and i32 %83, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* @SD_INPUT_MODE, align 4
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %92 = load i32, i32* @ADV7343_MODE_SELECT_REG, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @adv7343_write(%struct.v4l2_subdev* %91, i32 %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %77
  br label %165

98:                                               ; preds = %77
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %101 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.adv7343_std_info*, %struct.adv7343_std_info** %7, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %102, i64 %104
  %106 = getelementptr inbounds %struct.adv7343_std_info, %struct.adv7343_std_info* %105, i32 0, i32 2
  %107 = bitcast i32* %106 to i8*
  store i8* %107, i8** %10, align 8
  %108 = load i32, i32* @ADV7343_FSC_REG0, align 4
  store i32 %108, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %123, %98
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %130

112:                                              ; preds = %109
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i32 @adv7343_write(%struct.v4l2_subdev* %113, i32 %114, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %165

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %10, align 8
  br label %109

130:                                              ; preds = %109
  %131 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %132 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @V4L2_STD_NTSC, align 4
  %136 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %141, 3
  store i32 %142, i32* %12, align 4
  br label %153

143:                                              ; preds = %130
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @V4L2_STD_SECAM, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* %12, align 4
  %151 = or i32 %150, 4
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %149, %143
  br label %153

153:                                              ; preds = %152, %140
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %155 = load i32, i32* @ADV7343_SD_MODE_REG1, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @adv7343_write(%struct.v4l2_subdev* %154, i32 %155, i32 %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %165

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %164 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %160, %121, %97, %76
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %170 = call i32 @v4l2_err(%struct.v4l2_subdev* %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %47
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.adv7343_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @adv7343_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
