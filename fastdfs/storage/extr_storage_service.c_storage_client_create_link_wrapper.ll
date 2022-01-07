; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_client_create_link_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_storage_client_create_link_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_task_info = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { i32, i8*, i32 }

@g_group_name = common dso_local global i32 0, align 4
@STORAGE_STATUE_DEAL_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_task_info*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i32*)* @storage_client_create_link_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_client_create_link_wrapper(%struct.fast_task_info* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i8* %7, i8* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.fast_task_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_26__*, align 8
  %28 = alloca %struct.TYPE_26__, align 4
  %29 = alloca %struct.TYPE_26__*, align 8
  %30 = alloca %struct.TYPE_24__*, align 8
  %31 = alloca %struct.TYPE_23__*, align 8
  %32 = alloca %struct.TYPE_25__, align 8
  %33 = alloca i32, align 4
  store %struct.fast_task_info* %0, %struct.fast_task_info** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %34 = load %struct.fast_task_info*, %struct.fast_task_info** %13, align 8
  %35 = getelementptr inbounds %struct.fast_task_info, %struct.fast_task_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %30, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %31, align 8
  %40 = call %struct.TYPE_26__* @tracker_get_connection_r(i32* %26, i32* %24)
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %27, align 8
  %41 = icmp eq %struct.TYPE_26__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %11
  %43 = load i32, i32* %24, align 4
  store i32 %43, i32* %12, align 4
  br label %159

44:                                               ; preds = %11
  %45 = load i8*, i8** %19, align 8
  %46 = load i32, i32* @g_group_name, align 4
  %47 = call i64 @strcmp(i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %29, align 8
  store i32 0, i32* %33, align 4
  br label %81

50:                                               ; preds = %44
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @tracker_query_storage_update(%struct.TYPE_26__* %51, %struct.TYPE_26__* %28, i8* %52, i8* %53)
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %24, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %59 = call i32 @tracker_close_connection_ex(%struct.TYPE_26__* %58, i32 1)
  %60 = load i32, i32* %24, align 4
  store i32 %60, i32* %12, align 4
  br label %159

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @is_local_host_ip(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %33, align 4
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %33, align 4
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %33, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = call %struct.TYPE_26__* @tracker_make_connection(%struct.TYPE_26__* %28, i32* %24)
  store %struct.TYPE_26__* %72, %struct.TYPE_26__** %29, align 8
  %73 = icmp eq %struct.TYPE_26__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %76 = call i32 @tracker_close_connection(%struct.TYPE_26__* %75)
  %77 = load i32, i32* %24, align 4
  store i32 %77, i32* %12, align 4
  br label %159

78:                                               ; preds = %71
  br label %80

79:                                               ; preds = %68
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %29, align 8
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %33, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %132

84:                                               ; preds = %81
  %85 = load i32, i32* %18, align 4
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @memcpy(i8* %88, i8* %89, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %23, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i8*, i8** %15, align 8
  %100 = load i32*, i32** %23, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @storage_split_filename_ex(i8* %99, i32* %100, i32 %102, i32* %25)
  store i32 %103, i32* %24, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %84
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %107 = call i32 @tracker_close_connection(%struct.TYPE_26__* %106)
  %108 = load i32, i32* %24, align 4
  store i32 %108, i32* %12, align 4
  br label %159

109:                                              ; preds = %84
  %110 = load i32, i32* %25, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  store i32 %110, i32* %116, align 4
  %117 = load %struct.fast_task_info*, %struct.fast_task_info** %13, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = load i8*, i8** %20, align 8
  %123 = load i8*, i8** %21, align 8
  %124 = load i8*, i8** %22, align 8
  %125 = load i32*, i32** %23, align 8
  %126 = call i32 @storage_create_link_core(%struct.fast_task_info* %117, %struct.TYPE_25__* %32, i8* %118, i8* %119, i32 %121, i8* %122, i8* %123, i8* %124, i32* %125, i32 0)
  store i32 %126, i32* %24, align 4
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* @STORAGE_STATUE_DEAL_FILE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %109
  store i32 0, i32* %24, align 4
  br label %131

131:                                              ; preds = %130, %109
  br label %155

132:                                              ; preds = %81
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i8*, i8** %17, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load i8*, i8** %19, align 8
  %141 = load i8*, i8** %20, align 8
  %142 = load i8*, i8** %21, align 8
  %143 = load i8*, i8** %22, align 8
  %144 = load i32*, i32** %23, align 8
  %145 = call i32 @storage_client_create_link(%struct.TYPE_26__* %133, %struct.TYPE_26__* %134, i8* %135, i8* %136, i32 %137, i8* %138, i32 %139, i8* %140, i8* %141, i8* %142, i8* %143, i32* %144)
  store i32 %145, i32* %24, align 4
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %147 = icmp ne %struct.TYPE_26__* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %132
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @tracker_close_connection_ex(%struct.TYPE_26__* %149, i32 %152)
  br label %154

154:                                              ; preds = %148, %132
  br label %155

155:                                              ; preds = %154, %131
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %157 = call i32 @tracker_close_connection(%struct.TYPE_26__* %156)
  %158 = load i32, i32* %24, align 4
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %155, %105, %74, %57, %42
  %160 = load i32, i32* %12, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_26__* @tracker_get_connection_r(i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @tracker_query_storage_update(%struct.TYPE_26__*, %struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @tracker_close_connection_ex(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @is_local_host_ip(i32) #1

declare dso_local %struct.TYPE_26__* @tracker_make_connection(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @tracker_close_connection(%struct.TYPE_26__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @storage_split_filename_ex(i8*, i32*, i32, i32*) #1

declare dso_local i32 @storage_create_link_core(%struct.fast_task_info*, %struct.TYPE_25__*, i8*, i8*, i32, i8*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @storage_client_create_link(%struct.TYPE_26__*, %struct.TYPE_26__*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
