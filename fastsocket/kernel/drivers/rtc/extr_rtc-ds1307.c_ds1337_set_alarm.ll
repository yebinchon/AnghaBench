; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1337_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1337_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ds1307 = type { i8*, i32 (%struct.i2c_client*, i32, i32, i8*)*, i32 (%struct.i2c_client*, i32, i32, i8*)*, i32 }

@HAS_ALARM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, enabled=%d, pending=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alarm set\00", align 1
@DS1339_REG_ALARM1_SECS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"alarm write\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"%s: %02x %02x %02x %02x, %02x %02x %02x, %02x %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"alarm set (old status)\00", align 1
@DS1337_BIT_A1IE = common dso_local global i8 0, align 1
@DS1337_BIT_A2IE = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"alarm IRQ armed\0A\00", align 1
@DS1337_BIT_A1I = common dso_local global i8 0, align 1
@DS1337_BIT_A2I = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"can't set alarm time\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1337_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1337_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ds1307*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.ds1307* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.ds1307* %15, %struct.ds1307** %7, align 8
  %16 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %17 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* @HAS_ALARM, align 4
  %20 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %21 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %20, i32 0, i32 3
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %214

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36, i32 %40, i32 %44, i64 %47, i32 %50)
  %52 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %53 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %52, i32 0, i32 1
  %54 = load i32 (%struct.i2c_client*, i32, i32, i8*)*, i32 (%struct.i2c_client*, i32, i32, i8*)** %53, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %56 = load i32, i32* @DS1339_REG_ALARM1_SECS, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 %54(%struct.i2c_client* %55, i32 %56, i32 9, i8* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 9
  br i1 %60, label %61, label %67

61:                                               ; preds = %27
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %214

67:                                               ; preds = %27
  %68 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %69 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %9, align 1
  %73 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %74 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %10, align 1
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %80 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %86 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %92 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %98 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %104 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %110 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %116 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 6
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* %9, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* %10, align 1
  %124 = zext i8 %123 to i32
  %125 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %78, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %90, i32 %96, i32 %102, i32 %108, i32 %114, i32 %120, i32 %122, i32 %124)
  %126 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %127 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call zeroext i8 @bin2bcd(i32 %129)
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  store i8 %130, i8* %132, align 1
  %133 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %134 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call zeroext i8 @bin2bcd(i32 %136)
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8 %137, i8* %139, align 1
  %140 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %141 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call zeroext i8 @bin2bcd(i32 %143)
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  store i8 %144, i8* %146, align 1
  %147 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %148 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call zeroext i8 @bin2bcd(i32 %150)
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 3
  store i8 %151, i8* %153, align 1
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  store i8 0, i8* %155, align 1
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 5
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 6
  store i8 0, i8* %159, align 1
  %160 = load i8, i8* %9, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* @DS1337_BIT_A1IE, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* @DS1337_BIT_A2IE, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %163, %165
  %167 = xor i32 %166, -1
  %168 = and i32 %161, %167
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 7
  store i8 %169, i8* %171, align 1
  %172 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %173 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %67
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i8, i8* @DS1337_BIT_A1IE, align 1
  %180 = zext i8 %179 to i32
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 7
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = or i32 %184, %180
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %182, align 1
  br label %187

187:                                              ; preds = %176, %67
  %188 = load i8, i8* %10, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8, i8* @DS1337_BIT_A1I, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8, i8* @DS1337_BIT_A2I, align 1
  %193 = zext i8 %192 to i32
  %194 = or i32 %191, %193
  %195 = xor i32 %194, -1
  %196 = and i32 %189, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 8
  store i8 %197, i8* %199, align 1
  %200 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %201 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %200, i32 0, i32 2
  %202 = load i32 (%struct.i2c_client*, i32, i32, i8*)*, i32 (%struct.i2c_client*, i32, i32, i8*)** %201, align 8
  %203 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %204 = load i32, i32* @DS1339_REG_ALARM1_SECS, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 %202(%struct.i2c_client* %203, i32 %204, i32 9, i8* %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %187
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %3, align 4
  br label %214

213:                                              ; preds = %187
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %213, %209, %61, %24
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ds1307* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
