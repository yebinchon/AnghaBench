; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_per_family_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_per_family_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.amd64_family_type = type { i32, i32 }
%struct.amd64_pvt = type { i32, i32, i32* }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@amd64_family_types = common dso_local global %struct.amd64_family_type* null, align 8
@K8_CPUS = common dso_local global i64 0, align 8
@F10_CPUS = common dso_local global i64 0, align 8
@F15_CPUS = common dso_local global i64 0, align 8
@F16_CPUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unsupported family!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s %sdetected (node %d).\0A\00", align 1
@K8_REV_F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"revF or later \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"revE or earlier \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amd64_family_type* (%struct.amd64_pvt*)* @amd64_per_family_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amd64_family_type* @amd64_per_family_init(%struct.amd64_pvt* %0) #0 {
  %2 = alloca %struct.amd64_family_type*, align 8
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd64_family_type*, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %6, i32* %4, align 4
  store %struct.amd64_family_type* null, %struct.amd64_family_type** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %48 [
    i32 15, label %8
    i32 16, label %18
    i32 21, label %28
    i32 22, label %38
  ]

8:                                                ; preds = %1
  %9 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %10 = load i64, i64* @K8_CPUS, align 8
  %11 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %9, i64 %10
  store %struct.amd64_family_type* %11, %struct.amd64_family_type** %5, align 8
  %12 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %13 = load i64, i64* @K8_CPUS, align 8
  %14 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %12, i64 %13
  %15 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %14, i32 0, i32 1
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %17 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %20 = load i64, i64* @F10_CPUS, align 8
  %21 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %19, i64 %20
  store %struct.amd64_family_type* %21, %struct.amd64_family_type** %5, align 8
  %22 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %23 = load i64, i64* @F10_CPUS, align 8
  %24 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %22, i64 %23
  %25 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %24, i32 0, i32 1
  %26 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %27 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  br label %50

28:                                               ; preds = %1
  %29 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %30 = load i64, i64* @F15_CPUS, align 8
  %31 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %29, i64 %30
  store %struct.amd64_family_type* %31, %struct.amd64_family_type** %5, align 8
  %32 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %33 = load i64, i64* @F15_CPUS, align 8
  %34 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %32, i64 %33
  %35 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %34, i32 0, i32 1
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %37 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  br label %50

38:                                               ; preds = %1
  %39 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %40 = load i64, i64* @F16_CPUS, align 8
  %41 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %39, i64 %40
  store %struct.amd64_family_type* %41, %struct.amd64_family_type** %5, align 8
  %42 = load %struct.amd64_family_type*, %struct.amd64_family_type** @amd64_family_types, align 8
  %43 = load i64, i64* @F16_CPUS, align 8
  %44 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %42, i64 %43
  %45 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %44, i32 0, i32 1
  %46 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %47 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  br label %50

48:                                               ; preds = %1
  %49 = call i32 @amd64_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.amd64_family_type* null, %struct.amd64_family_type** %2, align 8
  br label %76

50:                                               ; preds = %38, %28, %18, %8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %52 = ashr i32 %51, 4
  %53 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %54 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %56 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 15
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %62 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @K8_REV_F, align 4
  %65 = icmp sge i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)
  br label %69

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %60
  %70 = phi i8* [ %67, %60 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %68 ]
  %71 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %72 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @amd64_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57, i8* %70, i32 %73)
  %75 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  store %struct.amd64_family_type* %75, %struct.amd64_family_type** %2, align 8
  br label %76

76:                                               ; preds = %69, %48
  %77 = load %struct.amd64_family_type*, %struct.amd64_family_type** %2, align 8
  ret %struct.amd64_family_type* %77
}

declare dso_local i32 @amd64_err(i8*) #1

declare dso_local i32 @amd64_info(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
