; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_pwc_dec23_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_pwc_dec23_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { %struct.pwc_dec23_private* }
%struct.pwc_dec23_private = type { i32, i32, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KiaraRomTable = common dso_local global i32** null, align 8
@TimonRomTable = common dso_local global i32** null, align 8
@SCALEBITS = common dso_local global i64 0, align 8
@MAX_OUTER_CROP_VALUE = common dso_local global i32 0, align 4
@pwc_crop_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_dec23_init(%struct.pwc_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pwc_dec23_private*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %14 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %13, i32 0, i32 0
  %15 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %14, align 8
  %16 = icmp eq %struct.pwc_dec23_private* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pwc_dec23_private* @kmalloc(i32 32, i32 %18)
  store %struct.pwc_dec23_private* %19, %struct.pwc_dec23_private** %12, align 8
  %20 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %21 = icmp eq %struct.pwc_dec23_private* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %167

25:                                               ; preds = %17
  %26 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %27 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %28 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %27, i32 0, i32 0
  store %struct.pwc_dec23_private* %26, %struct.pwc_dec23_private** %28, align 8
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %31 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %30, i32 0, i32 0
  %32 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %31, align 8
  store %struct.pwc_dec23_private* %32, %struct.pwc_dec23_private** %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @DEVICE_USE_CODEC3(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 24
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %46 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %45, i32 0, i32 0
  store i32 7, i32* %46, align 8
  br label %57

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %52 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %51, i32 0, i32 0
  store i32 8, i32* %52, align 8
  br label %56

53:                                               ; preds = %47
  %54 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %55 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %54, i32 0, i32 0
  store i32 6, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 5
  store i32 %62, i32* %9, align 4
  %63 = load i32**, i32*** @KiaraRomTable, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %71 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %74 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @build_table_color(i32 %69, i32 %72, i32 %75)
  %77 = load i32**, i32*** @KiaraRomTable, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %85 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %88 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @build_table_color(i32 %83, i32 %86, i32 %89)
  br label %146

91:                                               ; preds = %29
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 6
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %101 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %100, i32 0, i32 0
  store i32 7, i32* %101, align 8
  br label %112

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %107 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %106, i32 0, i32 0
  store i32 8, i32* %107, align 8
  br label %111

108:                                              ; preds = %102
  %109 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %110 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %109, i32 0, i32 0
  store i32 6, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = ashr i32 %116, 3
  store i32 %117, i32* %9, align 4
  %118 = load i32**, i32*** @TimonRomTable, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %126 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %129 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @build_table_color(i32 %124, i32 %127, i32 %130)
  %132 = load i32**, i32*** @TimonRomTable, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %140 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %143 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @build_table_color(i32 %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %112, %57
  %147 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %148 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 8, %149
  store i32 %150, i32* %10, align 4
  %151 = load i64, i64* @SCALEBITS, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = sub nsw i64 %151, %153
  %155 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %156 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* %10, align 4
  %158 = ashr i32 255, %157
  %159 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %160 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %162 = call i32 @fill_table_dc00_d800(%struct.pwc_dec23_private* %161)
  %163 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %164 = call i32 @build_subblock_pattern(%struct.pwc_dec23_private* %163)
  %165 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %12, align 8
  %166 = call i32 @build_bit_powermask_table(%struct.pwc_dec23_private* %165)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %146, %22
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.pwc_dec23_private* @kmalloc(i32, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

declare dso_local i32 @build_table_color(i32, i32, i32) #1

declare dso_local i32 @fill_table_dc00_d800(%struct.pwc_dec23_private*) #1

declare dso_local i32 @build_subblock_pattern(%struct.pwc_dec23_private*) #1

declare dso_local i32 @build_bit_powermask_table(%struct.pwc_dec23_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
