; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tps65010.c_tps65010_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tps65010.c_tps65010_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65010 = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@TPS_REGSTATUS = common dso_local global i32 0, align 4
@TPS_REG_ONOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: power off button\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@TPS_CHGSTATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"chg/irq\00", align 1
@TPS_CHG_USB = common dso_local global i32 0, align 4
@TPS_CHG_AC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"conf\00", align 1
@TPS_CHARGE_ENABLE = common dso_local global i32 0, align 4
@FLAG_VBUS_CHANGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: battery %scharging\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@TPS65013 = common dso_local global i64 0, align 8
@POWER_POLL_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tps65010*)* @tps65010_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps65010_interrupt(%struct.tps65010* %0) #0 {
  %2 = alloca %struct.tps65010*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tps65010* %0, %struct.tps65010** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %8 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %13 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TPS_REGSTATUS, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %19 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %24 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %26 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %37 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @TPS_REG_ONOFF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @DRIVER_NAME, align 4
  %44 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %48 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %53 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TPS_CHGSTATUS, align 4
  %56 = call i32 @i2c_smbus_read_byte_data(i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %59 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %57, %60
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %64 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %66 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %174

74:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @show_chgstatus(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @TPS_CHG_USB, align 4
  %79 = load i32, i32* @TPS_CHG_AC, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %85 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %88 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @show_chgconfig(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83, %74
  %92 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %93 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TPS_CHG_USB, align 4
  %96 = load i32, i32* @TPS_CHG_AC, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = and i32 %94, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %145, label %101

101:                                              ; preds = %91
  %102 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %103 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TPS_CHG_USB, align 4
  %106 = load i32, i32* @TPS_CHG_AC, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %145

110:                                              ; preds = %101
  %111 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %112 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TPS_CHARGE_ENABLE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %110
  %118 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %119 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TPS_CHG_USB, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @TPS_CHG_USB, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* @FLAG_VBUS_CHANGED, align 4
  %131 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %132 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %131, i32 0, i32 8
  %133 = call i32 @set_bit(i32 %130, i32* %132)
  br label %134

134:                                              ; preds = %129, %124
  store i32 1, i32* %6, align 4
  br label %144

135:                                              ; preds = %117
  %136 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %137 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TPS_CHG_AC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 1, i32* %6, align 4
  br label %143

143:                                              ; preds = %142, %135
  br label %144

144:                                              ; preds = %143, %134
  br label %145

145:                                              ; preds = %144, %110, %101, %91
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %148 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %173

151:                                              ; preds = %145
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %154 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @DRIVER_NAME, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %170

159:                                              ; preds = %151
  %160 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %161 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TPS_CHG_USB, align 4
  %164 = load i32, i32* @TPS_CHG_AC, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  br label %170

170:                                              ; preds = %159, %158
  %171 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %158 ], [ %169, %159 ]
  %172 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %155, i8* %171)
  br label %173

173:                                              ; preds = %170, %145
  br label %174

174:                                              ; preds = %173, %71
  %175 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %176 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TPS65013, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %174
  %181 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %182 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %180, %174
  %186 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %187 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @TPS_CHG_USB, align 4
  %190 = load i32, i32* @TPS_CHG_AC, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  store i32 1, i32* %5, align 4
  br label %195

195:                                              ; preds = %194, %185, %180
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.tps65010*, %struct.tps65010** %2, align 8
  %200 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %199, i32 0, i32 7
  %201 = load i32, i32* @POWER_POLL_DELAY, align 4
  %202 = call i32 @schedule_delayed_work(i32* %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %195
  ret void
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @show_chgstatus(i8*, i32) #1

declare dso_local i32 @show_chgconfig(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
