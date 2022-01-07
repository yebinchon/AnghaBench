; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_get_hw_semaphore_i210.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c_igb_get_hw_semaphore_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@E1000_SWSM = common dso_local global i32 0, align 4
@E1000_SWSM_SMBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Driver can't access device - SMBI bit is set.\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@E1000_SWSM_SWESMBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Driver can't access the NVM\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_get_hw_semaphore_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_get_hw_semaphore_i210(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* @E1000_SWSM, align 4
  %18 = call i32 @rd32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  %25 = call i32 @udelay(i32 50)
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %6, align 8
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %28
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = call i32 @igb_put_hw_semaphore(%struct.e1000_hw* %44)
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %60, %39
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* @E1000_SWSM, align 4
  %52 = call i32 @rd32(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @E1000_SWSM_SMBI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %63

58:                                               ; preds = %50
  %59 = call i32 @udelay(i32 50)
  br label %60

60:                                               ; preds = %58
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %46

63:                                               ; preds = %57, %46
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = call i32 @hw_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %70 = load i64, i64* @E1000_ERR_NVM, align 8
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %2, align 8
  br label %109

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %28
  store i64 0, i64* %6, align 8
  br label %74

74:                                               ; preds = %94, %73
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load i32, i32* @E1000_SWSM, align 4
  %80 = call i32 @rd32(i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @E1000_SWSM, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @E1000_SWSM_SWESMBI, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @wr32(i32 %81, i32 %84)
  %86 = load i32, i32* @E1000_SWSM, align 4
  %87 = call i32 @rd32(i32 %86)
  %88 = load i32, i32* @E1000_SWSM_SWESMBI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %97

92:                                               ; preds = %78
  %93 = call i32 @udelay(i32 50)
  br label %94

94:                                               ; preds = %92
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %6, align 8
  br label %74

97:                                               ; preds = %91, %74
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = call i32 @igb_put_hw_semaphore(%struct.e1000_hw* %102)
  %104 = call i32 @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i64, i64* @E1000_ERR_NVM, align 8
  %106 = sub nsw i64 0, %105
  store i64 %106, i64* %2, align 8
  br label %109

107:                                              ; preds = %97
  %108 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %108, i64* %2, align 8
  br label %109

109:                                              ; preds = %107, %101, %68
  %110 = load i64, i64* %2, align 8
  ret i64 %110
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @igb_put_hw_semaphore(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
