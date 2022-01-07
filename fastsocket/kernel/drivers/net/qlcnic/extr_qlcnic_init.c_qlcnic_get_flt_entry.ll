; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_get_flt_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_get_flt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_flt_entry = type { i64 }
%struct.qlcnic_flt_header = type { i32 }

@QLCNIC_FLT_LOCATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"error reading flash layout header\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"error allocating memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"error reading flash layout entries\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"region=%x not found in %d regions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i64, %struct.qlcnic_flt_entry*)* @qlcnic_get_flt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_flt_entry(%struct.qlcnic_adapter* %0, i64 %1, %struct.qlcnic_flt_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qlcnic_flt_entry*, align 8
  %8 = alloca %struct.qlcnic_flt_header, align 4
  %9 = alloca %struct.qlcnic_flt_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qlcnic_flt_entry* %2, %struct.qlcnic_flt_entry** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %7, align 8
  %14 = call i32 @memset(%struct.qlcnic_flt_entry* %13, i32 0, i32 8)
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = load i64, i64* @QLCNIC_FLT_LOCATION, align 8
  %17 = bitcast %struct.qlcnic_flt_header* %8 to i64*
  %18 = call i32 @qlcnic_rom_fast_read_words(%struct.qlcnic_adapter* %15, i64 %16, i64* %17, i32 4)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_warn(i32* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %115

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.qlcnic_flt_header, %struct.qlcnic_flt_header* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.qlcnic_flt_entry* @vzalloc(i32 %35)
  store %struct.qlcnic_flt_entry* %36, %struct.qlcnic_flt_entry** %9, align 8
  %37 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %38 = icmp eq %struct.qlcnic_flt_entry* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_warn(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %115

47:                                               ; preds = %29
  %48 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @memset(%struct.qlcnic_flt_entry* %48, i32 0, i32 %49)
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %52 = load i64, i64* @QLCNIC_FLT_LOCATION, align 8
  %53 = add i64 %52, 4
  %54 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %55 = bitcast %struct.qlcnic_flt_entry* %54 to i64*
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @qlcnic_rom_fast_read_words(%struct.qlcnic_adapter* %51, i64 %53, i64* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %47
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_warn(i32* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %111

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %75, i64 %77
  %79 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %67

87:                                               ; preds = %83, %67
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = udiv i64 %91, 8
  %93 = icmp uge i64 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_warn(i32* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %99, i32 %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %111

104:                                              ; preds = %87
  %105 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %7, align 8
  %106 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %106, i64 %108
  %110 = call i32 @memcpy(%struct.qlcnic_flt_entry* %105, %struct.qlcnic_flt_entry* %109, i32 8)
  br label %111

111:                                              ; preds = %104, %94, %60
  %112 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %113 = call i32 @vfree(%struct.qlcnic_flt_entry* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %39, %21
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @memset(%struct.qlcnic_flt_entry*, i32, i32) #1

declare dso_local i32 @qlcnic_rom_fast_read_words(%struct.qlcnic_adapter*, i64, i64*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.qlcnic_flt_entry* @vzalloc(i32) #1

declare dso_local i32 @memcpy(%struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry*, i32) #1

declare dso_local i32 @vfree(%struct.qlcnic_flt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
