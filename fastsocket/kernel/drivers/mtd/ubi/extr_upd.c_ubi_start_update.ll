; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_upd.c_ubi_start_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_upd.c_ubi_start_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { i32, i32, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"start update of volume %d, %llu bytes\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_start_update(%struct.ubi_device* %0, %struct.ubi_volume* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_volume*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %11 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @dbg_gen(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %13)
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %16 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ubi_assert(i32 %27)
  %29 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %30 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %32 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %33 = call i32 @set_update_marker(%struct.ubi_device* %31, %struct.ubi_volume* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %111

38:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %42 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %46, %struct.ubi_volume* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %111

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %63 = call i32 @ubi_wl_flush(%struct.ubi_device* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %111

68:                                               ; preds = %61
  %69 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %70 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %71 = call i32 @clear_update_marker(%struct.ubi_device* %69, %struct.ubi_volume* %70, i32 0)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %111

76:                                               ; preds = %68
  %77 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %78 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  store i32 0, i32* %4, align 4
  br label %111

79:                                               ; preds = %58
  %80 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %81 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vmalloc(i32 %82)
  %84 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %85 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %87 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %79
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %111

93:                                               ; preds = %79
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %96 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = sub nsw i64 %98, 1
  %100 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %101 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @div_u64(i64 %99, i64 %102)
  %104 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %105 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %108 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %110 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %93, %90, %76, %74, %66, %52, %36
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @dbg_gen(i8*, i32, i64) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @set_update_marker(%struct.ubi_device*, %struct.ubi_volume*) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_wl_flush(%struct.ubi_device*) #1

declare dso_local i32 @clear_update_marker(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @div_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
