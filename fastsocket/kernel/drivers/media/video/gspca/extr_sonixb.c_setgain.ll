; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setgain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i64, i32 }

@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@F_GAIN = common dso_local global i32 0, align 4
@BRIDGE_103 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @F_GAIN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @setsensorgain(%struct.gspca_dev* %20)
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BRIDGE_103, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.sd*, %struct.sd** %3, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %41 = call i32 @reg_w(%struct.gspca_dev* %39, i32 5, i32* %40, i32 3)
  br label %57

42:                                               ; preds = %22
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %48, %49
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %56 = call i32 @reg_w(%struct.gspca_dev* %54, i32 16, i32* %55, i32 2)
  br label %57

57:                                               ; preds = %19, %42, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setsensorgain(%struct.gspca_dev*) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
