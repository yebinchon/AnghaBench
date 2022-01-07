; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@__const.setfreq.i2c = private unnamed_addr constant [8 x i32] [i32 160, i32 0, i32 43, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"i2c error setfreq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfreq(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %43 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %1, %1
  %11 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([8 x i32]* @__const.setfreq.i2c to i8*), i64 32, i1 false)
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %15 [
    i32 1, label %17
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %16, align 4
  br label %25

17:                                               ; preds = %10
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 129
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 79, i32 138
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %17, %15
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %37 = call i32 @i2c_w(%struct.gspca_dev* %35, i32* %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @D_ERR, align 4
  %41 = call i32 @PDEBUG(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %25
  br label %43

43:                                               ; preds = %1, %42
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #2

declare dso_local i32 @PDEBUG(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
