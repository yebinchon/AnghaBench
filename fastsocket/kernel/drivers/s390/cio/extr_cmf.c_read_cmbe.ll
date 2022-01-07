; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_read_cmbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_read_cmbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cmb_data* }
%struct.cmb_data = type { %struct.cmbe* }
%struct.cmbe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32)* @read_cmbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cmbe(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmbe*, align 8
  %7 = alloca %struct.cmb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %12 = call i32 @cmf_cmb_copy_wait(%struct.ccw_device* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

16:                                               ; preds = %2
  %17 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %18 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %23 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.cmb_data*, %struct.cmb_data** %25, align 8
  store %struct.cmb_data* %26, %struct.cmb_data** %7, align 8
  %27 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %28 = icmp ne %struct.cmb_data* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %78

30:                                               ; preds = %16
  %31 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %32 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %31, i32 0, i32 0
  %33 = load %struct.cmbe*, %struct.cmbe** %32, align 8
  store %struct.cmbe* %33, %struct.cmbe** %6, align 8
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %71 [
    i32 128, label %35
    i32 129, label %39
    i32 133, label %43
    i32 131, label %47
    i32 132, label %51
    i32 136, label %55
    i32 135, label %59
    i32 134, label %63
    i32 130, label %67
  ]

35:                                               ; preds = %30
  %36 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %37 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %78

39:                                               ; preds = %30
  %40 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %41 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %78

43:                                               ; preds = %30
  %44 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %45 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %72

47:                                               ; preds = %30
  %48 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %49 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %72

51:                                               ; preds = %30
  %52 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %53 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %72

55:                                               ; preds = %30
  %56 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %57 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %72

59:                                               ; preds = %30
  %60 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %61 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  br label %72

63:                                               ; preds = %30
  %64 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %65 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %72

67:                                               ; preds = %30
  %68 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %69 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %72

71:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %78

72:                                               ; preds = %67, %63, %59, %55, %51, %47, %43
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.cmbe*, %struct.cmbe** %6, align 8
  %75 = getelementptr inbounds %struct.cmbe, %struct.cmbe* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @time_to_avg_nsec(i32 %73, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %71, %39, %35, %29
  %79 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %80 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32 %81, i64 %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @cmf_cmb_copy_wait(%struct.ccw_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @time_to_avg_nsec(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
