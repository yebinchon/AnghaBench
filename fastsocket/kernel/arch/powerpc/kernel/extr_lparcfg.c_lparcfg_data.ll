; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_lparcfg.c_lparcfg_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_lparcfg.c_lparcfg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s %s \0A\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@MODULE_VERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@FW_FEATURE_ISERIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"system-id\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ibm,partition-no\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"serial_number=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"system_type=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"partition_id=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @lparcfg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lparcfg_data(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load i32, i32* @MODULE_NAME, align 4
  %14 = load i32, i32* @MODULE_VERS, align 4
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14)
  %16 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i8* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* @FW_FEATURE_ISERIES, align 4
  %27 = call i64 @firmware_has_feature(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i8* @of_get_property(%struct.device_node* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %8, align 8
  %40 = load i32, i32* @FW_FEATURE_ISERIES, align 4
  %41 = call i64 @firmware_has_feature(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call i8* @of_get_property(%struct.device_node* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  br label %59

59:                                               ; preds = %56, %2
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @FW_FEATURE_ISERIES, align 4
  %70 = call i64 @firmware_has_feature(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @iseries_lparcfg_data(%struct.seq_file* %73, i8* %74)
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %59
  %77 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @pseries_lparcfg_data(%struct.seq_file* %77, i8* %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @iseries_lparcfg_data(%struct.seq_file*, i8*) #1

declare dso_local i32 @pseries_lparcfg_data(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
