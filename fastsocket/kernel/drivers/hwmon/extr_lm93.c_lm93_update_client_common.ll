; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_update_client_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_update_client_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm93_data = type { i32, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8*, i8*, i8*, i8**, i8**, i8**, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.i2c_client = type { i32 }

@LM93_REG_CONFIG = common dso_local global i32 0, align 4
@LM93_REG_GPI = common dso_local global i32 0, align 4
@LM93_REG_PROCHOT_OVERRIDE = common dso_local global i32 0, align 4
@LM93_REG_PROCHOT_INTERVAL = common dso_local global i32 0, align 4
@LM93_REG_BOOST_HYST_12 = common dso_local global i32 0, align 4
@LM93_REG_BOOST_HYST_34 = common dso_local global i32 0, align 4
@LM93_REG_PWM_MIN_HYST_12 = common dso_local global i32 0, align 4
@LM93_REG_PWM_MIN_HYST_34 = common dso_local global i32 0, align 4
@LM93_REG_PWM_RAMP_CTL = common dso_local global i32 0, align 4
@LM93_REG_SFC1 = common dso_local global i32 0, align 4
@LM93_REG_SFC2 = common dso_local global i32 0, align 4
@LM93_REG_SF_TACH_TO_PWM = common dso_local global i32 0, align 4
@LM93_REG_HOST_ERROR_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm93_data*, %struct.i2c_client*)* @lm93_update_client_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm93_update_client_common(%struct.lm93_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.lm93_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.lm93_data* %0, %struct.lm93_data** %3, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @LM93_REG_TEMP_MIN(i32 %12)
  %14 = call i8* @lm93_read_byte(%struct.i2c_client* %11, i32 %13)
  %15 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %16 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %15, i32 0, i32 15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %14, i8** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @LM93_REG_TEMP_MAX(i32 %23)
  %25 = call i8* @lm93_read_byte(%struct.i2c_client* %22, i32 %24)
  %26 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %27 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %26, i32 0, i32 15
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %25, i8** %32, align 8
  br label %33

33:                                               ; preds = %10
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @LM93_REG_CONFIG, align 4
  %39 = call i8* @lm93_read_byte(%struct.i2c_client* %37, i32 %38)
  %40 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %41 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %40, i32 0, i32 14
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %56, %36
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @LM93_REG_VID(i32 %47)
  %49 = call i8* @lm93_read_byte(%struct.i2c_client* %46, i32 %48)
  %50 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %51 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %50, i32 0, i32 13
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %49, i8** %55, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %42

59:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @LM93_REG_PROCHOT_MAX(i32 %65)
  %67 = call i8* @lm93_read_byte(%struct.i2c_client* %64, i32 %66)
  %68 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %69 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %68, i32 0, i32 12
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %67, i8** %73, align 8
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %60

77:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @LM93_REG_VCCP_LIMIT_OFF(i32 %83)
  %85 = call i8* @lm93_read_byte(%struct.i2c_client* %82, i32 %84)
  %86 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %87 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %86, i32 0, i32 11
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %78

95:                                               ; preds = %78
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load i32, i32* @LM93_REG_GPI, align 4
  %98 = call i8* @lm93_read_byte(%struct.i2c_client* %96, i32 %97)
  %99 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %100 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %99, i32 0, i32 10
  store i8* %98, i8** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load i32, i32* @LM93_REG_PROCHOT_OVERRIDE, align 4
  %103 = call i8* @lm93_read_byte(%struct.i2c_client* %101, i32 %102)
  %104 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %105 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load i32, i32* @LM93_REG_PROCHOT_INTERVAL, align 4
  %108 = call i8* @lm93_read_byte(%struct.i2c_client* %106, i32 %107)
  %109 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %110 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %125, %95
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @LM93_REG_BOOST(i32 %116)
  %118 = call i8* @lm93_read_byte(%struct.i2c_client* %115, i32 %117)
  %119 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %120 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %119, i32 0, i32 7
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %118, i8** %124, align 8
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %111

128:                                              ; preds = %111
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = load i32, i32* @LM93_REG_BOOST_HYST_12, align 4
  %131 = call i8* @lm93_read_byte(%struct.i2c_client* %129, i32 %130)
  %132 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %133 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %132, i32 0, i32 6
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  store i8* %131, i8** %135, align 8
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = load i32, i32* @LM93_REG_BOOST_HYST_34, align 4
  %138 = call i8* @lm93_read_byte(%struct.i2c_client* %136, i32 %137)
  %139 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %140 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %139, i32 0, i32 6
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  store i8* %138, i8** %142, align 8
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load i32, i32* @LM93_REG_PWM_MIN_HYST_12, align 4
  %145 = call i8* @lm93_read_byte(%struct.i2c_client* %143, i32 %144)
  %146 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %147 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %146, i32 0, i32 5
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  store i8* %145, i8** %149, align 8
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = load i32, i32* @LM93_REG_PWM_MIN_HYST_34, align 4
  %152 = call i8* @lm93_read_byte(%struct.i2c_client* %150, i32 %151)
  %153 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %154 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %153, i32 0, i32 5
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  store i8* %152, i8** %156, align 8
  %157 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %158 = load i32, i32* @LM93_REG_PWM_RAMP_CTL, align 4
  %159 = call i8* @lm93_read_byte(%struct.i2c_client* %157, i32 %158)
  %160 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %161 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = load i32, i32* @LM93_REG_SFC1, align 4
  %164 = call i8* @lm93_read_byte(%struct.i2c_client* %162, i32 %163)
  %165 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %166 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = load i32, i32* @LM93_REG_SFC2, align 4
  %169 = call i8* @lm93_read_byte(%struct.i2c_client* %167, i32 %168)
  %170 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %171 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = load i32, i32* @LM93_REG_SF_TACH_TO_PWM, align 4
  %174 = call i8* @lm93_read_byte(%struct.i2c_client* %172, i32 %173)
  %175 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %176 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  store i32 0, i32* %5, align 4
  %177 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %178 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %177, i32 0, i32 0
  store i32* %178, i32** %6, align 8
  br label %179

179:                                              ; preds = %194, %128
  %180 = load i32, i32* %5, align 4
  %181 = icmp slt i32 %180, 8
  br i1 %181, label %182, label %197

182:                                              ; preds = %179
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = load i64, i64* @LM93_REG_HOST_ERROR_1, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @lm93_write_byte(%struct.i2c_client* %183, i64 %187, i32 %192)
  br label %194

194:                                              ; preds = %182
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %179

197:                                              ; preds = %179
  ret void
}

declare dso_local i8* @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_REG_TEMP_MIN(i32) #1

declare dso_local i32 @LM93_REG_TEMP_MAX(i32) #1

declare dso_local i32 @LM93_REG_VID(i32) #1

declare dso_local i32 @LM93_REG_PROCHOT_MAX(i32) #1

declare dso_local i32 @LM93_REG_VCCP_LIMIT_OFF(i32) #1

declare dso_local i32 @LM93_REG_BOOST(i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
