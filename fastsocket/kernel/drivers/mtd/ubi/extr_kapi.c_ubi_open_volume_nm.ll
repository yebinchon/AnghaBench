; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume_nm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32 }
%struct.ubi_device = type { i32, i32, %struct.ubi_volume** }
%struct.ubi_volume = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"open device %d, volume %s, mode %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_VOL_NAME_MAX = common dso_local global i32 0, align 4
@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_volume_desc* @ubi_open_volume_nm(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubi_device*, align 8
  %12 = alloca %struct.ubi_volume_desc*, align 8
  %13 = alloca %struct.ubi_volume*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15, i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %22)
  store %struct.ubi_volume_desc* %23, %struct.ubi_volume_desc** %4, align 8
  br label %114

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @strnlen(i8* %25, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %34)
  store %struct.ubi_volume_desc* %35, %struct.ubi_volume_desc** %4, align 8
  br label %114

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %45)
  store %struct.ubi_volume_desc* %46, %struct.ubi_volume_desc** %4, align 8
  br label %114

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.ubi_device* @ubi_get_device(i32 %48)
  store %struct.ubi_device* %49, %struct.ubi_device** %11, align 8
  %50 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %51 = icmp ne %struct.ubi_device* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %54)
  store %struct.ubi_volume_desc* %55, %struct.ubi_volume_desc** %4, align 8
  br label %114

56:                                               ; preds = %47
  %57 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %58 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %57, i32 0, i32 1
  %59 = call i32 @spin_lock(i32* %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %92, %56
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %60
  %67 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %68 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %67, i32 0, i32 2
  %69 = load %struct.ubi_volume**, %struct.ubi_volume*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %69, i64 %71
  %73 = load %struct.ubi_volume*, %struct.ubi_volume** %72, align 8
  store %struct.ubi_volume* %73, %struct.ubi_volume** %13, align 8
  %74 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %75 = icmp ne %struct.ubi_volume* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %79 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.ubi_volume*, %struct.ubi_volume** %13, align 8
  %85 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strcmp(i8* %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %9, align 4
  br label %95

91:                                               ; preds = %82, %76, %66
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %60

95:                                               ; preds = %89, %60
  %96 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %97 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call %struct.ubi_volume_desc* @ubi_open_volume(i32 %102, i32 %103, i32 %104)
  store %struct.ubi_volume_desc* %105, %struct.ubi_volume_desc** %12, align 8
  br label %110

106:                                              ; preds = %95
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  %109 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %108)
  store %struct.ubi_volume_desc* %109, %struct.ubi_volume_desc** %12, align 8
  br label %110

110:                                              ; preds = %106, %101
  %111 = load %struct.ubi_device*, %struct.ubi_device** %11, align 8
  %112 = call i32 @ubi_put_device(%struct.ubi_device* %111)
  %113 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %12, align 8
  store %struct.ubi_volume_desc* %113, %struct.ubi_volume_desc** %4, align 8
  br label %114

114:                                              ; preds = %110, %52, %43, %32, %20
  %115 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  ret %struct.ubi_volume_desc* %115
}

declare dso_local i32 @dbg_gen(i8*, i32, i8*, i32) #1

declare dso_local %struct.ubi_volume_desc* @ERR_PTR(i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local %struct.ubi_device* @ubi_get_device(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ubi_volume_desc* @ubi_open_volume(i32, i32, i32) #1

declare dso_local i32 @ubi_put_device(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
