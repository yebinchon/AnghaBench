; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i64, i32, i64*, i64, i32, %struct.ubi_device* }
%struct.ubi_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"unmap LEB %d:%d\00", align 1
@UBI_READONLY = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UBI_LONGTERM = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_map(%struct.ubi_volume_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_volume_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_volume*, align 8
  %9 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %5, align 8
  %11 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %10, i32 0, i32 1
  %12 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  store %struct.ubi_volume* %12, %struct.ubi_volume** %8, align 8
  %13 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %14 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %13, i32 0, i32 5
  %15 = load %struct.ubi_device*, %struct.ubi_device** %14, align 8
  store %struct.ubi_device* %15, %struct.ubi_device** %9, align 8
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dbg_gen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UBI_READONLY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %28 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %3
  %33 = load i32, i32* @EROFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %88

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %41 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %88

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @UBI_LONGTERM, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @UBI_SHORTTERM, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @UBI_UNKNOWN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %88

62:                                               ; preds = %55, %51, %47
  %63 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %64 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EBADF, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %88

70:                                               ; preds = %62
  %71 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %72 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EBADMSG, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %88

82:                                               ; preds = %70
  %83 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %84 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ubi_eba_write_leb(%struct.ubi_device* %83, %struct.ubi_volume* %84, i32 %85, i32* null, i32 0, i32 0, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %79, %67, %59, %44, %32
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @ubi_eba_write_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
