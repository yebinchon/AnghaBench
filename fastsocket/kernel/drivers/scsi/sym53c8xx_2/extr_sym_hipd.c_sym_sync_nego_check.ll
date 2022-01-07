; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_sync_nego_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_sync_nego_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i64*, i64, i64, i64* }
%struct.sym_ccb = type { i32, i32 }

@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sync msgin\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"sdtr: ofs=%d per=%d div=%d fak=%d chg=%d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sync msgout\00", align 1
@M_NOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, i32, %struct.sym_ccb*)* @sym_sync_nego_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_sync_nego_check(%struct.sym_hcb* %0, i32 %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sym_ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sym_ccb* %2, %struct.sym_ccb** %7, align 8
  %14 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %15 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @DEBUG_FLAGS, align 4
  %18 = load i32, i32* @DEBUG_NEGO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %25 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %22, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %26)
  br label %28

28:                                               ; preds = %21, %3
  store i64 0, i64* %9, align 8
  %29 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %30 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %35 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %28
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %44 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  store i64 1, i64* %9, align 8
  %48 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %49 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %58 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  store i64 1, i64* %9, align 8
  %62 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %63 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65, %52
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @sym_getsync(%struct.sym_hcb* %70, i32 0, i64 %71, i64* %13, i64* %12)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %132

75:                                               ; preds = %69, %66
  %76 = load i32, i32* @DEBUG_FLAGS, align 4
  %77 = load i32, i32* @DEBUG_NEGO, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %82 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @sym_print_addr(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %80, %75
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %132

97:                                               ; preds = %93, %90
  %98 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @sym_setsync(%struct.sym_hcb* %98, i32 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %136

108:                                              ; preds = %97
  %109 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %110 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @spi_populate_sync_msg(i64* %111, i64 %112, i64 %113)
  %115 = load i32, i32* @DEBUG_FLAGS, align 4
  %116 = load i32, i32* @DEBUG_NEGO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %108
  %120 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %123 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %120, i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %124)
  br label %126

126:                                              ; preds = %119, %108
  %127 = load i64, i64* @M_NOOP, align 8
  %128 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %129 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  store i64 %127, i64* %131, align 8
  store i32 0, i32* %4, align 4
  br label %136

132:                                              ; preds = %96, %74
  %133 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @sym_setsync(%struct.sym_hcb* %133, i32 %134, i64 0, i64 0, i64 0, i64 0)
  store i32 -1, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %126, %107
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @sym_print_nego_msg(%struct.sym_hcb*, i32, i8*, i64*) #1

declare dso_local i64 @sym_getsync(%struct.sym_hcb*, i32, i64, i64*, i64*) #1

declare dso_local i32 @sym_print_addr(i32, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @sym_setsync(%struct.sym_hcb*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @spi_populate_sync_msg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
