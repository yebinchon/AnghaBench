; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_get_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_regulator = type { i32, i32*, i32, i32 }
%struct.regulator_dev = type { i32 }

@vreg_table = common dso_local global %struct.pcap_regulator* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @pcap_regulator_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_regulator_get_voltage(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.pcap_regulator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.pcap_regulator*, %struct.pcap_regulator** @vreg_table, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i64 @rdev_get_id(%struct.regulator_dev* %9)
  %11 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %8, i64 %10
  store %struct.pcap_regulator* %11, %struct.pcap_regulator** %4, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call i8* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store i8* %13, i8** %5, align 8
  %14 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %15 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %20 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %28 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ezx_pcap_read(i8* %26, i32 %29, i32* %6)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %33 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %31, %34
  %36 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %37 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %35, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %42 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 1000
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %25, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i8* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ezx_pcap_read(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
