; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_autoresize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_autoresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, %struct.TYPE_2__*, %struct.ubi_volume** }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_volume = type { i32, i32 }
%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_vtbl_record = type { i32 }

@UBI_VTBL_AUTORESIZE_FLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot clean auto-resize flag for volume %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot auto-resize volume %d\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"volume %d (\22%s\22) re-sized from %d to %d LEBs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @autoresize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoresize(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume_desc, align 8
  %7 = alloca %struct.ubi_volume*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_vtbl_record, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 2
  %13 = load %struct.ubi_volume**, %struct.ubi_volume*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %13, i64 %15
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  store %struct.ubi_volume* %17, %struct.ubi_volume** %7, align 8
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @UBI_VTBL_AUTORESIZE_FLG, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %22
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %2
  %37 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = call i32 @memcpy(%struct.ubi_vtbl_record* %10, %struct.TYPE_2__* %42, i32 4)
  %44 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %44, i32 %45, %struct.ubi_vtbl_record* %10)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ubi_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %36
  br label %69

53:                                               ; preds = %2
  %54 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %55 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %6, i32 0, i32 0
  store %struct.ubi_volume* %54, %struct.ubi_volume** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %59 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @ubi_resize_volume(%struct.ubi_volume_desc* %6, i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ubi_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %53
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %77 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %81 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ubi_msg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %79, i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %74, %72
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @memcpy(%struct.ubi_vtbl_record*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i32, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @ubi_err(i8*, i32) #1

declare dso_local i32 @ubi_resize_volume(%struct.ubi_volume_desc*, i64) #1

declare dso_local i32 @ubi_msg(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
