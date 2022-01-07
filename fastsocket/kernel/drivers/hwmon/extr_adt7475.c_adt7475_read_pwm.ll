; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_adt7475_read_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_adt7475_read_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i32**, i32*, i32* }

@CONTROL = common dso_local global i64 0, align 8
@INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32)* @adt7475_read_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adt7475_read_pwm(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adt7475_data*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.adt7475_data* %8, %struct.adt7475_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PWM_CONFIG_REG(i32 %9)
  %11 = call i32 @adt7475_read(i32 %10)
  %12 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %13 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %12, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = load i64, i64* @CONTROL, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %11, i32* %20, align 4
  %21 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %22 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* @CONTROL, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 5
  %32 = and i32 %31, 7
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %37 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 0, i32* %41, align 4
  br label %167

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %47 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 1, i32* %51, align 4
  br label %166

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %121

55:                                               ; preds = %52
  %56 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %57 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* @INPUT, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %66 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @CONTROL, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, -225
  store i32 %75, i32* %73, align 4
  %76 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %77 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i64, i64* @CONTROL, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 224
  store i32 %86, i32* %84, align 4
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @PWM_CONFIG_REG(i32 %88)
  %90 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %91 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* @INPUT, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %87, i32 %89, i32 %99)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @PWM_CONFIG_REG(i32 %102)
  %104 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %105 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i64, i64* @CONTROL, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %101, i32 %103, i32 %113)
  %115 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %116 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 1, i32* %120, align 4
  br label %165

121:                                              ; preds = %52
  %122 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %123 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 2, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  switch i32 %128, label %164 [
    i32 0, label %129
    i32 1, label %136
    i32 2, label %143
    i32 5, label %150
    i32 6, label %157
  ]

129:                                              ; preds = %121
  %130 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %131 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 1, i32* %135, align 4
  br label %164

136:                                              ; preds = %121
  %137 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %138 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 2, i32* %142, align 4
  br label %164

143:                                              ; preds = %121
  %144 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %145 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 4, i32* %149, align 4
  br label %164

150:                                              ; preds = %121
  %151 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %152 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 6, i32* %156, align 4
  br label %164

157:                                              ; preds = %121
  %158 = load %struct.adt7475_data*, %struct.adt7475_data** %5, align 8
  %159 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 7, i32* %163, align 4
  br label %164

164:                                              ; preds = %121, %157, %150, %143, %136, %129
  br label %165

165:                                              ; preds = %164, %55
  br label %166

166:                                              ; preds = %165, %45
  br label %167

167:                                              ; preds = %166, %35
  ret void
}

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @PWM_CONFIG_REG(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
