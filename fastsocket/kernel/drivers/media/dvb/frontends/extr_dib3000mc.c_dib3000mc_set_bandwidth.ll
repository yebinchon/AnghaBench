; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib3000mc_state*, i32)* @dib3000mc_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib3000mc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 24, i1 false)
  %10 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %52 [
    i32 8000, label %12
    i32 7000, label %22
    i32 6000, label %32
    i32 5000, label %42
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 25, i32* %13, align 16
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 23600, i32* %14, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 84, i32* %15, align 8
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 34976, i32* %16, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 422, i32* %17, align 16
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 43808, i32* %18, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1243, i32* %19, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 219, i32* %20, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 183, i32* %21, align 4
  br label %55

22:                                               ; preds = %2
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 28, i32* %23, align 16
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 64421, i32* %24, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 96, i32* %25, align 8
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 39973, i32* %26, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 483, i32* %27, align 16
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 3255, i32* %28, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1216, i32* %29, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 192, i32* %30, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 160, i32* %31, align 4
  br label %55

32:                                               ; preds = %2
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 33, i32* %33, align 16
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 53312, i32* %34, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 112, i32* %35, align 8
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 46635, i32* %36, align 4
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 563, i32* %37, align 16
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 36565, i32* %38, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1189, i32* %39, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 165, i32* %40, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 137, i32* %41, align 4
  br label %55

42:                                               ; preds = %2
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 40, i32* %43, align 16
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 37760, i32* %44, align 4
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 135, i32* %45, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 16640, i32* %46, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 676, i32* %47, align 16
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 17664, i32* %48, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 1161, i32* %49, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 137, i32* %50, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 114, i32* %51, align 4
  br label %55

52:                                               ; preds = %2
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %108

55:                                               ; preds = %42, %32, %22, %12
  store i32 6, i32* %8, align 4
  br label %56

56:                                               ; preds = %68, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 12
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 6
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %60, i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %73 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %72, i32 12, i32 0)
  %74 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %75 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %74, i32 13, i32 1000)
  %76 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %77 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %76, i32 14, i32 0)
  %78 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %79 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %78, i32 15, i32 1010)
  %80 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %81 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %80, i32 16, i32 1)
  %82 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %83 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %82, i32 17, i32 45264)
  %84 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %85 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %84, i32 18, i32 915)
  %86 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %87 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %86, i32 19, i32 34560)
  store i32 55, i32* %8, align 4
  br label %88

88:                                               ; preds = %100, %71
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 58
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 55
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %92, i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %88

103:                                              ; preds = %88
  %104 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %105 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @dib3000mc_set_timing(%struct.dib3000mc_state* %104, i32 %105, i32 %106, i32 0)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %52
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #2

declare dso_local i32 @dib3000mc_set_timing(%struct.dib3000mc_state*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
