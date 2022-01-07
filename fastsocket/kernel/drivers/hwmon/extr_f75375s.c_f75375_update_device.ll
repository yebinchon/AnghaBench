; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_f75375_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_f75375_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f75375_data = type { i32, i32, i8*, i8**, i8**, i8**, i8*, i8*, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@F75375_REG_FAN_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f75375_data* (%struct.device*)* @f75375_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f75375_data* @f75375_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.f75375_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.f75375_data* %9, %struct.f75375_data** %4, align 8
  %10 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %11 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i8*, i8** @jiffies, align 8
  %14 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %15 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %14, i32 0, i32 6
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 60, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %16, i64 %19
  %21 = call i64 @time_after(i8* %13, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %25 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %133, label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %93, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @F75375_REG_TEMP_HIGH(i32 %34)
  %36 = call i8* @f75375_read8(%struct.i2c_client* %33, i32 %35)
  %37 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %38 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %37, i32 0, i32 15
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %36, i8** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @F75375_REG_TEMP_HYST(i32 %44)
  %46 = call i8* @f75375_read8(%struct.i2c_client* %43, i32 %45)
  %47 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %48 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %47, i32 0, i32 14
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %46, i8** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @F75375_REG_FAN_FULL(i32 %54)
  %56 = call i8* @f75375_read16(%struct.i2c_client* %53, i32 %55)
  %57 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %58 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %57, i32 0, i32 13
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @F75375_REG_FAN_MIN(i32 %64)
  %66 = call i8* @f75375_read16(%struct.i2c_client* %63, i32 %65)
  %67 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %68 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %67, i32 0, i32 12
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @F75375_REG_FAN_EXP(i32 %74)
  %76 = call i8* @f75375_read16(%struct.i2c_client* %73, i32 %75)
  %77 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %78 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %77, i32 0, i32 11
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @F75375_REG_FAN_PWM_DUTY(i32 %84)
  %86 = call i8* @f75375_read8(%struct.i2c_client* %83, i32 %85)
  %87 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %88 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %87, i32 0, i32 10
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %86, i8** %92, align 8
  br label %93

93:                                               ; preds = %32
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %29

96:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @F75375_REG_VOLT_HIGH(i32 %102)
  %104 = call i8* @f75375_read8(%struct.i2c_client* %101, i32 %103)
  %105 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %106 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %105, i32 0, i32 9
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %104, i8** %110, align 8
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @F75375_REG_VOLT_LOW(i32 %112)
  %114 = call i8* @f75375_read8(%struct.i2c_client* %111, i32 %113)
  %115 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %116 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %115, i32 0, i32 8
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %114, i8** %120, align 8
  br label %121

121:                                              ; preds = %100
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %97

124:                                              ; preds = %97
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = load i32, i32* @F75375_REG_FAN_TIMER, align 4
  %127 = call i8* @f75375_read8(%struct.i2c_client* %125, i32 %126)
  %128 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %129 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %128, i32 0, i32 7
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @jiffies, align 8
  %131 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %132 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %131, i32 0, i32 6
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %124, %23
  %134 = load i8*, i8** @jiffies, align 8
  %135 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %136 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* @HZ, align 4
  %139 = mul nsw i32 2, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr i8, i8* %137, i64 %140
  %142 = call i64 @time_after(i8* %134, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %133
  %145 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %146 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %201, label %149

149:                                              ; preds = %144, %133
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %174, %149
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %153, label %177

153:                                              ; preds = %150
  %154 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @F75375_REG_TEMP(i32 %155)
  %157 = call i8* @f75375_read8(%struct.i2c_client* %154, i32 %156)
  %158 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %159 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %158, i32 0, i32 5
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  store i8* %157, i8** %163, align 8
  %164 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @F75375_REG_FAN(i32 %165)
  %167 = call i8* @f75375_read16(%struct.i2c_client* %164, i32 %166)
  %168 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %169 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %168, i32 0, i32 4
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  store i8* %167, i8** %173, align 8
  br label %174

174:                                              ; preds = %153
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %150

177:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %192, %177
  %179 = load i32, i32* %5, align 4
  %180 = icmp slt i32 %179, 4
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  %182 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @F75375_REG_VOLT(i32 %183)
  %185 = call i8* @f75375_read8(%struct.i2c_client* %182, i32 %184)
  %186 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %187 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %186, i32 0, i32 3
  %188 = load i8**, i8*** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  store i8* %185, i8** %191, align 8
  br label %192

192:                                              ; preds = %181
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %178

195:                                              ; preds = %178
  %196 = load i8*, i8** @jiffies, align 8
  %197 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %198 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  %199 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %200 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %195, %144
  %202 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %203 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %202, i32 0, i32 1
  %204 = call i32 @mutex_unlock(i32* %203)
  %205 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  ret %struct.f75375_data* %205
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i8* @f75375_read8(%struct.i2c_client*, i32) #1

declare dso_local i32 @F75375_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @F75375_REG_TEMP_HYST(i32) #1

declare dso_local i8* @f75375_read16(%struct.i2c_client*, i32) #1

declare dso_local i32 @F75375_REG_FAN_FULL(i32) #1

declare dso_local i32 @F75375_REG_FAN_MIN(i32) #1

declare dso_local i32 @F75375_REG_FAN_EXP(i32) #1

declare dso_local i32 @F75375_REG_FAN_PWM_DUTY(i32) #1

declare dso_local i32 @F75375_REG_VOLT_HIGH(i32) #1

declare dso_local i32 @F75375_REG_VOLT_LOW(i32) #1

declare dso_local i32 @F75375_REG_TEMP(i32) #1

declare dso_local i32 @F75375_REG_FAN(i32) #1

declare dso_local i32 @F75375_REG_VOLT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
