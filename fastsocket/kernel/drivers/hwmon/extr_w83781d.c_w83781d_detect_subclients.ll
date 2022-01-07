; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_detect_subclients.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_detect_subclients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.w83781d_data = type { i32, i32* }

@force_subclients = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Invalid subclient address %d; must be 0x48-0x4f\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@W83781D_REG_I2C_SUBADDR = common dso_local global i32 0, align 4
@w83783s = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Duplicate addresses 0x%x for subclients.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Subclient %d registration at address 0x%x failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @w83781d_detect_subclients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_detect_subclients(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i16], align 2
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.w83781d_data*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call %struct.w83781d_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.w83781d_data* %20, %struct.w83781d_data** %11, align 8
  %21 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %22 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %25 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** @force_subclients, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %1
  %32 = load i32*, i32** @force_subclients, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %89

37:                                               ; preds = %31
  store i32 2, i32* %4, align 4
  br label %38

38:                                               ; preds = %67, %37
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %39, 3
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load i32*, i32** @force_subclients, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 72
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** @force_subclients, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 79
  br i1 %54, label %55, label %66

55:                                               ; preds = %48, %41
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load i32*, i32** @force_subclients, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %204

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %38

70:                                               ; preds = %38
  %71 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %72 = load i32, i32* @W83781D_REG_I2C_SUBADDR, align 4
  %73 = load i32*, i32** @force_subclients, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 7
  %77 = load i32*, i32** @force_subclients, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 7
  %81 = shl i32 %80, 4
  %82 = or i32 %76, %81
  %83 = call i32 @w83781d_write_value(%struct.w83781d_data* %71, i32 %72, i32 %82)
  %84 = load i32*, i32** @force_subclients, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  store i16 %87, i16* %88, align 2
  br label %98

89:                                               ; preds = %31, %1
  %90 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %91 = load i32, i32* @W83781D_REG_I2C_SUBADDR, align 4
  %92 = call i32 @w83781d_read_value(%struct.w83781d_data* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 7
  %95 = add nsw i32 72, %94
  %96 = trunc i32 %95 to i16
  %97 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  store i16 %96, i16* %97, align 2
  br label %98

98:                                               ; preds = %89, %70
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @w83783s, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %145

102:                                              ; preds = %98
  %103 = load i32*, i32** @force_subclients, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load i32*, i32** @force_subclients, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i32*, i32** @force_subclients, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 1
  store i16 %118, i16* %119, align 2
  br label %127

120:                                              ; preds = %108, %102
  %121 = load i32, i32* %5, align 4
  %122 = ashr i32 %121, 4
  %123 = and i32 %122, 7
  %124 = add nsw i32 72, %123
  %125 = trunc i32 %124 to i16
  %126 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 1
  store i16 %125, i16* %126, align 2
  br label %127

127:                                              ; preds = %120, %114
  %128 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  %129 = load i16, i16* %128, align 2
  %130 = zext i16 %129 to i32
  %131 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 1
  %132 = load i16, i16* %131, align 2
  %133 = zext i16 %132 to i32
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %127
  %136 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 1
  %138 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  %139 = load i16, i16* %138, align 2
  %140 = zext i16 %139 to i32
  %141 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EBUSY, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %203

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144, %98
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %192, %145
  %147 = load i32, i32* %4, align 4
  %148 = icmp sle i32 %147, 1
  br i1 %148, label %149, label %195

149:                                              ; preds = %146
  %150 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 %152
  %154 = load i16, i16* %153, align 2
  %155 = call i32 @i2c_new_dummy(%struct.i2c_adapter* %150, i16 zeroext %154)
  %156 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %157 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %163 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %186, label %170

170:                                              ; preds = %149
  %171 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 1
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i32
  %179 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %178)
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %170
  br label %196

185:                                              ; preds = %170
  br label %203

186:                                              ; preds = %149
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @w83783s, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %195

191:                                              ; preds = %186
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %146

195:                                              ; preds = %190, %146
  store i32 0, i32* %2, align 4
  br label %206

196:                                              ; preds = %184
  %197 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %198 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @i2c_unregister_device(i32 %201)
  br label %203

203:                                              ; preds = %196, %185, %135
  br label %204

204:                                              ; preds = %203, %55
  %205 = load i32, i32* %7, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %204, %195
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.w83781d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @i2c_new_dummy(%struct.i2c_adapter*, i16 zeroext) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
