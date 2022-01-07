; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@__const.setexposure.Expodoit = private unnamed_addr constant [8 x i32] [i32 193, i32 17, i32 37, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setexposure.expoMi = private unnamed_addr constant [8 x i32] [i32 177, i32 93, i32 9, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@setexposure.doit = internal constant [8 x i32] [i32 177, i32 93, i32 7, i32 0, i32 3, i32 0, i32 0, i32 16], align 16
@setexposure.sensorgo = internal constant [8 x i32] [i32 177, i32 93, i32 7, i32 0, i32 2, i32 0, i32 0, i32 16], align 16
@__const.setexposure.expoMof = private unnamed_addr constant [8 x i32] [i32 161, i32 33, i32 15, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@__const.setexposure.expoMo10 = private unnamed_addr constant [8 x i32] [i32 161, i32 33, i32 16, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@setexposure.gainMo = internal constant [8 x i32] [i32 161, i32 33, i32 0, i32 16, i32 0, i32 0, i32 0, i32 29], align 16
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"set exposure %d\00", align 1
@__const.setexposure.expo_c1 = private unnamed_addr constant [8 x i32] [i32 177, i32 92, i32 9, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@__const.setexposure.gainOm = private unnamed_addr constant [8 x i32] [i32 160, i32 52, i32 229, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setexposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = bitcast %struct.gspca_dev* %14 to %struct.sd*
  store %struct.sd* %15, %struct.sd** %5, align 8
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %166 [
    i32 134, label %19
    i32 133, label %40
    i32 132, label %53
    i32 131, label %53
    i32 130, label %76
    i32 129, label %123
    i32 128, label %142
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 25
  %22 = sdiv i32 %21, 256
  %23 = add nsw i32 19, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @i2c_w1(%struct.gspca_dev* %24, i32 104, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 12
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %29, %30
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 8
  %36 = call i32 @i2c_w1(%struct.gspca_dev* %33, i32 3, i32 %35)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @i2c_w1(%struct.gspca_dev* %37, i32 4, i32 %38)
  br label %166

40:                                               ; preds = %2
  %41 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.Expodoit to i8*), i64 32, i1 false)
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 16
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 %48, i32* %49, align 4
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %52 = call i32 @i2c_w8(%struct.gspca_dev* %50, i32* %51)
  br label %166

53:                                               ; preds = %2, %2
  %54 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %54, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.expoMi to i8*), i64 32, i1 false)
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 1589
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1589, i32* %4, align 4
  br label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, i32* %4, align 4
  %65 = ashr i32 %64, 8
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %67, i32* %68, align 16
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %71 = call i32 @i2c_w8(%struct.gspca_dev* %69, i32* %70)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = call i32 @i2c_w8(%struct.gspca_dev* %72, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @setexposure.doit, i64 0, i64 0))
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %75 = call i32 @i2c_w8(%struct.gspca_dev* %74, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @setexposure.sensorgo, i64 0, i64 0))
  br label %166

76:                                               ; preds = %2
  %77 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %77, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.expoMof to i8*), i64 32, i1 false)
  %78 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %78, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.expoMo10 to i8*), i64 32, i1 false)
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 8191
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 8191, i32* %4, align 4
  br label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 1020
  %90 = ashr i32 %89, 2
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %90, i32* %91, align 4
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %94 = call i32 @i2c_w8(%struct.gspca_dev* %92, i32* %93)
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 7168
  %97 = ashr i32 %96, 10
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, 3
  %100 = shl i32 %99, 4
  %101 = or i32 %97, %100
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  store i32 %101, i32* %102, align 4
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %105 = call i32 @i2c_w8(%struct.gspca_dev* %103, i32* %104)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %107 = call i32 @i2c_w8(%struct.gspca_dev* %106, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @setexposure.gainMo, i64 0, i64 0))
  %108 = load i32, i32* @D_FRAM, align 4
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 7
  %112 = shl i32 %111, 10
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 2
  %116 = or i32 %112, %115
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 48
  %120 = ashr i32 %119, 4
  %121 = or i32 %116, %120
  %122 = call i32 @PDEBUG(i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %121)
  br label %166

123:                                              ; preds = %2
  %124 = bitcast [8 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %124, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.expo_c1 to i8*), i64 32, i1 false)
  %125 = load i32, i32* %4, align 4
  %126 = icmp sgt i32 %125, 640
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 640, i32* %4, align 4
  br label %133

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 64
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 64, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %128
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i32, i32* %4, align 4
  %135 = ashr i32 %134, 8
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %4, align 4
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  store i32 %137, i32* %138, align 16
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %141 = call i32 @i2c_w8(%struct.gspca_dev* %139, i32* %140)
  br label %166

142:                                              ; preds = %2
  %143 = bitcast [8 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %143, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.gainOm to i8*), i64 32, i1 false)
  %144 = load i32, i32* %4, align 4
  %145 = icmp sgt i32 %144, 1023
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 1023, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %142
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 1, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %147
  %152 = load i32, i32* %4, align 4
  %153 = ashr i32 %152, 2
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 3
  store i32 %153, i32* %154, align 4
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %157 = call i32 @i2c_w8(%struct.gspca_dev* %155, i32* %156)
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = ashr i32 %159, 5
  %161 = call i32 @reg_w1(%struct.gspca_dev* %158, i32 150, i32 %160)
  %162 = load i32, i32* @D_FRAM, align 4
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @PDEBUG(i32 %162, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %2, %151, %133, %87, %63, %40, %19
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_w8(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
