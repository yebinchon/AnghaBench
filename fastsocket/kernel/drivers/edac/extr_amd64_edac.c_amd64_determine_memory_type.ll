; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_determine_memory_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_determine_memory_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.amd64_pvt = type { i32, i64, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@MEM_RDDR3 = common dso_local global i32 0, align 4
@K8_REV_F = common dso_local global i64 0, align 8
@DDR3_MODE = common dso_local global i32 0, align 4
@MEM_DDR2 = common dso_local global i32 0, align 4
@MEM_RDDR2 = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CS%d: %s\0A\00", align 1
@edac_mem_types = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, i32)* @amd64_determine_memory_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_determine_memory_type(%struct.amd64_pvt* %0, i32 %1) #0 {
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %7 = icmp sge i32 %6, 21
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %10 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @BIT(i32 16)
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @MEM_DDR3, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @MEM_RDDR3, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %26 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @K8_REV_F, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24, %21
  %31 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %32 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DDR3_MODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %39 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @BIT(i32 16)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @MEM_DDR3, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @MEM_RDDR3, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %5, align 4
  br label %63

50:                                               ; preds = %30
  %51 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %52 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @BIT(i32 16)
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @MEM_DDR2, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @MEM_RDDR2, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %48
  br label %77

64:                                               ; preds = %24
  %65 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %66 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @BIT(i32 18)
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @MEM_DDR, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @MEM_RDDR, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %63
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %4, align 4
  %80 = load i32*, i32** @edac_mem_types, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @amd64_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %84)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @amd64_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
