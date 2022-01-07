; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i64, i64, i64 }

@V4L2_IDENT_SAA7111A = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"decoder set input %d output %d\0A\00", align 1
@V4L2_IDENT_SAA7113 = common dso_local global i64 0, align 8
@SAA7115_COMPOSITE4 = common dso_local global i64 0, align 8
@SAA7115_COMPOSITE5 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAA7115_SVIDEO3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"now setting %s input %s output\0A\00", align 1
@SAA7115_SVIDEO0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"S-Video\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@SAA7115_IPORT_ON = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"iport on\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"iport off\00", align 1
@R_10_CHROMA_CNTL_2 = common dso_local global i32 0, align 4
@R_13_RT_X_PORT_OUT_CNTL = common dso_local global i32 0, align 4
@R_02_INPUT_CNTL_1 = common dso_local global i32 0, align 4
@R_09_LUMA_CNTL = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7114 = common dso_local global i64 0, align 8
@V4L2_IDENT_SAA7115 = common dso_local global i64 0, align 8
@R_83_X_PORT_I_O_ENA_AND_OUT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64, i64)* @saa711x_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_s_routing(%struct.v4l2_subdev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.saa711x_state*, align 8
  %11 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.saa711x_state* %13, %struct.saa711x_state** %10, align 8
  %14 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %15 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_IDENT_SAA7111A, align 8
  %18 = icmp sle i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 248, i32 240
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @debug, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @v4l2_dbg(i32 1, i32 %22, %struct.v4l2_subdev* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %27)
  %29 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %30 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_IDENT_SAA7113, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @SAA7115_COMPOSITE4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @SAA7115_COMPOSITE5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %179

45:                                               ; preds = %38, %4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @SAA7115_SVIDEO3, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %179

52:                                               ; preds = %45
  %53 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %54 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %60 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %179

65:                                               ; preds = %58, %52
  %66 = load i32, i32* @debug, align 4
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @SAA7115_SVIDEO0, align 8
  %70 = icmp sge i64 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @SAA7115_IPORT_ON, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %78 = call i32 @v4l2_dbg(i32 1, i32 %66, %struct.v4l2_subdev* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* %77)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %81 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %83 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @V4L2_IDENT_SAA7111A, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %65
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @SAA7115_COMPOSITE4, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = sub nsw i64 %92, 2
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %91, %87
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %96 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %97 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %98 = load i32, i32* @R_10_CHROMA_CNTL_2, align 4
  %99 = call i32 @saa711x_read(%struct.v4l2_subdev* %97, i32 %98)
  %100 = and i32 %99, 63
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %8, align 8
  %103 = and i64 %102, 192
  %104 = xor i64 %103, 64
  %105 = or i64 %101, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @saa711x_write(%struct.v4l2_subdev* %95, i32 %96, i32 %106)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %109 = load i32, i32* @R_13_RT_X_PORT_OUT_CNTL, align 4
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %111 = load i32, i32* @R_13_RT_X_PORT_OUT_CNTL, align 4
  %112 = call i32 @saa711x_read(%struct.v4l2_subdev* %110, i32 %111)
  %113 = and i32 %112, 240
  %114 = load i64, i64* %8, align 8
  %115 = and i64 %114, 2
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 10, i32 0
  %119 = or i32 %113, %118
  %120 = call i32 @saa711x_write(%struct.v4l2_subdev* %108, i32 %109, i32 %119)
  br label %121

121:                                              ; preds = %94, %65
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %123 = load i32, i32* @R_02_INPUT_CNTL_1, align 4
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %125 = load i32, i32* @R_02_INPUT_CNTL_1, align 4
  %126 = call i32 @saa711x_read(%struct.v4l2_subdev* %124, i32 %125)
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %11, align 8
  %129 = and i64 %127, %128
  %130 = load i64, i64* %7, align 8
  %131 = or i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @saa711x_write(%struct.v4l2_subdev* %122, i32 %123, i32 %132)
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %135 = load i32, i32* @R_09_LUMA_CNTL, align 4
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %137 = load i32, i32* @R_09_LUMA_CNTL, align 4
  %138 = call i32 @saa711x_read(%struct.v4l2_subdev* %136, i32 %137)
  %139 = and i32 %138, 127
  %140 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %141 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SAA7115_SVIDEO0, align 8
  %144 = icmp sge i64 %142, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 128, i32 0
  %147 = or i32 %139, %146
  %148 = call i32 @saa711x_write(%struct.v4l2_subdev* %134, i32 %135, i32 %147)
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %151 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %153 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @V4L2_IDENT_SAA7114, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %121
  %158 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %159 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @V4L2_IDENT_SAA7115, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %157, %121
  %164 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %165 = load i32, i32* @R_83_X_PORT_I_O_ENA_AND_OUT_CLK, align 4
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %167 = load i32, i32* @R_83_X_PORT_I_O_ENA_AND_OUT_CLK, align 4
  %168 = call i32 @saa711x_read(%struct.v4l2_subdev* %166, i32 %167)
  %169 = and i32 %168, 254
  %170 = sext i32 %169 to i64
  %171 = load %struct.saa711x_state*, %struct.saa711x_state** %10, align 8
  %172 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = and i64 %173, 1
  %175 = or i64 %170, %174
  %176 = trunc i64 %175 to i32
  %177 = call i32 @saa711x_write(%struct.v4l2_subdev* %164, i32 %165, i32 %176)
  br label %178

178:                                              ; preds = %163, %157
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %64, %49, %42
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8*, i8*) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
