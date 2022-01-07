; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@SAA7146_I2C_STATUS = common dso_local global i32 0, align 4
@SAA7146_I2C_BUSY = common dso_local global i32 0, align 4
@SAA7146_I2C_TRANSFER = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_I2C = common dso_local global i32 0, align 4
@SAA7146_MC2 = common dso_local global i32 0, align 4
@SAA7146_I2C_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"i2c setup read timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"i2c read timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146*, i8, i8, i32)* @I2CRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @I2CRead(%struct.saa7146* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %12 = call i32 @saaread(i32 %11)
  %13 = and i32 %12, 60
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %17 = call i32 @I2CWipe(%struct.saa7146* %16)
  br label %18

18:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 1000
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %24 = call i32 @saaread(i32 %23)
  %25 = load i32, i32* @SAA7146_I2C_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = call i32 (...) @schedule()
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %19

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 1000
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %40 = call i32 @I2CWipe(%struct.saa7146* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i8, i8* %7, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 254
  %48 = shl i32 %47, 24
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, 1
  %52 = and i32 %51, 255
  %53 = shl i32 %52, 8
  %54 = or i32 %48, %53
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 255
  %58 = shl i32 %57, 16
  %59 = or i32 %54, %58
  %60 = or i32 %59, 237
  %61 = load i32, i32* @SAA7146_I2C_TRANSFER, align 4
  %62 = call i32 @saawrite(i32 %60, i32 %61)
  br label %77

63:                                               ; preds = %41
  %64 = load i8, i8* %7, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 254
  %67 = shl i32 %66, 24
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %69, 1
  %71 = and i32 %70, 255
  %72 = shl i32 %71, 16
  %73 = or i32 %67, %72
  %74 = or i32 %73, 241
  %75 = load i32, i32* @SAA7146_I2C_TRANSFER, align 4
  %76 = call i32 @saawrite(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %63, %44
  %78 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %79 = shl i32 %78, 16
  %80 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SAA7146_MC2, align 4
  %83 = call i32 @saawrite(i32 %81, i32 %82)
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %98, %77
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 1000
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* @SAA7146_MC2, align 4
  %89 = call i32 @saaread(i32 %88)
  %90 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %87, %84
  %95 = phi i1 [ false, %84 ], [ %93, %87 ]
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = call i32 (...) @schedule()
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %84

101:                                              ; preds = %94
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 1000
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %107 = call i32 @saaread(i32 %106)
  %108 = load i32, i32* @SAA7146_I2C_BUSY, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %105, %102
  %112 = phi i1 [ false, %102 ], [ %110, %105 ]
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = call i32 (...) @schedule()
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %102

118:                                              ; preds = %111
  %119 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %120 = call i32 @saaread(i32 %119)
  %121 = load i32, i32* @SAA7146_I2C_ERR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 -1, i32* %5, align 4
  br label %190

125:                                              ; preds = %118
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 1000
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %125
  %131 = load i32, i32* @SAA7146_I2C_TRANSFER, align 4
  %132 = call i32 @saawrite(i32 65, i32 %131)
  %133 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %134 = shl i32 %133, 16
  %135 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SAA7146_MC2, align 4
  %138 = call i32 @saawrite(i32 %136, i32 %137)
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %153, %130
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 1000
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* @SAA7146_MC2, align 4
  %144 = call i32 @saaread(i32 %143)
  %145 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %142, %139
  %150 = phi i1 [ false, %139 ], [ %148, %142 ]
  br i1 %150, label %151, label %156

151:                                              ; preds = %149
  %152 = call i32 (...) @schedule()
  br label %153

153:                                              ; preds = %151
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %139

156:                                              ; preds = %149
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %170, %156
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 1000
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* @SAA7146_I2C_TRANSFER, align 4
  %162 = call i32 @saaread(i32 %161)
  %163 = load i32, i32* @SAA7146_I2C_BUSY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br label %166

166:                                              ; preds = %160, %157
  %167 = phi i1 [ false, %157 ], [ %165, %160 ]
  br i1 %167, label %168, label %173

168:                                              ; preds = %166
  %169 = call i32 (...) @schedule()
  br label %170

170:                                              ; preds = %168
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %157

173:                                              ; preds = %166
  %174 = load i32, i32* @SAA7146_I2C_TRANSFER, align 4
  %175 = call i32 @saaread(i32 %174)
  %176 = load i32, i32* @SAA7146_I2C_ERR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 -1, i32* %5, align 4
  br label %190

180:                                              ; preds = %173
  %181 = load i32, i32* %10, align 4
  %182 = icmp eq i32 %181, 1000
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %180
  %186 = load i32, i32* @SAA7146_I2C_TRANSFER, align 4
  %187 = call i32 @saaread(i32 %186)
  %188 = ashr i32 %187, 24
  %189 = and i32 %188, 255
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %185, %179, %124
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @saaread(i32) #1

declare dso_local i32 @I2CWipe(%struct.saa7146*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @saawrite(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
