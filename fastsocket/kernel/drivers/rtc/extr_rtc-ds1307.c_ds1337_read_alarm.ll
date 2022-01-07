; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1337_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1337_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.i2c_client = type { i32 }
%struct.ds1307 = type { i32 (%struct.i2c_client*, i32, i32, i32*)*, i32*, i32 }

@HAS_ALARM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DS1339_REG_ALARM1_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"alarm read\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"%s: %02x %02x %02x %02x, %02x %02x %02x, %02x %02x\0A\00", align 1
@DS1337_BIT_A1IE = common dso_local global i32 0, align 4
@DS1337_BIT_A1I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, enabled=%d, pending=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1337_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1337_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ds1307*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.ds1307* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.ds1307* %12, %struct.ds1307** %7, align 8
  %13 = load i32, i32* @HAS_ALARM, align 4
  %14 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %15 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %14, i32 0, i32 2
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %196

21:                                               ; preds = %2
  %22 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %23 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %22, i32 0, i32 0
  %24 = load i32 (%struct.i2c_client*, i32, i32, i32*)*, i32 (%struct.i2c_client*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = load i32, i32* @DS1339_REG_ALARM1_SECS, align 4
  %27 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %28 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 %24(%struct.i2c_client* %25, i32 %26, i32 9, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 9
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %196

39:                                               ; preds = %21
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %42 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %47 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %52 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %57 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %62 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %67 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %72 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %77 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %82 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %50, i32 %55, i32 %60, i32 %65, i32 %70, i32 %75, i32 %80, i32 %85)
  %87 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %88 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 127
  %93 = call i8* @bcd2bin(i32 %92)
  %94 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 8
  store i8* %93, i8** %96, align 8
  %97 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %98 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 127
  %103 = call i8* @bcd2bin(i32 %102)
  %104 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 7
  store i8* %103, i8** %106, align 8
  %107 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %108 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 63
  %113 = call i8* @bcd2bin(i32 %112)
  %114 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %115 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  store i8* %113, i8** %116, align 8
  %117 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %118 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 63
  %123 = call i8* @bcd2bin(i32 %122)
  %124 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %125 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  store i8* %123, i8** %126, align 8
  %127 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %128 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 -1, i32* %129, align 8
  %130 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %131 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 -1, i32* %132, align 4
  %133 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %134 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  store i32 -1, i32* %135, align 8
  %136 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %137 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  store i32 -1, i32* %138, align 4
  %139 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %140 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  store i32 -1, i32* %141, align 8
  %142 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %143 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 7
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DS1337_BIT_A1IE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %154 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ds1307*, %struct.ds1307** %7, align 8
  %156 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @DS1337_BIT_A1I, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %167 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %170 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 8
  %172 = load i8*, i8** %171, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %175 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 7
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %180 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %185 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 5
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %187 to i32
  %189 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %190 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %193 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %168, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %178, i32 %183, i32 %188, i32 %191, i32 %194)
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %39, %33, %18
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ds1307* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
