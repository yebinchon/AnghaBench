; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_port_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_port_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_aib = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@etr_lpsc_pps_mode = common dso_local global i32 0, align 4
@etr_lpsc_operational_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etr_aib*, i32)* @etr_port_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etr_port_valid(%struct.etr_aib* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.etr_aib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.etr_aib* %0, %struct.etr_aib** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %8 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %17 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %22 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i32 [ %19, %15 ], [ %24, %20 ]
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @etr_lpsc_pps_mode, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %63

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @etr_lpsc_operational_step, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %37 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %43 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %49 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.etr_aib*, %struct.etr_aib** %4, align 8
  %55 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %53, %47, %41, %35
  %60 = phi i1 [ false, %47 ], [ false, %41 ], [ false, %35 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %30, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
