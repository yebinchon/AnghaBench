; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_xc_request_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_xc_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc = type { i32, i32, i32, i32 }
%struct.firmware = type { i8* }
%struct.fw_header = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"xc%d.bin\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"request_firmware failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"firmware magic is 'XteN'. Endianess problems?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"unrecognized firmware magic 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xc_request_firmware(%struct.xc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.fw_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.xc* %0, %struct.xc** %3, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %13 = load %struct.xc*, %struct.xc** %3, align 8
  %14 = getelementptr inbounds %struct.xc, %struct.xc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %18 = load %struct.xc*, %struct.xc** %3, align 8
  %19 = getelementptr inbounds %struct.xc, %struct.xc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @request_firmware(%struct.firmware** %6, i8* %17, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.xc*, %struct.xc** %3, align 8
  %26 = getelementptr inbounds %struct.xc, %struct.xc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %158

30:                                               ; preds = %1
  %31 = load %struct.firmware*, %struct.firmware** %6, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.fw_header*
  store %struct.fw_header* %34, %struct.fw_header** %7, align 8
  %35 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %36 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 1315271768
  br i1 %38, label %39, label %61

39:                                               ; preds = %30
  %40 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %41 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1484023118
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.xc*, %struct.xc** %3, align 8
  %46 = getelementptr inbounds %struct.xc, %struct.xc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %154

51:                                               ; preds = %39
  %52 = load %struct.xc*, %struct.xc** %3, align 8
  %53 = getelementptr inbounds %struct.xc, %struct.xc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %56 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %154

61:                                               ; preds = %30
  %62 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %63 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xc*, %struct.xc** %3, align 8
  %66 = getelementptr inbounds %struct.xc, %struct.xc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %68 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.xc*, %struct.xc** %3, align 8
  %71 = getelementptr inbounds %struct.xc, %struct.xc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %150, %61
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %153

77:                                               ; preds = %74
  %78 = load %struct.firmware*, %struct.firmware** %6, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %82 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %80, i64 %89
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %11, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr i8, i8* %95, i64 4
  store i8* %96, i8** %10, align 8
  %97 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %98 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 %105, 4
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  %108 = load %struct.xc*, %struct.xc** %3, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @xc_check_ptr(%struct.xc* %108, i64 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %77
  br label %154

114:                                              ; preds = %77
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @io_p2v(i64 %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @memcpy(i8* %117, i8* %118, i32 %119)
  %121 = load %struct.firmware*, %struct.firmware** %6, align 8
  %122 = getelementptr inbounds %struct.firmware, %struct.firmware* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %125 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr i8, i8* %123, i64 %132
  store i8* %133, i8** %10, align 8
  %134 = load %struct.fw_header*, %struct.fw_header** %7, align 8
  %135 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %8, align 4
  %142 = load %struct.xc*, %struct.xc** %3, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @xc_patch(%struct.xc* %142, i8* %143, i32 %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %114
  br label %154

149:                                              ; preds = %114
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %74

153:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %148, %113, %51, %44
  %155 = load %struct.firmware*, %struct.firmware** %6, align 8
  %156 = call i32 @release_firmware(%struct.firmware* %155)
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %24
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @xc_check_ptr(%struct.xc*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @io_p2v(i64) #1

declare dso_local i32 @xc_patch(%struct.xc*, i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
