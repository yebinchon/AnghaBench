; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1305.c_ds1305_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32 }
%struct.ds1305 = type { i32*, %struct.spi_device*, i32 }
%struct.spi_device = type { i32 }

@DS1305_ALM_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@DS1305_AEI0 = common dso_local global i32 0, align 4
@DS1305_WRITE = common dso_local global i32 0, align 4
@DS1305_CONTROL = common dso_local global i32 0, align 4
@DS1305_SEC = common dso_local global i32 0, align 4
@DS1305_MIN = common dso_local global i32 0, align 4
@DS1305_HOUR = common dso_local global i32 0, align 4
@DS1305_ALM_DISABLE = common dso_local global i32 0, align 4
@DS1305_WDAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: %02x %02x %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"alm0 write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1305_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1305_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds1305*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtc_time, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.ds1305* @dev_get_drvdata(%struct.device* %15)
  store %struct.ds1305* %16, %struct.ds1305** %6, align 8
  %17 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %18 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %17, i32 0, i32 1
  %19 = load %struct.spi_device*, %struct.spi_device** %18, align 8
  store %struct.spi_device* %19, %struct.spi_device** %7, align 8
  %20 = load i32, i32* @DS1305_ALM_LEN, align 4
  %21 = add nsw i32 1, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 1
  %27 = call i32 @rtc_tm_to_time(%struct.rtc_time* %26, i64* %9)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @ds1305_get_time(%struct.device* %33, %struct.rtc_time* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

39:                                               ; preds = %32
  %40 = call i32 @rtc_tm_to_time(%struct.rtc_time* %10, i64* %8)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub i64 %53, %54
  %56 = icmp ugt i64 %55, 86400
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EDOM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

60:                                               ; preds = %52
  %61 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %62 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DS1305_AEI0, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %60
  %70 = load i32, i32* @DS1305_AEI0, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %73 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @DS1305_WRITE, align 4
  %79 = load i32, i32* @DS1305_CONTROL, align 4
  %80 = or i32 %78, %79
  %81 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %80, i32* %81, align 16
  %82 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %83 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %86, i32* %87, align 4
  %88 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %89 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %88, i32 0, i32 1
  %90 = load %struct.spi_device*, %struct.spi_device** %89, align 8
  %91 = call i32 @spi_write_then_read(%struct.spi_device* %90, i32* %24, i32 2, i32* null, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %69
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %60
  %98 = load i32, i32* @DS1305_WRITE, align 4
  %99 = load i32, i32* @DS1305_SEC, align 4
  %100 = call i32 @DS1305_ALM0(i32 %99)
  %101 = or i32 %98, %100
  %102 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %101, i32* %102, align 16
  %103 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %104 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @bin2bcd(i32 %106)
  %108 = load i32, i32* @DS1305_SEC, align 4
  %109 = add nsw i32 1, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %24, i64 %110
  store i32 %107, i32* %111, align 4
  %112 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %113 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bin2bcd(i32 %115)
  %117 = load i32, i32* @DS1305_MIN, align 4
  %118 = add nsw i32 1, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %24, i64 %119
  store i32 %116, i32* %120, align 4
  %121 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %122 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %125 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @hour2bcd(i32 %123, i32 %127)
  %129 = load i32, i32* @DS1305_HOUR, align 4
  %130 = add nsw i32 1, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %24, i64 %131
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* @DS1305_ALM_DISABLE, align 4
  %134 = load i32, i32* @DS1305_WDAY, align 4
  %135 = add nsw i32 1, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %24, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load i32, i32* @DS1305_SEC, align 4
  %140 = add nsw i32 1, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %24, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DS1305_MIN, align 4
  %145 = add nsw i32 1, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %24, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DS1305_HOUR, align 4
  %150 = add nsw i32 1, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %24, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @DS1305_WDAY, align 4
  %155 = add nsw i32 1, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %24, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dev_dbg(%struct.device* %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %148, i32 %153, i32 %158)
  %160 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %161 = mul nuw i64 4, %22
  %162 = trunc i64 %161 to i32
  %163 = call i32 @spi_write_then_read(%struct.spi_device* %160, i32* %24, i32 %162, i32* null, i32 0)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %97
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

168:                                              ; preds = %97
  %169 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %170 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %168
  %174 = load i32, i32* @DS1305_AEI0, align 4
  %175 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %176 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %174
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* @DS1305_WRITE, align 4
  %182 = load i32, i32* @DS1305_CONTROL, align 4
  %183 = or i32 %181, %182
  %184 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %183, i32* %184, align 16
  %185 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %186 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %189, i32* %190, align 4
  %191 = load %struct.ds1305*, %struct.ds1305** %6, align 8
  %192 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %191, i32 0, i32 1
  %193 = load %struct.spi_device*, %struct.spi_device** %192, align 8
  %194 = call i32 @spi_write_then_read(%struct.spi_device* %193, i32* %24, i32 2, i32* null, i32 0)
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %173, %168
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %197

197:                                              ; preds = %195, %166, %94, %57, %49, %43, %37, %30
  %198 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.ds1305* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @ds1305_get_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @DS1305_ALM0(i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @hour2bcd(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
