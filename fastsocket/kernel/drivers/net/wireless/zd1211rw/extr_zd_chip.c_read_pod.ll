; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_read_pod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_read_pod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@E2P_POD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"E2P_POD %#010x\0A\00", align 1
@LED1 = common dso_local global i64 0, align 8
@LED2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [99 x i8] c"RF %s %#01x PA type %#01x patch CCK %d patch CR157 %d patch 6M %d new PHY %d link LED%d tx led %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32*)* @read_pod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pod(%struct.zd_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %9 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %8, i32 0, i32 8
  %10 = call i32 @mutex_is_locked(i32* %9)
  %11 = call i32 @ZD_ASSERT(i32 %10)
  %12 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %13 = load i32, i32* @E2P_POD, align 4
  %14 = call i32 @zd_ioread32_locked(%struct.zd_chip* %12, i32* %7, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %115

18:                                               ; preds = %2
  %19 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %20 = call i32 @zd_chip_dev(%struct.zd_chip* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_dbg_f(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 15
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 15
  %29 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %30 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 1
  %34 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %35 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 13
  %38 = and i32 %37, 1
  %39 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %40 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 21
  %43 = and i32 %42, 1
  %44 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %45 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 31
  %48 = and i32 %47, 1
  %49 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %50 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 7
  %53 = and i32 %52, 1
  %54 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %55 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %18
  %61 = load i64, i64* @LED1, align 8
  br label %64

62:                                               ; preds = %18
  %63 = load i64, i64* @LED2, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %67 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %66, i32 0, i32 6
  store i64 %65, i64* %67, align 8
  %68 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %69 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %68, i32 0, i32 7
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 16777216
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 536870912
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %79 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %78, i32 0, i32 7
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %64
  %82 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %83 = call i32 @zd_chip_dev(%struct.zd_chip* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @zd_rf_name(i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %90 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %93 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %96 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %99 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %102 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %105 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @LED1, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 2
  %111 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %112 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, i8*, i32, ...) @dev_dbg_f(i32 %83, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %88, i32 %91, i32 %94, i32 %97, i32 %100, i32 %103, i32 %110, i32 %113)
  store i32 0, i32* %3, align 4
  br label %128

115:                                              ; preds = %17
  %116 = load i32*, i32** %5, align 8
  store i32 0, i32* %116, align 4
  %117 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %118 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %120 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  %121 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %122 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %124 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %123, i32 0, i32 3
  store i32 0, i32* %124, align 4
  %125 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %126 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %125, i32 0, i32 4
  store i32 0, i32* %126, align 8
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %115, %81
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_ioread32_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32, ...) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_rf_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
