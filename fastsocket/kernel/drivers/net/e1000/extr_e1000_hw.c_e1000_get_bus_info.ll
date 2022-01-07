; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_get_bus_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_get_bus_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i8*, i32, i8*, i32 }

@e1000_bus_type_pci = common dso_local global i8* null, align 8
@e1000_bus_speed_unknown = common dso_local global i8* null, align 8
@e1000_bus_width_unknown = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_PCIX_MODE = common dso_local global i32 0, align 4
@e1000_bus_type_pcix = common dso_local global i8* null, align 8
@E1000_DEV_ID_82546EB_QUAD_COPPER = common dso_local global i32 0, align 4
@e1000_bus_speed_66 = common dso_local global i8* null, align 8
@e1000_bus_speed_120 = common dso_local global i8* null, align 8
@E1000_STATUS_PCI66 = common dso_local global i32 0, align 4
@e1000_bus_speed_33 = common dso_local global i8* null, align 8
@E1000_STATUS_PCIX_SPEED = common dso_local global i32 0, align 4
@e1000_bus_speed_100 = common dso_local global i8* null, align 8
@e1000_bus_speed_133 = common dso_local global i8* null, align 8
@e1000_bus_speed_reserved = common dso_local global i8* null, align 8
@E1000_STATUS_BUS64 = common dso_local global i32 0, align 4
@e1000_bus_width_64 = common dso_local global i32 0, align 4
@e1000_bus_width_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_get_bus_info(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %17 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load i8*, i8** @e1000_bus_type_pci, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @e1000_bus_speed_unknown, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @e1000_bus_width_unknown, align 4
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  br label %105

17:                                               ; preds = %1
  %18 = load i32, i32* @STATUS, align 4
  %19 = call i32 @er32(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @E1000_STATUS_PCIX_MODE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i8*, i8** @e1000_bus_type_pcix, align 8
  br label %28

26:                                               ; preds = %17
  %27 = load i8*, i8** @e1000_bus_type_pci, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8* [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @E1000_DEV_ID_82546EB_QUAD_COPPER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @e1000_bus_type_pci, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i8*, i8** @e1000_bus_speed_66, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load i8*, i8** @e1000_bus_speed_120, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8* [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %92

51:                                               ; preds = %28
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @e1000_bus_type_pci, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @E1000_STATUS_PCI66, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i8*, i8** @e1000_bus_speed_66, align 8
  br label %66

64:                                               ; preds = %57
  %65 = load i8*, i8** @e1000_bus_speed_33, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %91

70:                                               ; preds = %51
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @E1000_STATUS_PCIX_SPEED, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %86 [
    i32 130, label %74
    i32 132, label %78
    i32 131, label %82
  ]

74:                                               ; preds = %70
  %75 = load i8*, i8** @e1000_bus_speed_66, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  br label %90

78:                                               ; preds = %70
  %79 = load i8*, i8** @e1000_bus_speed_100, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  br label %90

82:                                               ; preds = %70
  %83 = load i8*, i8** @e1000_bus_speed_133, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  br label %90

86:                                               ; preds = %70
  %87 = load i8*, i8** @e1000_bus_speed_reserved, align 8
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %82, %78, %74
  br label %91

91:                                               ; preds = %90, %66
  br label %92

92:                                               ; preds = %91, %47
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @E1000_STATUS_BUS64, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @e1000_bus_width_64, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @e1000_bus_width_32, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %7
  ret void
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
