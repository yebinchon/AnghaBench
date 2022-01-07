; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-i2c.c_init_cx18_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-i2c.c_init_cx18_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_10__*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, %struct.cx18* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i64, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"i2c init\0A\00", align 1
@cx18_i2c_algo_template = common dso_local global i32 0, align 4
@cx18_i2c_adap_template = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" #%d-%d\00", align 1
@CX18_REG_I2C_2_WR = common dso_local global i32 0, align 4
@HW2_I2C1_INT = common dso_local global i32 0, align 4
@HW2_I2C2_INT = common dso_local global i32 0, align 4
@HW2_INT_CLR_STATUS = common dso_local global i32 0, align 4
@CX18_REG_I2C_1_WR = common dso_local global i32 0, align 4
@CX18_HW_GPIO_RESET_CTRL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@CX18_GPIO_RESET_I2C = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_cx18_i2c(%struct.cx18* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  %6 = call i32 @CX18_DEBUG_I2C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %111, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %114

10:                                               ; preds = %7
  %11 = load %struct.cx18*, %struct.cx18** %3, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 5
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 %15
  %17 = call i32 @memcpy(%struct.TYPE_11__* %16, i32* @cx18_i2c_algo_template, i32 4)
  %18 = load %struct.cx18*, %struct.cx18** %3, align 8
  %19 = load %struct.cx18*, %struct.cx18** %3, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store %struct.cx18* %18, %struct.cx18** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cx18*, %struct.cx18** %3, align 8
  %28 = getelementptr inbounds %struct.cx18, %struct.cx18* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 8
  %34 = load %struct.cx18*, %struct.cx18** %3, align 8
  %35 = getelementptr inbounds %struct.cx18, %struct.cx18* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %38
  %40 = load %struct.cx18*, %struct.cx18** %3, align 8
  %41 = getelementptr inbounds %struct.cx18, %struct.cx18* %40, i32 0, i32 5
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %46, align 8
  %47 = load %struct.cx18*, %struct.cx18** %3, align 8
  %48 = getelementptr inbounds %struct.cx18, %struct.cx18* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = call i32 @memcpy(%struct.TYPE_11__* %52, i32* @cx18_i2c_adap_template, i32 4)
  %54 = load %struct.cx18*, %struct.cx18** %3, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 5
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %58
  %60 = load %struct.cx18*, %struct.cx18** %3, align 8
  %61 = getelementptr inbounds %struct.cx18, %struct.cx18* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.cx18*, %struct.cx18** %3, align 8
  %68 = getelementptr inbounds %struct.cx18, %struct.cx18* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cx18*, %struct.cx18** %3, align 8
  %76 = getelementptr inbounds %struct.cx18, %struct.cx18* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @strlen(i64 %82)
  %84 = add nsw i64 %74, %83
  %85 = load %struct.cx18*, %struct.cx18** %3, align 8
  %86 = getelementptr inbounds %struct.cx18, %struct.cx18* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @sprintf(i64 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.cx18*, %struct.cx18** %3, align 8
  %91 = getelementptr inbounds %struct.cx18, %struct.cx18* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %94
  %96 = load %struct.cx18*, %struct.cx18** %3, align 8
  %97 = getelementptr inbounds %struct.cx18, %struct.cx18* %96, i32 0, i32 4
  %98 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %95, i32* %97)
  %99 = load %struct.cx18*, %struct.cx18** %3, align 8
  %100 = getelementptr inbounds %struct.cx18, %struct.cx18* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.cx18*, %struct.cx18** %3, align 8
  %104 = getelementptr inbounds %struct.cx18, %struct.cx18* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32* %102, i32** %110, align 8
  br label %111

111:                                              ; preds = %10
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %7

114:                                              ; preds = %7
  %115 = load %struct.cx18*, %struct.cx18** %3, align 8
  %116 = load i32, i32* @CX18_REG_I2C_2_WR, align 4
  %117 = call i32 @cx18_read_reg(%struct.cx18* %115, i32 %116)
  %118 = icmp ne i32 %117, 245807
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.cx18*, %struct.cx18** %3, align 8
  %121 = call i32 @cx18_write_reg_expect(%struct.cx18* %120, i32 268435456, i32 13045764, i32 0, i32 268439552)
  %122 = load %struct.cx18*, %struct.cx18** %3, align 8
  %123 = call i32 @cx18_write_reg_expect(%struct.cx18* %122, i32 268439552, i32 13045796, i32 4096, i32 268439552)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.cx18*, %struct.cx18** %3, align 8
  %126 = call i32 @cx18_write_reg_expect(%struct.cx18* %125, i32 12582912, i32 13041692, i32 0, i32 12583104)
  %127 = call i32 @mdelay(i32 10)
  %128 = load %struct.cx18*, %struct.cx18** %3, align 8
  %129 = call i32 @cx18_write_reg_expect(%struct.cx18* %128, i32 12583104, i32 13041692, i32 192, i32 12583104)
  %130 = call i32 @mdelay(i32 10)
  %131 = load %struct.cx18*, %struct.cx18** %3, align 8
  %132 = call i32 @cx18_write_reg_expect(%struct.cx18* %131, i32 12582912, i32 13041692, i32 0, i32 12583104)
  %133 = call i32 @mdelay(i32 10)
  %134 = load %struct.cx18*, %struct.cx18** %3, align 8
  %135 = call i32 @cx18_write_reg(%struct.cx18* %134, i32 12582912, i32 13054152)
  %136 = load %struct.cx18*, %struct.cx18** %3, align 8
  %137 = load i32, i32* @HW2_I2C1_INT, align 4
  %138 = load i32, i32* @HW2_I2C2_INT, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @HW2_INT_CLR_STATUS, align 4
  %141 = load i32, i32* @HW2_I2C1_INT, align 4
  %142 = load i32, i32* @HW2_I2C2_INT, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* @HW2_I2C1_INT, align 4
  %146 = load i32, i32* @HW2_I2C2_INT, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @cx18_write_reg_expect(%struct.cx18* %136, i32 %139, i32 %140, i32 %144, i32 %147)
  %149 = load %struct.cx18*, %struct.cx18** %3, align 8
  %150 = load i32, i32* @CX18_REG_I2C_1_WR, align 4
  %151 = call i32 @cx18_write_reg(%struct.cx18* %149, i32 138251, i32 %150)
  %152 = load %struct.cx18*, %struct.cx18** %3, align 8
  %153 = getelementptr inbounds %struct.cx18, %struct.cx18* %152, i32 0, i32 2
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 0
  %156 = call i32 @cx18_setscl(%struct.TYPE_12__* %155, i32 1)
  %157 = load %struct.cx18*, %struct.cx18** %3, align 8
  %158 = getelementptr inbounds %struct.cx18, %struct.cx18* %157, i32 0, i32 2
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 0
  %161 = call i32 @cx18_setsda(%struct.TYPE_12__* %160, i32 1)
  %162 = load %struct.cx18*, %struct.cx18** %3, align 8
  %163 = load i32, i32* @CX18_REG_I2C_2_WR, align 4
  %164 = call i32 @cx18_write_reg(%struct.cx18* %162, i32 138251, i32 %163)
  %165 = load %struct.cx18*, %struct.cx18** %3, align 8
  %166 = getelementptr inbounds %struct.cx18, %struct.cx18* %165, i32 0, i32 2
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 1
  %169 = call i32 @cx18_setscl(%struct.TYPE_12__* %168, i32 1)
  %170 = load %struct.cx18*, %struct.cx18** %3, align 8
  %171 = getelementptr inbounds %struct.cx18, %struct.cx18* %170, i32 0, i32 2
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 1
  %174 = call i32 @cx18_setsda(%struct.TYPE_12__* %173, i32 1)
  %175 = load %struct.cx18*, %struct.cx18** %3, align 8
  %176 = load i32, i32* @CX18_HW_GPIO_RESET_CTRL, align 4
  %177 = load i32, i32* @core, align 4
  %178 = load i32, i32* @reset, align 4
  %179 = load i64, i64* @CX18_GPIO_RESET_I2C, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @cx18_call_hw(%struct.cx18* %175, i32 %176, i32 %177, i32 %178, i32 %180)
  %182 = load %struct.cx18*, %struct.cx18** %3, align 8
  %183 = getelementptr inbounds %struct.cx18, %struct.cx18* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 0
  %186 = call i32 @i2c_bit_add_bus(%struct.TYPE_11__* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %124
  br label %206

190:                                              ; preds = %124
  %191 = load %struct.cx18*, %struct.cx18** %3, align 8
  %192 = getelementptr inbounds %struct.cx18, %struct.cx18* %191, i32 0, i32 1
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 1
  %195 = call i32 @i2c_bit_add_bus(%struct.TYPE_11__* %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %190
  br label %200

199:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %208

200:                                              ; preds = %198
  %201 = load %struct.cx18*, %struct.cx18** %3, align 8
  %202 = getelementptr inbounds %struct.cx18, %struct.cx18* %201, i32 0, i32 1
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 0
  %205 = call i32 @i2c_del_adapter(%struct.TYPE_11__* %204)
  br label %206

206:                                              ; preds = %200, %189
  %207 = load i32, i32* %5, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %199
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @CX18_DEBUG_I2C(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_write_reg_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_setscl(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cx18_setsda(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cx18_call_hw(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_11__*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
