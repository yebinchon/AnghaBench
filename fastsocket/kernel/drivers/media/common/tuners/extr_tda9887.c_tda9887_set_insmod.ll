; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_set_insmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_set_insmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i8* }

@UNSET = common dso_local global i64 0, align 8
@port1 = common dso_local global i64 0, align 8
@cOutputPort1Inactive = common dso_local global i8 0, align 1
@port2 = common dso_local global i64 0, align 8
@cOutputPort2Inactive = common dso_local global i8 0, align 1
@qss = common dso_local global i64 0, align 8
@cQSS = common dso_local global i8 0, align 1
@adjust = common dso_local global i32 0, align 4
@cTopMask = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda9887_set_insmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9887_set_insmod(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda9887_priv*, align 8
  %4 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %6, align 8
  store %struct.tda9887_priv* %7, %struct.tda9887_priv** %3, align 8
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load i64, i64* @UNSET, align 8
  %12 = load i64, i64* @port1, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load i64, i64* @port1, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i8, i8* @cOutputPort1Inactive, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = or i32 %23, %19
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  br label %36

26:                                               ; preds = %14
  %27 = load i8, i8* @cOutputPort1Inactive, align 1
  %28 = sext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = and i32 %33, %29
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  br label %36

36:                                               ; preds = %26, %17
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i64, i64* @UNSET, align 8
  %39 = load i64, i64* @port2, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i64, i64* @port2, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8, i8* @cOutputPort2Inactive, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = or i32 %50, %46
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %48, align 1
  br label %63

53:                                               ; preds = %41
  %54 = load i8, i8* @cOutputPort2Inactive, align 1
  %55 = sext i8 %54 to i32
  %56 = xor i32 %55, -1
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %60, %56
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 1
  br label %63

63:                                               ; preds = %53, %44
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i64, i64* @UNSET, align 8
  %66 = load i64, i64* @qss, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load i64, i64* @qss, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i8, i8* @cQSS, align 1
  %73 = sext i8 %72 to i32
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = or i32 %77, %73
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  br label %90

80:                                               ; preds = %68
  %81 = load i8, i8* @cQSS, align 1
  %82 = sext i8 %81 to i32
  %83 = xor i32 %82, -1
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = and i32 %87, %83
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  br label %90

90:                                               ; preds = %80, %71
  br label %91

91:                                               ; preds = %90, %64
  %92 = load i32, i32* @adjust, align 4
  %93 = icmp slt i32 %92, 32
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i8, i8* @cTopMask, align 1
  %96 = sext i8 %95 to i32
  %97 = xor i32 %96, -1
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = and i32 %101, %97
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %99, align 1
  %104 = load i32, i32* @adjust, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = or i32 %108, %104
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 1
  br label %111

111:                                              ; preds = %94, %91
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
