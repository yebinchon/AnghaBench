; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_pcap-regulator.c_pcap_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_regulator = type { i32, i32 }
%struct.regulator_dev = type { i32 }

@vreg_table = common dso_local global %struct.pcap_regulator* null, align 8
@NA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @pcap_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_regulator_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.pcap_regulator*, align 8
  %5 = alloca i8*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.pcap_regulator*, %struct.pcap_regulator** @vreg_table, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call i64 @rdev_get_id(%struct.regulator_dev* %7)
  %9 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %6, i64 %8
  store %struct.pcap_regulator* %9, %struct.pcap_regulator** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i8* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store i8* %11, i8** %5, align 8
  %12 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %23 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pcap_regulator*, %struct.pcap_regulator** %4, align 8
  %26 = getelementptr inbounds %struct.pcap_regulator, %struct.pcap_regulator* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = call i32 @ezx_pcap_set_bits(i8* %21, i32 %24, i32 %28, i32 0)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
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
