; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_fw.c_carl9170_parse_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_fw.c_carl9170_parse_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.carl9170fw_desc_head*, %struct.firmware* }
%struct.carl9170fw_desc_head = type { i32 }
%struct.firmware = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unsupported firmware.\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"damaged firmware (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to parse firmware (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_parse_firmware(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.carl9170fw_desc_head*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store %struct.carl9170fw_desc_head* null, %struct.carl9170fw_desc_head** %4, align 8
  %8 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %9 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.firmware*, %struct.firmware** %10, align 8
  store %struct.firmware* %11, %struct.firmware** %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = icmp ne %struct.firmware* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %91

21:                                               ; preds = %1
  %22 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %23 = load %struct.firmware*, %struct.firmware** %5, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.firmware*, %struct.firmware** %5, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.carl9170fw_desc_head* @carl9170_find_fw_desc(%struct.ar9170* %22, i64 %25, i64 %28)
  store %struct.carl9170fw_desc_head* %29, %struct.carl9170fw_desc_head** %4, align 8
  %30 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %4, align 8
  %31 = icmp ne %struct.carl9170fw_desc_head* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %21
  %33 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %34 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODATA, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %91

40:                                               ; preds = %21
  %41 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %4, align 8
  %42 = ptrtoint %struct.carl9170fw_desc_head* %41 to i64
  %43 = load %struct.firmware*, %struct.firmware** %5, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  store i64 %46, i64* %6, align 8
  %47 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %48 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %4, align 8
  %49 = load %struct.firmware*, %struct.firmware** %5, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  %54 = call i32 @carl9170_fw_verify_descs(%struct.ar9170* %47, %struct.carl9170fw_desc_head* %48, i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %40
  %58 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %59 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %91

65:                                               ; preds = %40
  %66 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %4, align 8
  %67 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %68 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.carl9170fw_desc_head* %66, %struct.carl9170fw_desc_head** %69, align 8
  %70 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %71 = call i32 @carl9170_fw_info(%struct.ar9170* %70)
  %72 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %73 = load %struct.firmware*, %struct.firmware** %5, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.firmware*, %struct.firmware** %5, align 8
  %77 = getelementptr inbounds %struct.firmware, %struct.firmware* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @carl9170_fw(%struct.ar9170* %72, i64 %75, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %65
  %83 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %84 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %91

90:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %82, %57, %32, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.carl9170fw_desc_head* @carl9170_find_fw_desc(%struct.ar9170*, i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @carl9170_fw_verify_descs(%struct.ar9170*, %struct.carl9170fw_desc_head*, i64) #1

declare dso_local i32 @carl9170_fw_info(%struct.ar9170*) #1

declare dso_local i32 @carl9170_fw(%struct.ar9170*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
