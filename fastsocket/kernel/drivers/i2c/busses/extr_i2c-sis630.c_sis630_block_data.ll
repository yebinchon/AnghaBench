; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_block_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis630.c_sis630_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@SMB_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"set data 0x%02x\0A\00", align 1
@SMB_BYTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"start trans len=%d i=%d\0A\00", align 1
@SIS630_BLOCK_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"trans_wait len=%d i=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"clear smbary_sts len=%d i=%d\0A\00", align 1
@SMB_STS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"trans_wait failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"block data read len=0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"read i=%d len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %union.i2c_smbus_data*, i32)* @sis630_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis630_block_data(%struct.i2c_adapter* %0, %union.i2c_smbus_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %union.i2c_smbus_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %127

15:                                               ; preds = %3
  %16 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %17 = bitcast %union.i2c_smbus_data* %16 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %29

24:                                               ; preds = %15
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 32
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 32, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i64, i64* @SMB_COUNT, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @sis630_write(i64 %30, i32 %31)
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %123, %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %126

37:                                               ; preds = %33
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 0
  %40 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %41 = bitcast %union.i2c_smbus_data* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @SMB_BYTE, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = srem i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %55 = bitcast %union.i2c_smbus_data* %54 to i32**
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sis630_write(i64 %53, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %71, label %64

64:                                               ; preds = %37
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67, %37
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %78 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %79 = call i32 @sis630_transaction_start(%struct.i2c_adapter* %77, i32 %78, i32* %11)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %241

84:                                               ; preds = %71
  br label %122

85:                                               ; preds = %67, %64
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = srem i32 %87, 8
  %89 = icmp eq i32 %88, 7
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %90, %85
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 8
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i64, i64* @SMB_STS, align 8
  %109 = call i32 @sis630_write(i64 %108, i32 16)
  br label %110

110:                                              ; preds = %102, %94
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %112 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %113 = call i32 @sis630_transaction_wait(%struct.i2c_adapter* %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %118 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %126

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121, %84
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %33

126:                                              ; preds = %116, %33
  br label %236

127:                                              ; preds = %3
  store i32 0, i32* %9, align 4
  %128 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %129 = bitcast %union.i2c_smbus_data* %128 to i32**
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 0, i32* %131, align 4
  %132 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %133 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %134 = call i32 @sis630_transaction_start(%struct.i2c_adapter* %132, i32 %133, i32* %11)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %4, align 4
  br label %241

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %227, %139
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %142 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %143 = call i32 @sis630_transaction_wait(%struct.i2c_adapter* %141, i32 %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %148 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %147, i32 0, i32 0
  %149 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %235

150:                                              ; preds = %140
  %151 = load i32, i32* %9, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %150
  %154 = load i64, i64* @SMB_COUNT, align 8
  %155 = call i8* @sis630_read(i64 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %158 = bitcast %union.i2c_smbus_data* %157 to i32**
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %153, %150
  %162 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %163 = bitcast %union.i2c_smbus_data* %162 to i32**
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %166, 32
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %170 = bitcast %union.i2c_smbus_data* %169 to i32**
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 32, i32* %172, align 4
  br label %173

173:                                              ; preds = %168, %161
  %174 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %175 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %174, i32 0, i32 0
  %176 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %177 = bitcast %union.i2c_smbus_data* %176 to i32**
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %214, %173
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 8
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32, i32* %9, align 4
  %187 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %188 = bitcast %union.i2c_smbus_data* %187 to i32**
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %186, %191
  br label %193

193:                                              ; preds = %185, %182
  %194 = phi i1 [ false, %182 ], [ %192, %185 ]
  br i1 %194, label %195, label %219

195:                                              ; preds = %193
  %196 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %197 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %196, i32 0, i32 0
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %197, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i64, i64* @SMB_BYTE, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %201, %203
  %205 = call i8* @sis630_read(i64 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %208 = bitcast %union.i2c_smbus_data* %207 to i32**
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  store i32 %206, i32* %213, align 4
  br label %214

214:                                              ; preds = %195
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %182

219:                                              ; preds = %193
  %220 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %221 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %220, i32 0, i32 0
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %221, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load i64, i64* @SMB_STS, align 8
  %226 = call i32 @sis630_write(i64 %225, i32 16)
  br label %227

227:                                              ; preds = %219
  %228 = load i32, i32* %9, align 4
  %229 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %230 = bitcast %union.i2c_smbus_data* %229 to i32**
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %228, %233
  br i1 %234, label %140, label %235

235:                                              ; preds = %227, %146
  br label %236

236:                                              ; preds = %235, %126
  %237 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @sis630_transaction_end(%struct.i2c_adapter* %237, i32 %238)
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %236, %137, %82
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @sis630_write(i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @sis630_transaction_start(%struct.i2c_adapter*, i32, i32*) #1

declare dso_local i32 @sis630_transaction_wait(%struct.i2c_adapter*, i32) #1

declare dso_local i8* @sis630_read(i64) #1

declare dso_local i32 @sis630_transaction_end(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
