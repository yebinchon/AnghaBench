; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_eeprom_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at24.c_at24_eeprom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { i64, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32*, i32, i64, i32 }

@AT24_FLAG_ADDR16 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@write_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"write %zu@%d --> %zd (%ld)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at24_data*, i8*, i32, i64)* @at24_eeprom_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at24_eeprom_write(%struct.at24_data* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.at24_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.at24_data* %0, %struct.at24_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %18 = call %struct.i2c_client* @at24_translate_offset(%struct.at24_data* %17, i32* %8)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %21 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %26 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  %31 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %32 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @roundup(i32 %30, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %44, %45
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %43, %28
  %49 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %50 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %48
  store i32 0, i32* %16, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %60 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32* %61, i32** %62, align 8
  %63 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %64 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AT24_FLAG_ADDR16, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %53
  %71 = load i32, i32* %8, align 4
  %72 = lshr i32 %71, 8
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %53
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @memcpy(i32* %91, i8* %92, i64 %93)
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 %99, i32* %100, align 8
  br label %101

101:                                              ; preds = %79, %48
  %102 = load i64, i64* @jiffies, align 8
  %103 = load i32, i32* @write_timeout, align 4
  %104 = call i64 @msecs_to_jiffies(i32 %103)
  %105 = add i64 %102, %104
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %152, %101
  %107 = load i64, i64* @jiffies, align 8
  store i64 %107, i64* %14, align 8
  %108 = load %struct.at24_data*, %struct.at24_data** %6, align 8
  %109 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %9, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %113, i32 %114, i64 %115, i8* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i64, i64* %9, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %120, %112
  br label %135

124:                                              ; preds = %106
  %125 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @i2c_transfer(i32 %127, %struct.i2c_msg* %11, i32 1)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i64, i64* %9, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134, %123
  %136 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i64, i64* %9, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i64, i64* @jiffies, align 8
  %142 = call i32 @dev_dbg(i32* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %138, i32 %139, i32 %140, i64 %141)
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %9, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load i64, i64* %9, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %5, align 4
  br label %160

150:                                              ; preds = %135
  %151 = call i32 @msleep(i32 1)
  br label %152

152:                                              ; preds = %150
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i64 @time_before(i64 %153, i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %106, label %157

157:                                              ; preds = %152
  %158 = load i32, i32* @ETIMEDOUT, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %157, %147
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.i2c_client* @at24_translate_offset(%struct.at24_data*, i32*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i32, i64, i8*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
