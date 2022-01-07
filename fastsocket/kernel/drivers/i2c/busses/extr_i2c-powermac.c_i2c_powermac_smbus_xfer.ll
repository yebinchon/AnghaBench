; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.pmac_i2c_bus = type { i32 }

@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@pmac_i2c_mode_std = common dso_local global i32 0, align 4
@pmac_i2c_mode_combined = common dso_local global i32 0, align 4
@pmac_i2c_mode_stdsub = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @i2c_powermac_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_powermac_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.pmac_i2c_bus*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %22 = call %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.pmac_i2c_bus* %22, %struct.pmac_i2c_bus** %16, align 8
  store i32 0, i32* %17, align 4
  %23 = load i8, i8* %12, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @I2C_SMBUS_READ, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 1
  %31 = load i32, i32* %18, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %19, align 4
  %33 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %34 = call i32 @pmac_i2c_open(%struct.pmac_i2c_bus* %33, i32 0)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %8, align 4
  br label %203

39:                                               ; preds = %7
  %40 = load i32, i32* %14, align 4
  switch i32 %40, label %195 [
    i32 129, label %41
    i32 132, label %52
    i32 131, label %65
    i32 128, label %86
    i32 133, label %139
    i32 130, label %167
  ]

41:                                               ; preds = %39
  %42 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %43 = load i32, i32* @pmac_i2c_mode_std, align 4
  %44 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %42, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %199

48:                                               ; preds = %41
  %49 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %49, i32 %50, i32 0, i32 0, i32* null, i32 0)
  store i32 %51, i32* %17, align 4
  br label %198

52:                                               ; preds = %39
  %53 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %54 = load i32, i32* @pmac_i2c_mode_std, align 4
  %55 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %53, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %199

59:                                               ; preds = %52
  %60 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %61 = load i32, i32* %19, align 4
  %62 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %63 = bitcast %union.i2c_smbus_data* %62 to i32*
  %64 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %60, i32 %61, i32 0, i32 0, i32* %63, i32 1)
  store i32 %64, i32* %17, align 4
  br label %198

65:                                               ; preds = %39
  %66 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @pmac_i2c_mode_combined, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @pmac_i2c_mode_stdsub, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %66, i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %199

79:                                               ; preds = %73
  %80 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %84 = bitcast %union.i2c_smbus_data* %83 to i32*
  %85 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %80, i32 %81, i32 1, i32 %82, i32* %84, i32 1)
  store i32 %85, i32* %17, align 4
  br label %198

86:                                               ; preds = %39
  %87 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @pmac_i2c_mode_combined, align 4
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @pmac_i2c_mode_stdsub, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %87, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %199

100:                                              ; preds = %94
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %105 = bitcast %union.i2c_smbus_data* %104 to i32*
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 255
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %107, i32* %108, align 4
  %109 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %110 = bitcast %union.i2c_smbus_data* %109 to i32*
  %111 = load i32, i32* %110, align 8
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 255
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %103, %100
  %116 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %13, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %120 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %116, i32 %117, i32 1, i32 %118, i32* %119, i32 2)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %115
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %131 = bitcast %union.i2c_smbus_data* %130 to i32*
  store i32 %129, i32* %131, align 8
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %135 = bitcast %union.i2c_smbus_data* %134 to i32*
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %126, %123, %115
  br label %198

139:                                              ; preds = %39
  %140 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* @pmac_i2c_mode_combined, align 4
  br label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @pmac_i2c_mode_stdsub, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %140, i32 %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %199

153:                                              ; preds = %147
  %154 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %158 = bitcast %union.i2c_smbus_data* %157 to i32**
  %159 = load i32*, i32** %158, align 8
  %160 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %161 = bitcast %union.i2c_smbus_data* %160 to i32**
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  %166 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %154, i32 %155, i32 1, i32 %156, i32* %159, i32 %165)
  store i32 %166, i32* %17, align 4
  br label %198

167:                                              ; preds = %39
  %168 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %169 = load i32, i32* %18, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @pmac_i2c_mode_combined, align 4
  br label %175

173:                                              ; preds = %167
  %174 = load i32, i32* @pmac_i2c_mode_stdsub, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %177 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %168, i32 %176)
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %199

181:                                              ; preds = %175
  %182 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %186 = bitcast %union.i2c_smbus_data* %185 to i32**
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %190 = bitcast %union.i2c_smbus_data* %189 to i32**
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %182, i32 %183, i32 1, i32 %184, i32* %188, i32 %193)
  store i32 %194, i32* %17, align 4
  br label %198

195:                                              ; preds = %39
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %17, align 4
  br label %198

198:                                              ; preds = %195, %181, %153, %138, %79, %59, %48
  br label %199

199:                                              ; preds = %198, %180, %152, %99, %78, %58, %47
  %200 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %16, align 8
  %201 = call i32 @pmac_i2c_close(%struct.pmac_i2c_bus* %200)
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %199, %37
  %204 = load i32, i32* %8, align 4
  ret i32 %204
}

declare dso_local %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pmac_i2c_open(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pmac_i2c_close(%struct.pmac_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
