; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_setup.c_pmac_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_setup.c_pmac_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.device_node = type { i32 }

@PMAC_FTR_GET_MB_INFO = common dso_local global i32 0, align 4
@PMAC_MB_INFO_MODEL = common dso_local global i32 0, align 4
@PMAC_MB_INFO_FLAGS = common dso_local global i32 0, align 4
@PMAC_MB_INFO_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"machine\09\09: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"PowerMac\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"motherboard\09:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"detected as\09: %d (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"pmac flags\09: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"l2-cache\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"i-cache-size\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"d-cache-size\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"L2 cache\09:\00", align 1
@has_l2cache = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"cache-unified\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" %dK unified\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c" %dK instruction\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"%s %dK data\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"ram-type\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"pmac-generation\09: %s\0A\00", align 1
@pmac_newworld = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"NewWorld\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"OldWorld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @pmac_show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmac_show_cpuinfo(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %12 = load i32, i32* @PMAC_FTR_GET_MB_INFO, align 4
  %13 = load i32, i32* @PMAC_MB_INFO_MODEL, align 4
  %14 = call i64 @pmac_call_feature(i32 %12, i32* null, i32 %13, i64 0)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PMAC_FTR_GET_MB_INFO, align 4
  %17 = load i32, i32* @PMAC_MB_INFO_FLAGS, align 4
  %18 = call i64 @pmac_call_feature(i32 %16, i32* null, i32 %17, i64 0)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @PMAC_FTR_GET_MB_INFO, align 4
  %21 = load i32, i32* @PMAC_MB_INFO_NAME, align 4
  %22 = ptrtoint i8** %8 to i64
  %23 = call i64 @pmac_call_feature(i32 %20, i32* null, i32 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %29 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %29, %struct.device_node** %3, align 8
  %30 = load %struct.device_node*, %struct.device_node** %3, align 8
  %31 = icmp ne %struct.device_node* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %26
  %33 = load %struct.device_node*, %struct.device_node** %3, align 8
  %34 = call i8* @of_get_property(%struct.device_node* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  br label %44

41:                                               ; preds = %32
  %42 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.device_node*, %struct.device_node** %3, align 8
  %46 = call i8* @of_get_property(%struct.device_node* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %5)
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %52

52:                                               ; preds = %55, %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %4, align 8
  br label %52

69:                                               ; preds = %52
  %70 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %44
  %73 = load %struct.device_node*, %struct.device_node** %3, align 8
  %74 = call i32 @of_node_put(%struct.device_node* %73)
  br label %78

75:                                               ; preds = %26
  %76 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %77 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %80, i8* %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %84)
  %86 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store %struct.device_node* %86, %struct.device_node** %3, align 8
  %87 = load %struct.device_node*, %struct.device_node** %3, align 8
  %88 = icmp eq %struct.device_node* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  store %struct.device_node* %90, %struct.device_node** %3, align 8
  br label %91

91:                                               ; preds = %89, %78
  %92 = load %struct.device_node*, %struct.device_node** %3, align 8
  %93 = icmp ne %struct.device_node* %92, null
  br i1 %93, label %94, label %152

94:                                               ; preds = %91
  %95 = load %struct.device_node*, %struct.device_node** %3, align 8
  %96 = call i8* @of_get_property(%struct.device_node* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32* null)
  %97 = bitcast i8* %96 to i32*
  store i32* %97, i32** %10, align 8
  %98 = load %struct.device_node*, %struct.device_node** %3, align 8
  %99 = call i8* @of_get_property(%struct.device_node* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %11, align 8
  %101 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %102 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i32 1, i32* @has_l2cache, align 4
  %103 = load %struct.device_node*, %struct.device_node** %3, align 8
  %104 = call i8* @of_get_property(%struct.device_node* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %94
  %107 = load i32*, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = udiv i32 %112, 1024
  %114 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %113)
  br label %138

115:                                              ; preds = %106, %94
  %116 = load i32*, i32** %10, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %120, align 4
  %122 = udiv i32 %121, 1024
  %123 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load i32*, i32** %11, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = icmp ne i32* %129, null
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0)
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %133, align 4
  %135 = udiv i32 %134, 1024
  %136 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* %132, i32 %135)
  br label %137

137:                                              ; preds = %127, %124
  br label %138

138:                                              ; preds = %137, %109
  %139 = load %struct.device_node*, %struct.device_node** %3, align 8
  %140 = call i8* @of_get_property(%struct.device_node* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32* null)
  store i8* %140, i8** %4, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %149 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %150 = load %struct.device_node*, %struct.device_node** %3, align 8
  %151 = call i32 @of_node_put(%struct.device_node* %150)
  br label %152

152:                                              ; preds = %147, %91
  %153 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %154 = load i64, i64* @pmac_newworld, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0)
  %158 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* %157)
  ret void
}

declare dso_local i64 @pmac_call_feature(i32, i32*, i32, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
