; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_scx200_acb.c_scx200_acb_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.scx200_acb_iface = type { i32, i32, i32*, i32, i32, i64, i32, i64 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"size=%d, address=0x%x, command=0x%x, len=%d, read=%d\0A\00", align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"zero length read\0A\00", align 1
@ACBCTL1 = common dso_local global i32 0, align 4
@ACBCTL1_START = common dso_local global i32 0, align 4
@state_quick = common dso_local global i64 0, align 8
@state_address = common dso_local global i64 0, align 8
@state_idle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @scx200_acb_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scx200_acb_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.scx200_acb_iface*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %22 = call %struct.scx200_acb_iface* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.scx200_acb_iface* %22, %struct.scx200_acb_iface** %16, align 8
  %23 = load i32, i32* %14, align 4
  switch i32 %23, label %63 [
    i32 129, label %24
    i32 132, label %25
    i32 131, label %35
    i32 128, label %38
    i32 130, label %43
  ]

24:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  br label %66

25:                                               ; preds = %7
  store i32 1, i32* %17, align 4
  %26 = load i8, i8* %12, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %31 = bitcast %union.i2c_smbus_data* %30 to i32*
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32* [ %31, %29 ], [ %13, %32 ]
  store i32* %34, i32** %18, align 8
  br label %66

35:                                               ; preds = %7
  store i32 1, i32* %17, align 4
  %36 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %37 = bitcast %union.i2c_smbus_data* %36 to i32*
  store i32* %37, i32** %18, align 8
  br label %66

38:                                               ; preds = %7
  store i32 2, i32* %17, align 4
  %39 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %40 = bitcast %union.i2c_smbus_data* %39 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_le16(i32 %41)
  store i32 %42, i32* %19, align 4
  store i32* %19, i32** %18, align 8
  br label %66

43:                                               ; preds = %7
  %44 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %45 = bitcast %union.i2c_smbus_data* %44 to i32**
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %178

58:                                               ; preds = %51
  %59 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %60 = bitcast %union.i2c_smbus_data* %59 to i32**
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32* %62, i32** %18, align 8
  br label %66

63:                                               ; preds = %7
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %178

66:                                               ; preds = %58, %38, %35, %33, %24
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i8, i8* %12, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %74)
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %66
  %79 = load i8, i8* %12, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* @I2C_SMBUS_READ, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %86 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %85, i32 0, i32 0
  %87 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %178

90:                                               ; preds = %78, %66
  %91 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %92 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %91, i32 0, i32 6
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 %94, 1
  %96 = load i8, i8* %12, align 1
  %97 = sext i8 %96 to i32
  %98 = or i32 %95, %97
  %99 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %100 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %103 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %18, align 8
  %105 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %106 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %109 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  %112 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %113 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %115 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @ACBCTL1, align 4
  %117 = call i32 @inb(i32 %116)
  %118 = load i32, i32* @ACBCTL1_START, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @ACBCTL1, align 4
  %121 = call i32 @outb(i32 %119, i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp eq i32 %122, 129
  br i1 %123, label %127, label %124

124:                                              ; preds = %90
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 132
  br i1 %126, label %127, label %131

127:                                              ; preds = %124, %90
  %128 = load i64, i64* @state_quick, align 8
  %129 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %130 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %129, i32 0, i32 5
  store i64 %128, i64* %130, align 8
  br label %135

131:                                              ; preds = %124
  %132 = load i64, i64* @state_address, align 8
  %133 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %134 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  br label %136

136:                                              ; preds = %142, %135
  %137 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %138 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @state_idle, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %144 = call i32 @scx200_acb_poll(%struct.scx200_acb_iface* %143)
  br label %136

145:                                              ; preds = %136
  %146 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %147 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %152 = call i32 @scx200_acb_reset(%struct.scx200_acb_iface* %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %155 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %20, align 4
  %157 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %16, align 8
  %158 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %157, i32 0, i32 6
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load i32, i32* %20, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %153
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 128
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i8, i8* %12, align 1
  %167 = sext i8 %166 to i32
  %168 = load i8, i8* @I2C_SMBUS_READ, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  %174 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %175 = bitcast %union.i2c_smbus_data* %174 to i32*
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %171, %165, %162, %153
  %177 = load i32, i32* %20, align 4
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %176, %84, %63, %55
  %179 = load i32, i32* %8, align 4
  ret i32 %179
}

declare dso_local %struct.scx200_acb_iface* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @scx200_acb_poll(%struct.scx200_acb_iface*) #1

declare dso_local i32 @scx200_acb_reset(%struct.scx200_acb_iface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
