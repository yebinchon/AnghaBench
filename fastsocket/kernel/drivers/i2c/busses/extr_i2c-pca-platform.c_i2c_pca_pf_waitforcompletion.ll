; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pca-platform.c_i2c_pca_pf_waitforcompletion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pca-platform.c_i2c_pca_pf_waitforcompletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_pca_pf_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.i2c_pca_pf_data.0*, i32)* }
%struct.i2c_pca_pf_data.0 = type opaque
%struct.TYPE_3__ = type { i64 }

@I2C_PCA_CON = common dso_local global i32 0, align 4
@I2C_PCA_CON_SI = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i2c_pca_pf_waitforcompletion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pca_pf_waitforcompletion(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_pca_pf_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.i2c_pca_pf_data*
  store %struct.i2c_pca_pf_data* %7, %struct.i2c_pca_pf_data** %3, align 8
  store i64 -1, i64* %4, align 8
  %8 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.i2c_pca_pf_data.0*, i32)*, i32 (%struct.i2c_pca_pf_data.0*, i32)** %18, align 8
  %20 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %21 = bitcast %struct.i2c_pca_pf_data* %20 to %struct.i2c_pca_pf_data.0*
  %22 = load i32, i32* @I2C_PCA_CON, align 4
  %23 = call i32 %19(%struct.i2c_pca_pf_data.0* %21, i32 %22)
  %24 = load i32, i32* @I2C_PCA_CON_SI, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @wait_event_timeout(i32 %15, i32 %25, i64 %29)
  store i64 %30, i64* %4, align 8
  br label %60

31:                                               ; preds = %1
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %32, %36
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %57, %31
  %39 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_pca_pf_data, %struct.i2c_pca_pf_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.i2c_pca_pf_data.0*, i32)*, i32 (%struct.i2c_pca_pf_data.0*, i32)** %41, align 8
  %43 = load %struct.i2c_pca_pf_data*, %struct.i2c_pca_pf_data** %3, align 8
  %44 = bitcast %struct.i2c_pca_pf_data* %43 to %struct.i2c_pca_pf_data.0*
  %45 = load i32, i32* @I2C_PCA_CON, align 4
  %46 = call i32 %42(%struct.i2c_pca_pf_data.0* %44, i32 %45)
  %47 = load i32, i32* @I2C_PCA_CON_SI, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @time_before(i64 %51, i64 %52)
  store i64 %53, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %38
  %56 = phi i1 [ false, %38 ], [ %54, %50 ]
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 @udelay(i32 100)
  br label %38

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %12
  %61 = load i64, i64* %4, align 8
  %62 = icmp sgt i64 %61, 0
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i64 @wait_event_timeout(i32, i32, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
