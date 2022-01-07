; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_get_bus_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_hw.c_ixgb_get_bus_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i8* }

@STATUS = common dso_local global i32 0, align 4
@IXGB_STATUS_PCIX_MODE = common dso_local global i32 0, align 4
@ixgb_bus_type_pcix = common dso_local global i64 0, align 8
@ixgb_bus_type_pci = common dso_local global i64 0, align 8
@IXGB_STATUS_PCI_SPD = common dso_local global i32 0, align 4
@ixgb_bus_speed_66 = common dso_local global i8* null, align 8
@ixgb_bus_speed_33 = common dso_local global i8* null, align 8
@IXGB_STATUS_PCIX_SPD_MASK = common dso_local global i32 0, align 4
@ixgb_bus_speed_100 = common dso_local global i8* null, align 8
@ixgb_bus_speed_133 = common dso_local global i8* null, align 8
@ixgb_bus_speed_reserved = common dso_local global i8* null, align 8
@IXGB_STATUS_BUS64 = common dso_local global i32 0, align 4
@ixgb_bus_width_64 = common dso_local global i32 0, align 4
@ixgb_bus_width_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_hw*)* @ixgb_get_bus_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_get_bus_info(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %4 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %5 = load i32, i32* @STATUS, align 4
  %6 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IXGB_STATUS_PCIX_MODE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @ixgb_bus_type_pcix, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @ixgb_bus_type_pci, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  %17 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ixgb_bus_type_pci, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IXGB_STATUS_PCI_SPD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** @ixgb_bus_speed_66, align 8
  br label %35

33:                                               ; preds = %26
  %34 = load i8*, i8** @ixgb_bus_speed_33, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8* [ %32, %31 ], [ %34, %33 ]
  %37 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %38 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  br label %65

40:                                               ; preds = %15
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @IXGB_STATUS_PCIX_SPD_MASK, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %59 [
    i32 128, label %44
    i32 130, label %49
    i32 129, label %54
  ]

44:                                               ; preds = %40
  %45 = load i8*, i8** @ixgb_bus_speed_66, align 8
  %46 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %47 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  br label %64

49:                                               ; preds = %40
  %50 = load i8*, i8** @ixgb_bus_speed_100, align 8
  %51 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  br label %64

54:                                               ; preds = %40
  %55 = load i8*, i8** @ixgb_bus_speed_133, align 8
  %56 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  br label %64

59:                                               ; preds = %40
  %60 = load i8*, i8** @ixgb_bus_speed_reserved, align 8
  %61 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %54, %49, %44
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @IXGB_STATUS_BUS64, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @ixgb_bus_width_64, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @ixgb_bus_width_32, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  ret void
}

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
