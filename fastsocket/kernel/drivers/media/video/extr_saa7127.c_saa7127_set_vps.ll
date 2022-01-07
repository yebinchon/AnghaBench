; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_set_vps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_set_vps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i64, i32* }
%struct.saa7127_state = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Turn VPS Signal %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Set VPS data %02x %02x %02x %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*)* @saa7127_set_vps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_set_vps(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %6 = alloca %struct.saa7127_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_data* %1, %struct.v4l2_sliced_vbi_data** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.saa7127_state* %9, %struct.saa7127_state** %6, align 8
  %10 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 16
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %164

30:                                               ; preds = %22, %2
  %31 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %32 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* @debug, align 4
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %37, %struct.v4l2_subdev* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 7
  %47 = call i32 @saa7127_write(%struct.v4l2_subdev* %44, i32 84, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %50 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %36, %30
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %164

55:                                               ; preds = %51
  %56 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %62 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %71 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 9
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %80 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 10
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %89 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  store i32 %87, i32* %91, align 4
  %92 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 11
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %98 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* @debug, align 4
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %103 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %104 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %109 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %114 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %119 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %124 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %101, %struct.v4l2_subdev* %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %112, i32 %117, i32 %122, i32 %127)
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %130 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %131 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @saa7127_write(%struct.v4l2_subdev* %129, i32 85, i32 %134)
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %137 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %138 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @saa7127_write(%struct.v4l2_subdev* %136, i32 86, i32 %141)
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %144 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %145 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @saa7127_write(%struct.v4l2_subdev* %143, i32 87, i32 %148)
  %150 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %151 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %152 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @saa7127_write(%struct.v4l2_subdev* %150, i32 88, i32 %155)
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %158 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %159 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @saa7127_write(%struct.v4l2_subdev* %157, i32 89, i32 %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %55, %54, %27
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @saa7127_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
