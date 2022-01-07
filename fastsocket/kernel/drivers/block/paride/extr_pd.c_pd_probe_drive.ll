; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_probe_drive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pd.c_pd_probe_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32, %struct.gendisk*, i32 }
%struct.gendisk = type { i32, i32, %struct.pd_unit*, i32, i32*, i32 }

@PD_BITS = common dso_local global i32 0, align 4
@pd_fops = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@pd = common dso_local global %struct.pd_unit* null, align 8
@pd_queue = common dso_local global i32 0, align 4
@pd_identify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pd_unit*)* @pd_probe_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pd_probe_drive(%struct.pd_unit* %0) #0 {
  %2 = alloca %struct.pd_unit*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.pd_unit* %0, %struct.pd_unit** %2, align 8
  %4 = load i32, i32* @PD_BITS, align 4
  %5 = shl i32 1, %4
  %6 = call %struct.gendisk* @alloc_disk(i32 %5)
  store %struct.gendisk* %6, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = icmp ne %struct.gendisk* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %81

10:                                               ; preds = %1
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %15 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strcpy(i32 %13, i32 %16)
  %18 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %19 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %18, i32 0, i32 4
  store i32* @pd_fops, i32** %19, align 8
  %20 = load i32, i32* @major, align 4
  %21 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %24 = load %struct.pd_unit*, %struct.pd_unit** @pd, align 8
  %25 = ptrtoint %struct.pd_unit* %23 to i64
  %26 = ptrtoint %struct.pd_unit* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 24
  %29 = load i32, i32* @PD_BITS, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 %28, %30
  %32 = trunc i64 %31 to i32
  %33 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %34 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %36 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %37 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %36, i32 0, i32 1
  store %struct.gendisk* %35, %struct.gendisk** %37, align 8
  %38 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %39 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %40 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %39, i32 0, i32 2
  store %struct.pd_unit* %38, %struct.pd_unit** %40, align 8
  %41 = load i32, i32* @pd_queue, align 4
  %42 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %43 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %45 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %69

48:                                               ; preds = %10
  %49 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %50 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %63, %48
  %52 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %53 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %54, 1
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %58 = load i32, i32* @pd_identify, align 4
  %59 = call i64 @pd_special_command(%struct.pd_unit* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %81

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %65 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %51

68:                                               ; preds = %51
  br label %76

69:                                               ; preds = %10
  %70 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %71 = load i32, i32* @pd_identify, align 4
  %72 = call i64 @pd_special_command(%struct.pd_unit* %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %81

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %68
  %77 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %78 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %77, i32 0, i32 1
  store %struct.gendisk* null, %struct.gendisk** %78, align 8
  %79 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %80 = call i32 @put_disk(%struct.gendisk* %79)
  br label %81

81:                                               ; preds = %76, %74, %61, %9
  ret void
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @pd_special_command(%struct.pd_unit*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
