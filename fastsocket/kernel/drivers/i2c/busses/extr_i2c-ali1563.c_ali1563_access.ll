; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }

@ALI1563_MAX_TIMEOUT = common dso_local global i32 0, align 4
@SMB_HST_STS = common dso_local global i32 0, align 4
@HST_STS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SMBus not idle. HST_STS = %02x\0A\00", align 1
@HST_CNTL2_QUICK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SMB_HST_ADD = common dso_local global i32 0, align 4
@SMB_HST_CNTL2 = common dso_local global i32 0, align 4
@HST_CNTL2_SIZEMASK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMB_HST_DAT0 = common dso_local global i32 0, align 4
@SMB_HST_CMD = common dso_local global i32 0, align 4
@SMB_HST_DAT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @ali1563_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1563_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.i2c_smbus_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @ALI1563_MAX_TIMEOUT, align 4
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %30, %7
  %20 = load i32, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* @SMB_HST_STS, align 4
  %24 = call i32 @inb_p(i32 %23)
  %25 = load i32, i32* @HST_STS_BUSY, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %16, align 4
  br label %19

33:                                               ; preds = %28, %19
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* @SMB_HST_STS, align 4
  %43 = call i32 @outb_p(i32 255, i32 %42)
  %44 = load i32, i32* %13, align 4
  switch i32 %44, label %51 [
    i32 129, label %45
    i32 131, label %47
    i32 130, label %48
    i32 128, label %49
    i32 132, label %50
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @HST_CNTL2_QUICK, align 4
  store i32 %46, i32* %13, align 4
  br label %58

47:                                               ; preds = %41
  store i32 135, i32* %13, align 4
  br label %58

48:                                               ; preds = %41
  store i32 134, i32* %13, align 4
  br label %58

49:                                               ; preds = %41
  store i32 133, i32* %13, align 4
  br label %58

50:                                               ; preds = %41
  store i32 136, i32* %13, align 4
  br label %58

51:                                               ; preds = %41
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %177

58:                                               ; preds = %50, %49, %48, %47, %45
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 127
  %61 = shl i32 %60, 1
  %62 = load i8, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = and i32 %63, 1
  %65 = or i32 %61, %64
  %66 = load i32, i32* @SMB_HST_ADD, align 4
  %67 = call i32 @outb_p(i32 %65, i32 %66)
  %68 = load i32, i32* @SMB_HST_CNTL2, align 4
  %69 = call i32 @inb_p(i32 %68)
  %70 = load i32, i32* @HST_CNTL2_SIZEMASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %73, 3
  %75 = or i32 %72, %74
  %76 = load i32, i32* @SMB_HST_CNTL2, align 4
  %77 = call i32 @outb_p(i32 %75, i32 %76)
  %78 = load i32, i32* %13, align 4
  switch i32 %78, label %138 [
    i32 135, label %79
    i32 134, label %90
    i32 133, label %106
    i32 136, label %130
  ]

79:                                               ; preds = %58
  %80 = load i8, i8* %11, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @SMB_HST_DAT0, align 4
  %88 = call i32 @outb_p(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %79
  br label %138

90:                                               ; preds = %58
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @SMB_HST_CMD, align 4
  %93 = call i32 @outb_p(i32 %91, i32 %92)
  %94 = load i8, i8* %11, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %101 = bitcast %union.i2c_smbus_data* %100 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SMB_HST_DAT0, align 4
  %104 = call i32 @outb_p(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %90
  br label %138

106:                                              ; preds = %58
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @SMB_HST_CMD, align 4
  %109 = call i32 @outb_p(i32 %107, i32 %108)
  %110 = load i8, i8* %11, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %106
  %116 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %117 = bitcast %union.i2c_smbus_data* %116 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 255
  %120 = load i32, i32* @SMB_HST_DAT0, align 4
  %121 = call i32 @outb_p(i32 %119, i32 %120)
  %122 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %123 = bitcast %union.i2c_smbus_data* %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 65280
  %126 = ashr i32 %125, 8
  %127 = load i32, i32* @SMB_HST_DAT1, align 4
  %128 = call i32 @outb_p(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %115, %106
  br label %138

130:                                              ; preds = %58
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @SMB_HST_CMD, align 4
  %133 = call i32 @outb_p(i32 %131, i32 %132)
  %134 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %135 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %136 = load i8, i8* %11, align 1
  %137 = call i32 @ali1563_block(%struct.i2c_adapter* %134, %union.i2c_smbus_data* %135, i8 signext %136)
  store i32 %137, i32* %15, align 4
  br label %177

138:                                              ; preds = %58, %129, %105, %89
  %139 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @ali1563_transaction(%struct.i2c_adapter* %139, i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %177

144:                                              ; preds = %138
  %145 = load i8, i8* %11, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %154, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @HST_CNTL2_QUICK, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %144
  br label %177

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  switch i32 %156, label %176 [
    i32 135, label %157
    i32 134, label %162
    i32 133, label %167
  ]

157:                                              ; preds = %155
  %158 = load i32, i32* @SMB_HST_DAT0, align 4
  %159 = call i32 @inb_p(i32 %158)
  %160 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %161 = bitcast %union.i2c_smbus_data* %160 to i32*
  store i32 %159, i32* %161, align 4
  br label %176

162:                                              ; preds = %155
  %163 = load i32, i32* @SMB_HST_DAT0, align 4
  %164 = call i32 @inb_p(i32 %163)
  %165 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %166 = bitcast %union.i2c_smbus_data* %165 to i32*
  store i32 %164, i32* %166, align 4
  br label %176

167:                                              ; preds = %155
  %168 = load i32, i32* @SMB_HST_DAT0, align 4
  %169 = call i32 @inb_p(i32 %168)
  %170 = load i32, i32* @SMB_HST_DAT1, align 4
  %171 = call i32 @inb_p(i32 %170)
  %172 = shl i32 %171, 8
  %173 = add nsw i32 %169, %172
  %174 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %14, align 8
  %175 = bitcast %union.i2c_smbus_data* %174 to i32*
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %155, %167, %162, %157
  br label %177

177:                                              ; preds = %176, %154, %143, %130, %51
  %178 = load i32, i32* %15, align 4
  ret i32 %178
}

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @ali1563_block(%struct.i2c_adapter*, %union.i2c_smbus_data*, i8 signext) #1

declare dso_local i32 @ali1563_transaction(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
