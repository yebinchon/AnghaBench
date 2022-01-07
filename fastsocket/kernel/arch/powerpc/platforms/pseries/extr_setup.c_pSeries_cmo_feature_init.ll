; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_setup.c_pSeries_cmo_feature_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_setup.c_pSeries_cmo_feature_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOMMU_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c" -> fw_cmo_feature_init()\0A\00", align 1
@rtas_data_buf_lock = common dso_local global i32 0, align 4
@rtas_data_buf = common dso_local global i8* null, align 8
@RTAS_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ibm,get-system-parameter\00", align 1
@CMO_CHARACTERISTICS_TOKEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"CMO not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" <- fw_cmo_feature_init()\0A\00", align 1
@CMO_MAXLENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Malformed key/value pair\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"CMOPageSize\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PrPSP\00", align 1
@CMO_PrPSP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"SecPSP\00", align 1
@CMO_SecPSP = common dso_local global i32 0, align 4
@CMO_PageSize = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"CMO_PageSize = %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"CMO enabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"CMO enabled, PrPSP=%d, SecPSP=%d\0A\00", align 1
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@powerpc_firmware_features = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"CMO not enabled, PrPSP=%d, SecPSP=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pSeries_cmo_feature_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @IOMMU_PAGE_SHIFT, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @spin_lock(i32* @rtas_data_buf_lock)
  %10 = load i8*, i8** @rtas_data_buf, align 8
  %11 = load i32, i32* @RTAS_DATA_BUF_SIZE, align 4
  %12 = call i32 @memset(i8* %10, i32 0, i32 %11)
  %13 = call i32 @rtas_token(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @CMO_CHARACTERISTICS_TOKEN, align 4
  %15 = load i8*, i8** @rtas_data_buf, align 8
  %16 = call i32 @__pa(i8* %15)
  %17 = load i32, i32* @RTAS_DATA_BUF_SIZE, align 4
  %18 = call i32 @rtas_call(i32 %13, i32 3, i32 1, i32* null, i32 %14, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %0
  %22 = call i32 @spin_unlock(i32* @rtas_data_buf_lock)
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %132

25:                                               ; preds = %0
  %26 = load i8*, i8** @rtas_data_buf, align 8
  %27 = load i32, i32* @CMO_MAXLENGTH, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 -2
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** @rtas_data_buf, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %1, align 8
  %33 = load i8*, i8** %1, align 8
  store i8* %33, i8** %3, align 8
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %103, %25
  %35 = load i8*, i8** %1, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** %1, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ule i8* %40, %41
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  br i1 %44, label %45, label %106

45:                                               ; preds = %43
  %46 = load i8*, i8** %1, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8*, i8** %1, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %1, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %3, align 8
  br label %103

56:                                               ; preds = %45
  %57 = load i8*, i8** %1, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %1, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 44
  br i1 %67, label %68, label %102

68:                                               ; preds = %62, %56
  %69 = load i8*, i8** %1, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %2, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %106

76:                                               ; preds = %68
  %77 = load i8*, i8** %2, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp eq i64 0, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @simple_strtol(i8* %81, i32* null, i32 10)
  store i32 %82, i32* %6, align 4
  br label %99

83:                                               ; preds = %76
  %84 = load i8*, i8** %2, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %86 = icmp eq i64 0, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @simple_strtol(i8* %88, i32* null, i32 10)
  store i32 %89, i32* @CMO_PrPSP, align 4
  br label %98

90:                                               ; preds = %83
  %91 = load i8*, i8** %2, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %93 = icmp eq i64 0, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @simple_strtol(i8* %95, i32* null, i32 10)
  store i32 %96, i32* @CMO_SecPSP, align 4
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97, %87
  br label %99

99:                                               ; preds = %98, %80
  %100 = load i8*, i8** %1, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %2, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %99, %62
  br label %103

103:                                              ; preds = %102, %51
  %104 = load i8*, i8** %1, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %1, align 8
  br label %34

106:                                              ; preds = %74, %43
  %107 = load i32, i32* %6, align 4
  %108 = shl i32 1, %107
  store i32 %108, i32* @CMO_PageSize, align 4
  %109 = load i32, i32* @CMO_PageSize, align 4
  %110 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @CMO_PrPSP, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @CMO_SecPSP, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %125

116:                                              ; preds = %113, %106
  %117 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32, i32* @CMO_PrPSP, align 4
  %119 = load i32, i32* @CMO_SecPSP, align 4
  %120 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @FW_FEATURE_CMO, align 4
  %122 = load i32, i32* @powerpc_firmware_features, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* @powerpc_firmware_features, align 4
  %124 = call i32 (...) @pSeries_coalesce_init()
  br label %129

125:                                              ; preds = %113
  %126 = load i32, i32* @CMO_PrPSP, align 4
  %127 = load i32, i32* @CMO_SecPSP, align 4
  %128 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %116
  %130 = call i32 @spin_unlock(i32* @rtas_data_buf_lock)
  %131 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %21
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pSeries_coalesce_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
