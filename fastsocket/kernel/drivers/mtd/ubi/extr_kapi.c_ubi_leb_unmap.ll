; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i64, i32, i64, i32, %struct.ubi_device* }
%struct.ubi_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"unmap LEB %d:%d\00", align 1
@UBI_READONLY = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_unmap(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_volume*, align 8
  %7 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %8, i32 0, i32 1
  %10 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  store %struct.ubi_volume* %10, %struct.ubi_volume** %6, align 8
  %11 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %12 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %11, i32 0, i32 4
  %13 = load %struct.ubi_device*, %struct.ubi_device** %12, align 8
  store %struct.ubi_device* %13, %struct.ubi_device** %7, align 8
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dbg_gen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %20 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UBI_READONLY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %26 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %2
  %31 = load i32, i32* @EROFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %39 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %36
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %47 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EBADF, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %55 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %54, %struct.ubi_volume* %55, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %50, %42, %30
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
