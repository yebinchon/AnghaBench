; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_prep_chip_selects.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_prep_chip_selects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.amd64_pvt = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@K8_REV_F = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*)* @prep_chip_selects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_chip_selects(%struct.amd64_pvt* %0) #0 {
  %2 = alloca %struct.amd64_pvt*, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %7 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @K8_REV_F, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %5
  %12 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %13 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 8, i32* %16, align 4
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %18 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 8, i32* %21, align 4
  %22 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %23 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 8, i32* %26, align 4
  %27 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %28 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 8, i32* %31, align 4
  br label %53

32:                                               ; preds = %5, %1
  %33 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %34 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 8, i32* %37, align 4
  %38 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %39 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 8, i32* %42, align 4
  %43 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %44 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 4, i32* %47, align 4
  %48 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %49 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 4, i32* %52, align 4
  br label %53

53:                                               ; preds = %32, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
