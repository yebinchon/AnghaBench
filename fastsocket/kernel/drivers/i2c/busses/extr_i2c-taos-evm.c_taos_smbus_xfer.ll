; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-taos-evm.c_taos_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.serio* }
%struct.serio = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.taos_data = type { i8*, i64, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"@%02X\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"$#%02X\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"$%02X#%02X\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"$%02X\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Command buffer: %s\0A\00", align 1
@TAOS_STATE_RECV = common dso_local global i64 0, align 8
@wq = common dso_local global i32 0, align 4
@TAOS_STATE_IDLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Transaction timeout (pos=%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Answer buffer: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i64, i16, i8, i32, i32, %union.i2c_smbus_data*)* @taos_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taos_smbus_xfer(%struct.i2c_adapter* %0, i64 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.serio*, align 8
  %17 = alloca %struct.taos_data*, align 8
  %18 = alloca i8*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i64 %1, i64* %10, align 8
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %19, i32 0, i32 1
  %21 = load %struct.serio*, %struct.serio** %20, align 8
  store %struct.serio* %21, %struct.serio** %16, align 8
  %22 = load %struct.serio*, %struct.serio** %16, align 8
  %23 = call %struct.taos_data* @serio_get_drvdata(%struct.serio* %22)
  store %struct.taos_data* %23, %struct.taos_data** %17, align 8
  %24 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %25 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %18, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %29 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %7
  %33 = load i8*, i8** %18, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i8*, i8** %18, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %18, align 8
  br label %39

39:                                               ; preds = %32, %7
  %40 = load i32, i32* %14, align 4
  switch i32 %40, label %73 [
    i32 129, label %41
    i32 128, label %55
  ]

41:                                               ; preds = %39
  %42 = load i8, i8* %12, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8*, i8** %18, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %54

51:                                               ; preds = %41
  %52 = load i8*, i8** %18, align 8
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  br label %80

55:                                               ; preds = %39
  %56 = load i8, i8* %12, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i8*, i8** %18, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %65 = bitcast %union.i2c_smbus_data* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %66)
  br label %72

68:                                               ; preds = %55
  %69 = load i8*, i8** %18, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %61
  br label %80

73:                                               ; preds = %39
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %75 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %196

80:                                               ; preds = %72, %54
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %82 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %81, i32 0, i32 0
  %83 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %84 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  %87 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %88 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %18, align 8
  br label %90

90:                                               ; preds = %99, %80
  %91 = load i8*, i8** %18, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.serio*, %struct.serio** %16, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @serio_write(%struct.serio* %95, i8 signext %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %18, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %18, align 8
  br label %90

102:                                              ; preds = %90
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %105 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %107 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  %108 = load i64, i64* @TAOS_STATE_RECV, align 8
  %109 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %110 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  %111 = load %struct.serio*, %struct.serio** %16, align 8
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %113, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 62, i32 60
  %119 = trunc i32 %118 to i8
  %120 = call i32 @serio_write(%struct.serio* %111, i8 signext %119)
  %121 = load i32, i32* @wq, align 4
  %122 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %123 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @msecs_to_jiffies(i32 150)
  %129 = call i32 @wait_event_interruptible_timeout(i32 %121, i32 %127, i32 %128)
  %130 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %131 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TAOS_STATE_IDLE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %102
  %136 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %137 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 5
  br i1 %139, label %140, label %149

140:                                              ; preds = %135, %102
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %142 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %141, i32 0, i32 0
  %143 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %144 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %8, align 4
  br label %196

149:                                              ; preds = %135
  %150 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %151 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %150, i32 0, i32 0
  %152 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %153 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @dev_dbg(i32* %151, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %154)
  %156 = load %struct.taos_data*, %struct.taos_data** %17, align 8
  %157 = getelementptr inbounds %struct.taos_data, %struct.taos_data* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %159, i8** %18, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %18, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %149
  %166 = load i32, i32* @ENODEV, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %8, align 4
  br label %196

168:                                              ; preds = %149
  %169 = load i8, i8* %12, align 1
  %170 = sext i8 %169 to i32
  %171 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load i8*, i8** %18, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  store i32 0, i32* %8, align 4
  br label %196

179:                                              ; preds = %174
  br label %193

180:                                              ; preds = %168
  %181 = load i8*, i8** %18, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 0
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 120
  br i1 %185, label %186, label %192

186:                                              ; preds = %180
  %187 = load i8*, i8** %18, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = call i32 @simple_strtol(i8* %188, i32* null, i32 16)
  %190 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %191 = bitcast %union.i2c_smbus_data* %190 to i32*
  store i32 %189, i32* %191, align 4
  store i32 0, i32* %8, align 4
  br label %196

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192, %179
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %193, %186, %178, %165, %140, %73
  %197 = load i32, i32* %8, align 4
  ret i32 %197
}

declare dso_local %struct.taos_data* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @serio_write(%struct.serio*, i8 signext) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
