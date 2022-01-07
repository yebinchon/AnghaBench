; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_set_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_regulator = type { i32, i32*, i32, i32 }
%struct.regulator_dev = type { i32 }

@vreg_table = common dso_local global %struct.pcap_regulator* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @pcap_regulator_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_regulator_set_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcap_regulator*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pcap_regulator*, %struct.pcap_regulator** @vreg_table, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call i64 @rdev_get_id(%struct.regulator_dev* %13)
  %15 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %12, i64 %14
  store %struct.pcap_regulator* %15, %struct.pcap_regulator** %8, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %17 = call i8* @rdev_get_drvdata(%struct.regulator_dev* %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %19 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %110

25:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %104, %25
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %29 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %107

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %37 = call i64 @rdev_get_id(%struct.regulator_dev* %36)
  %38 = load i64, i64* @V1, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %55

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  %44 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %45 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %50 = call i64 @rdev_get_id(%struct.regulator_dev* %49)
  %51 = load i64, i64* @V1, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %48, %41
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %57 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 1000
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %74 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %77 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %81 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %79, %82
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %86 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %84, %87
  %89 = call i32 @ezx_pcap_set_bits(i8* %72, i32 %75, i32 %83, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %110

90:                                               ; preds = %67, %55
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %95 = call i64 @rdev_get_id(%struct.regulator_dev* %94)
  %96 = load i64, i64* @V1, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.pcap_regulator*, %struct.pcap_regulator** %8, align 8
  %100 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %98, %93, %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %26

107:                                              ; preds = %26
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %71, %22
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i8* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ezx_pcap_set_bits(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
