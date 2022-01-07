; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_attach_by_scanning.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_attach_by_scanning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i64, i64, i64 }
%struct.ubi_scan_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*)* @attach_by_scanning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_by_scanning(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_scan_info*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %6 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %7 = call %struct.ubi_scan_info* @ubi_scan(%struct.ubi_device* %6)
  store %struct.ubi_scan_info* %7, %struct.ubi_scan_info** %5, align 8
  %8 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %9 = call i64 @IS_ERR(%struct.ubi_scan_info* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %13 = call i32 @PTR_ERR(%struct.ubi_scan_info* %12)
  store i32 %13, i32* %2, align 4
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %16 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %19 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %30 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %35 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %40 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %41 = call i32 @ubi_read_volume_table(%struct.ubi_device* %39, %struct.ubi_scan_info* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %14
  br label %72

45:                                               ; preds = %14
  %46 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %47 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %48 = call i32 @ubi_wl_init_scan(%struct.ubi_device* %46, %struct.ubi_scan_info* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %65

52:                                               ; preds = %45
  %53 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %54 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %55 = call i32 @ubi_eba_init_scan(%struct.ubi_device* %53, %struct.ubi_scan_info* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %62

59:                                               ; preds = %52
  %60 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %61 = call i32 @ubi_scan_destroy_si(%struct.ubi_scan_info* %60)
  store i32 0, i32* %2, align 4
  br label %76

62:                                               ; preds = %58
  %63 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %64 = call i32 @ubi_wl_close(%struct.ubi_device* %63)
  br label %65

65:                                               ; preds = %62, %51
  %66 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %67 = call i32 @free_internal_volumes(%struct.ubi_device* %66)
  %68 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @vfree(i32 %70)
  br label %72

72:                                               ; preds = %65, %44
  %73 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %74 = call i32 @ubi_scan_destroy_si(%struct.ubi_scan_info* %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %59, %11
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ubi_scan_info* @ubi_scan(%struct.ubi_device*) #1

declare dso_local i64 @IS_ERR(%struct.ubi_scan_info*) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_scan_info*) #1

declare dso_local i32 @ubi_read_volume_table(%struct.ubi_device*, %struct.ubi_scan_info*) #1

declare dso_local i32 @ubi_wl_init_scan(%struct.ubi_device*, %struct.ubi_scan_info*) #1

declare dso_local i32 @ubi_eba_init_scan(%struct.ubi_device*, %struct.ubi_scan_info*) #1

declare dso_local i32 @ubi_scan_destroy_si(%struct.ubi_scan_info*) #1

declare dso_local i32 @ubi_wl_close(%struct.ubi_device*) #1

declare dso_local i32 @free_internal_volumes(%struct.ubi_device*) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
