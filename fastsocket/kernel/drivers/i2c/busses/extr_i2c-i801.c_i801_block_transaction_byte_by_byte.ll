; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_byte_by_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_byte_by_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_SMBUS_I2C_BLOCK_DATA = common dso_local global i32 0, align 4
@I801_I2C_BLOCK_LAST = common dso_local global i32 0, align 4
@I801_BLOCK_LAST = common dso_local global i32 0, align 4
@I801_I2C_BLOCK_DATA = common dso_local global i32 0, align 4
@I801_BLOCK_DATA = common dso_local global i32 0, align 4
@ENABLE_INT9 = common dso_local global i32 0, align 4
@I801_START = common dso_local global i32 0, align 4
@SMBHSTSTS_BYTE_DONE = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Illegal SMBus block read size %d\0A\00", align 1
@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@SMBHSTSTS_INTR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, %union.i2c_smbus_data*, i8, i32, i32)* @i801_block_transaction_byte_by_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_block_transaction_byte_by_byte(%struct.i801_priv* %0, %union.i2c_smbus_data* %1, i8 signext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i801_priv*, align 8
  %8 = alloca %union.i2c_smbus_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %7, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %19 = call i32 @i801_check_pre(%struct.i801_priv* %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %6, align 4
  br label %240

24:                                               ; preds = %5
  %25 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %26 = bitcast %union.i2c_smbus_data* %25 to i32**
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %24
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %38 = call i32 @SMBHSTDAT0(%struct.i801_priv* %37)
  %39 = call i32 @outb_p(i32 %36, i32 %38)
  %40 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %41 = bitcast %union.i2c_smbus_data* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %46 = call i32 @SMBBLKDAT(%struct.i801_priv* %45)
  %47 = call i32 @outb_p(i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %35, %24
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %236, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %239

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load i8, i8* %9, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* @I2C_SMBUS_READ, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @I801_I2C_BLOCK_LAST, align 4
  store i32 %68, i32* %14, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @I801_BLOCK_LAST, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %67
  br label %87

72:                                               ; preds = %57, %53
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i8, i8* %9, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* @I2C_SMBUS_READ, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @I801_I2C_BLOCK_DATA, align 4
  store i32 %83, i32* %14, align 4
  br label %86

84:                                               ; preds = %76, %72
  %85 = load i32, i32* @I801_BLOCK_DATA, align 4
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @ENABLE_INT9, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %92 = call i32 @SMBHSTCNT(%struct.i801_priv* %91)
  %93 = call i32 @outb_p(i32 %90, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %105

96:                                               ; preds = %87
  %97 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %98 = call i32 @SMBHSTCNT(%struct.i801_priv* %97)
  %99 = call i32 @inb(i32 %98)
  %100 = load i32, i32* @I801_START, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %103 = call i32 @SMBHSTCNT(%struct.i801_priv* %102)
  %104 = call i32 @outb_p(i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %96, %87
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = call i32 @msleep(i32 1)
  %108 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %109 = call i32 @SMBHSTSTS(%struct.i801_priv* %108)
  %110 = call i32 @inb_p(i32 %109)
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* @MAX_TIMEOUT, align 4
  %120 = icmp slt i32 %117, %119
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i1 [ false, %111 ], [ %120, %116 ]
  br i1 %122, label %106, label %123

123:                                              ; preds = %121
  %124 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @MAX_TIMEOUT, align 4
  %128 = icmp sgt i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @i801_check_post(%struct.i801_priv* %124, i32 %125, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %6, align 4
  br label %240

135:                                              ; preds = %123
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %190

138:                                              ; preds = %135
  %139 = load i8, i8* %9, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @I2C_SMBUS_READ, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %190

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %190

148:                                              ; preds = %144
  %149 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %150 = call i32 @SMBHSTDAT0(%struct.i801_priv* %149)
  %151 = call i32 @inb_p(i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %184

158:                                              ; preds = %154, %148
  %159 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %160 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %172, %158
  %166 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %167 = call i32 @SMBHSTSTS(%struct.i801_priv* %166)
  %168 = call i32 @inb_p(i32 %167)
  %169 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %174 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %175 = call i32 @SMBHSTSTS(%struct.i801_priv* %174)
  %176 = call i32 @outb_p(i32 %173, i32 %175)
  br label %165

177:                                              ; preds = %165
  %178 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %179 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %180 = call i32 @SMBHSTSTS(%struct.i801_priv* %179)
  %181 = call i32 @outb_p(i32 %178, i32 %180)
  %182 = load i32, i32* @EPROTO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %6, align 4
  br label %240

184:                                              ; preds = %154
  %185 = load i32, i32* %13, align 4
  %186 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %187 = bitcast %union.i2c_smbus_data* %186 to i32**
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %144, %138, %135
  %191 = load i8, i8* %9, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8, i8* @I2C_SMBUS_READ, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %190
  %197 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %198 = call i32 @SMBBLKDAT(%struct.i801_priv* %197)
  %199 = call i32 @inb_p(i32 %198)
  %200 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %201 = bitcast %union.i2c_smbus_data* %200 to i32**
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %199, i32* %205, align 4
  br label %206

206:                                              ; preds = %196, %190
  %207 = load i8, i8* %9, align 1
  %208 = sext i8 %207 to i32
  %209 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %206
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %13, align 4
  %216 = icmp sle i32 %214, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %219 = bitcast %union.i2c_smbus_data* %218 to i32**
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %227 = call i32 @SMBBLKDAT(%struct.i801_priv* %226)
  %228 = call i32 @outb_p(i32 %225, i32 %227)
  br label %229

229:                                              ; preds = %217, %212, %206
  %230 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %231 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %234 = call i32 @SMBHSTSTS(%struct.i801_priv* %233)
  %235 = call i32 @outb_p(i32 %232, i32 %234)
  br label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  br label %49

239:                                              ; preds = %49
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %239, %177, %133, %22
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i32 @i801_check_pre(%struct.i801_priv*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i801_priv*) #1

declare dso_local i32 @SMBBLKDAT(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @i801_check_post(%struct.i801_priv*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
