; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_get_edc_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_get_edc_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32*, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"could not upgrade firmware: unable to load %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"firmware image too large %u, expected %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"corrupted firmware image, checksum %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_get_edc_fw(%struct.cphy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.cphy*, %struct.cphy** %5, align 8
  %17 = getelementptr inbounds %struct.cphy, %struct.cphy* %16, i32 0, i32 1
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %8, align 8
  %19 = load %struct.cphy*, %struct.cphy** %5, align 8
  %20 = getelementptr inbounds %struct.cphy, %struct.cphy* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @get_edc_fw_name(i32 %23)
  %25 = call i32 @snprintf(i8* %22, i32 64, i8* %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %27 = load %struct.adapter*, %struct.adapter** %8, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @request_firmware(%struct.firmware** %9, i8* %26, i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %3
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %4, align 4
  br label %129

42:                                               ; preds = %3
  %43 = load %struct.firmware*, %struct.firmware** %9, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 4
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.adapter*, %struct.adapter** %8, align 8
  %51 = load %struct.firmware*, %struct.firmware** %9, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 4
  %56 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_ERR(%struct.adapter* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %49, %42
  %60 = load %struct.firmware*, %struct.firmware** %9, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %12, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %84, %59
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.firmware*, %struct.firmware** %9, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = udiv i64 %70, 4
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %64
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ntohl(i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.adapter*, %struct.adapter** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (%struct.adapter*, i8*, i32, ...) @CH_ERR(%struct.adapter* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %90, %87
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %122, %96
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sdiv i32 %99, 4
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %97
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = and i32 %108, -65536
  %110 = lshr i32 %109, 16
  %111 = load i32*, i32** %13, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @be32_to_cpu(i32 %117)
  %119 = and i32 %118, 65535
  %120 = load i32*, i32** %13, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %13, align 8
  store i32 %119, i32* %120, align 4
  br label %122

122:                                              ; preds = %102
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %97

125:                                              ; preds = %97
  %126 = load %struct.firmware*, %struct.firmware** %9, align 8
  %127 = call i32 @release_firmware(%struct.firmware* %126)
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %34
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i8* @get_edc_fw_name(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32, ...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
