; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_cx24108_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_cx24108_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }

@__const.cx24108_tuner_set_params.osci = private unnamed_addr constant [11 x i32] [i32 950000, i32 1019000, i32 1075000, i32 1178000, i32 1296000, i32 1432000, i32 1576000, i32 1718000, i32 1856000, i32 2036000, i32 2150000], align 16
@__const.cx24108_tuner_set_params.bandsel = private unnamed_addr constant [11 x i32] [i32 0, i32 131072, i32 262144, i32 1050624, i32 1052672, i32 1056768, i32 1064960, i32 1081344, i32 1114112, i32 1179648, i32 1310720], align 16
@.str = private unnamed_addr constant [47 x i8] c"cx24108 debug: entering SetTunerFreq, freq=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cx24108 debug: select vco #%d (f=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"cx24108 debug: pump=%d, n=%d, a=%d\0A\00", align 1
@XTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @cx24108_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24108_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [11 x i32], align 16
  %13 = alloca [11 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %14 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = bitcast [11 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([11 x i32]* @__const.cx24108_tuner_set_params.osci to i8*), i64 44, i1 false)
  %18 = bitcast [11 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([11 x i32]* @__const.cx24108_tuner_set_params.bandsel to i8*), i64 44, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 950000
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 950000, i32* %5, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 2150000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 2150000, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %23
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br label %43

43:                                               ; preds = %36, %30
  %44 = phi i1 [ false, %30 ], [ %42, %36 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %30

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [11 x i32], [11 x i32]* %13, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 2
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 2, i32 1
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 10
  %65 = sdiv i64 %64, 10111
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = srem i32 %67, 32
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %69, 32
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %49
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %49
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %82, %86
  %88 = sdiv i32 %87, 2
  %89 = icmp slt i32 %77, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 2
  %95 = shl i32 %94, 25
  %96 = or i32 -134217728, %95
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 511
  %99 = shl i32 %98, 16
  %100 = or i32 %96, %99
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 31
  %103 = shl i32 %102, 11
  %104 = or i32 %100, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %109, i32 %110)
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %113 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %112, i32 1342963712)
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %115 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %114, i32 -2081294336)
  %116 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @cx24110_pll_write(%struct.dvb_frontend* %116, i32 %117)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printk(i8*, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @cx24110_pll_write(%struct.dvb_frontend*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
