; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_check_for_device_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_check_for_device_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_ccw_req = type { i32 }
%struct.irb = type { i32 }
%struct.dasd_eckd_private = type { i64 }

@DEV_STAT_ATTENTION = common dso_local global i8 0, align 1
@DEV_STAT_DEV_END = common dso_local global i8 0, align 1
@DEV_STAT_UNIT_EXCEP = common dso_local global i8 0, align 1
@DASD_STATE_ONLINE = common dso_local global i64 0, align 8
@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@DASD_SENSE_BIT_0 = common dso_local global i8 0, align 1
@DEV_STAT_UNIT_CHECK = common dso_local global i8 0, align 1
@DASD_SIM_SENSE = common dso_local global i8 0, align 1
@DASD_FLAG_IS_RESERVED = common dso_local global i32 0, align 4
@DASD_FEATURE_FAILONSLCK = common dso_local global i32 0, align 4
@DASD_FLAG_LOCK_STOLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"The device reservation was lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)* @dasd_eckd_check_for_device_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_check_for_device_change(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %13, %struct.dasd_eckd_private** %9, align 8
  %14 = load i8, i8* @DEV_STAT_ATTENTION, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @DEV_STAT_DEV_END, align 1
  %17 = sext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i8, i8* @DEV_STAT_UNIT_EXCEP, align 1
  %20 = sext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load %struct.irb*, %struct.irb** %6, align 8
  %24 = getelementptr inbounds %struct.irb, %struct.irb* %23, i32 0, i32 0
  %25 = call signext i8 @scsw_dstat(i32* %24)
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %3
  %34 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %33
  %39 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %9, align 8
  %40 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %45 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DASD_STATE_ONLINE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %51 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 3
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @DASD_FLAG_SUSPENDED, align 4
  %57 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %58 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %57, i32 0, i32 3
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %63 = call i32 @dasd_alias_remove_device(%struct.dasd_device* %62)
  %64 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %65 = call i32 @dasd_reload_device(%struct.dasd_device* %64)
  br label %66

66:                                               ; preds = %61, %55, %49, %43, %38, %33
  %67 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %68 = call i32 @dasd_generic_handle_state_change(%struct.dasd_device* %67)
  br label %187

69:                                               ; preds = %3
  %70 = load %struct.irb*, %struct.irb** %6, align 8
  %71 = call i8* @dasd_get_sense(%struct.irb* %70)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %187

75:                                               ; preds = %69
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 27
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %81 = sext i8 %80 to i32
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %75
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 7
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 13
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.irb*, %struct.irb** %6, align 8
  %92 = getelementptr inbounds %struct.irb, %struct.irb* %91, i32 0, i32 0
  %93 = call signext i8 @scsw_dstat(i32* %92)
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* @DEV_STAT_UNIT_CHECK, align 1
  %96 = sext i8 %95 to i32
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %101 = load %struct.irb*, %struct.irb** %6, align 8
  %102 = call i32 @dasd_alias_handle_summary_unit_check(%struct.dasd_device* %100, %struct.irb* %101)
  br label %187

103:                                              ; preds = %90, %84, %75
  %104 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %105 = icmp ne %struct.dasd_ccw_req* %104, null
  br i1 %105, label %130, label %106

106:                                              ; preds = %103
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 27
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %112 = sext i8 %111 to i32
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %106
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = load i8, i8* @DASD_SIM_SENSE, align 1
  %121 = sext i8 %120 to i32
  %122 = and i32 %119, %121
  %123 = load i8, i8* @DASD_SIM_SENSE, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @dasd_3990_erp_handle_sim(%struct.dasd_device* %127, i8* %128)
  br label %187

130:                                              ; preds = %115, %106, %103
  %131 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %132 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %187

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 27
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8, i8* @DASD_SENSE_BIT_0, align 1
  %141 = sext i8 %140 to i32
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %187

144:                                              ; preds = %135
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 7
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 63
  br i1 %149, label %150, label %187

150:                                              ; preds = %144
  %151 = load %struct.irb*, %struct.irb** %6, align 8
  %152 = getelementptr inbounds %struct.irb, %struct.irb* %151, i32 0, i32 0
  %153 = call signext i8 @scsw_dstat(i32* %152)
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* @DEV_STAT_UNIT_CHECK, align 1
  %156 = sext i8 %155 to i32
  %157 = and i32 %154, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %150
  %160 = load i32, i32* @DASD_FLAG_IS_RESERVED, align 4
  %161 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %162 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %161, i32 0, i32 3
  %163 = call i64 @test_bit(i32 %160, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %159
  %166 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %167 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @DASD_FEATURE_FAILONSLCK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load i32, i32* @DASD_FLAG_LOCK_STOLEN, align 4
  %174 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %175 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %174, i32 0, i32 3
  %176 = call i32 @set_bit(i32 %173, i32* %175)
  br label %177

177:                                              ; preds = %172, %165
  %178 = load i32, i32* @DASD_FLAG_IS_RESERVED, align 4
  %179 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %180 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %179, i32 0, i32 3
  %181 = call i32 @clear_bit(i32 %178, i32* %180)
  %182 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %183 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = call i32 @dev_err(i32* %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %187

187:                                              ; preds = %66, %74, %99, %126, %177, %159, %150, %144, %135, %130
  ret void
}

declare dso_local signext i8 @scsw_dstat(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_alias_remove_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_reload_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_generic_handle_state_change(%struct.dasd_device*) #1

declare dso_local i8* @dasd_get_sense(%struct.irb*) #1

declare dso_local i32 @dasd_alias_handle_summary_unit_check(%struct.dasd_device*, %struct.irb*) #1

declare dso_local i32 @dasd_3990_erp_handle_sim(%struct.dasd_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
