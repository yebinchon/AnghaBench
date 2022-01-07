; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_upd.c_clear_update_marker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_upd.c_clear_update_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32* }
%struct.ubi_volume = type { i64, i64, i64, i32, i64, i64, i64, i64 }
%struct.ubi_vtbl_record = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"clear update marker for volume %d\00", align 1
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_volume*, i64)* @clear_update_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_update_marker(%struct.ubi_device* %0, %struct.ubi_volume* %1, i64 %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_vtbl_record, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @dbg_gen(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = call i32 @memcpy(%struct.ubi_vtbl_record* %8, i32* %19, i32 8)
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %3
  %30 = phi i1 [ false, %3 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubi_assert(i32 %31)
  %33 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %8, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %35 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %29
  %40 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %41 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %44 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %47 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 6
  %51 = call i32 @div_u64_rem(i64 %45, i64 %48, i64* %50)
  %52 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %53 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %55 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %60 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %69

63:                                               ; preds = %39
  %64 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %65 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %68 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %58
  br label %70

70:                                               ; preds = %69, %29
  %71 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %72 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %75 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %76 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %74, i64 %77, %struct.ubi_vtbl_record* %8)
  store i32 %78, i32* %7, align 4
  %79 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %80 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %82 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @dbg_gen(i8*, i64) #1

declare dso_local i32 @memcpy(%struct.ubi_vtbl_record*, i32*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @div_u64_rem(i64, i64, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i64, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
