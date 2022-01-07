; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_asf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_asf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@eeprom_config_asf = common dso_local global i64 0, align 8
@eeprom_asf = common dso_local global i32 0, align 4
@eeprom_gcl = common dso_local global i32 0, align 4
@eeprom_smbus_addr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_asf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_asf(%struct.nic* %0) #0 {
  %2 = alloca %struct.nic*, align 8
  store %struct.nic* %0, %struct.nic** %2, align 8
  %3 = load %struct.nic*, %struct.nic** %2, align 8
  %4 = getelementptr inbounds %struct.nic, %struct.nic* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 4176
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.nic*, %struct.nic** %2, align 8
  %11 = getelementptr inbounds %struct.nic, %struct.nic* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 4183
  br i1 %15, label %16, label %45

16:                                               ; preds = %9
  %17 = load %struct.nic*, %struct.nic** %2, align 8
  %18 = getelementptr inbounds %struct.nic, %struct.nic* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @eeprom_config_asf, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @eeprom_asf, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %16
  %27 = load %struct.nic*, %struct.nic** %2, align 8
  %28 = getelementptr inbounds %struct.nic, %struct.nic* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @eeprom_config_asf, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @eeprom_gcl, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %26
  %37 = load %struct.nic*, %struct.nic** %2, align 8
  %38 = getelementptr inbounds %struct.nic, %struct.nic* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @eeprom_smbus_addr, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = icmp ne i32 %43, 254
  br label %45

45:                                               ; preds = %36, %26, %16, %9, %1
  %46 = phi i1 [ false, %26 ], [ false, %16 ], [ false, %9 ], [ false, %1 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
