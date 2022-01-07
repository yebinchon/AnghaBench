; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_mac_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_mac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_set_mac_type\00", align 1
@e1000_82542_rev2_0 = common dso_local global i32 0, align 4
@e1000_82542_rev2_1 = common dso_local global i32 0, align 4
@E1000_ERR_MAC_TYPE = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i32 0, align 4
@e1000_82545 = common dso_local global i32 0, align 4
@e1000_82545_rev_3 = common dso_local global i32 0, align 4
@e1000_82546 = common dso_local global i32 0, align 4
@e1000_82546_rev_3 = common dso_local global i32 0, align 4
@e1000_ce4100 = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_set_mac_type(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %4 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %68 [
    i32 156, label %8
    i32 154, label %24
    i32 155, label %24
    i32 153, label %28
    i32 152, label %28
    i32 151, label %28
    i32 150, label %28
    i32 168, label %32
    i32 167, label %32
    i32 166, label %32
    i32 165, label %32
    i32 164, label %32
    i32 149, label %36
    i32 148, label %36
    i32 147, label %40
    i32 146, label %40
    i32 145, label %40
    i32 144, label %44
    i32 143, label %44
    i32 142, label %44
    i32 141, label %48
    i32 140, label %48
    i32 136, label %48
    i32 139, label %48
    i32 138, label %48
    i32 137, label %48
    i32 163, label %52
    i32 162, label %52
    i32 160, label %52
    i32 161, label %55
    i32 159, label %55
    i32 158, label %55
    i32 157, label %55
    i32 135, label %58
    i32 134, label %58
    i32 133, label %61
    i32 132, label %64
  ]

8:                                                ; preds = %1
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 170, label %12
    i32 169, label %16
  ]

12:                                               ; preds = %8
  %13 = load i32, i32* @e1000_82542_rev2_0, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %23

16:                                               ; preds = %8
  %17 = load i32, i32* @e1000_82542_rev2_1, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %23

20:                                               ; preds = %8
  %21 = load i32, i32* @E1000_ERR_MAC_TYPE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %99

23:                                               ; preds = %16, %12
  br label %71

24:                                               ; preds = %1, %1
  %25 = load i32, i32* @e1000_82543, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %71

28:                                               ; preds = %1, %1, %1, %1
  %29 = load i32, i32* @e1000_82544, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %71

32:                                               ; preds = %1, %1, %1, %1, %1
  %33 = load i32, i32* @e1000_82540, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %71

36:                                               ; preds = %1, %1
  %37 = load i32, i32* @e1000_82545, align 4
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %71

40:                                               ; preds = %1, %1, %1
  %41 = load i32, i32* @e1000_82545_rev_3, align 4
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %71

44:                                               ; preds = %1, %1, %1
  %45 = load i32, i32* @e1000_82546, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %71

48:                                               ; preds = %1, %1, %1, %1, %1, %1
  %49 = load i32, i32* @e1000_82546_rev_3, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %71

52:                                               ; preds = %1, %1, %1
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 1
  store i32 131, i32* %54, align 4
  br label %71

55:                                               ; preds = %1, %1, %1, %1
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 1
  store i32 130, i32* %57, align 4
  br label %71

58:                                               ; preds = %1, %1
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 1
  store i32 129, i32* %60, align 4
  br label %71

61:                                               ; preds = %1
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 1
  store i32 128, i32* %63, align 4
  br label %71

64:                                               ; preds = %1
  %65 = load i32, i32* @e1000_ce4100, align 4
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %1
  %69 = load i32, i32* @E1000_ERR_MAC_TYPE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %99

71:                                               ; preds = %64, %61, %58, %55, %52, %48, %44, %40, %36, %32, %28, %24, %23
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %78 [
    i32 131, label %75
    i32 129, label %75
    i32 130, label %75
    i32 128, label %75
  ]

75:                                               ; preds = %71, %71, %71, %71
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  br label %79

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %75
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @e1000_82543, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @e1000_82544, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 4
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %68, %20
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
