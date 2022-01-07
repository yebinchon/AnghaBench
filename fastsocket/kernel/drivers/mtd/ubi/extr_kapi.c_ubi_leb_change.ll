; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i64, i32, i32, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"atomically write %d bytes to LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@UBI_LONGTERM = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_change(%struct.ubi_volume_desc* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_volume_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubi_volume*, align 8
  %13 = alloca %struct.ubi_device*, align 8
  %14 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %7, align 8
  %16 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %15, i32 0, i32 1
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %16, align 8
  store %struct.ubi_volume* %17, %struct.ubi_volume** %12, align 8
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 5
  %20 = load %struct.ubi_device*, %struct.ubi_device** %19, align 8
  store %struct.ubi_device* %20, %struct.ubi_device** %13, align 8
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dbg_gen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %118

39:                                               ; preds = %30
  %40 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %7, align 8
  %41 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UBI_READONLY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %47 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @EROFS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %118

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %60 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %80, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %69 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %73, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72, %66, %63, %57, %54
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %118

83:                                               ; preds = %72
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @UBI_LONGTERM, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @UBI_SHORTTERM, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @UBI_UNKNOWN, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %118

98:                                               ; preds = %91, %87, %83
  %99 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %100 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @EBADF, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %118

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %118

110:                                              ; preds = %106
  %111 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %112 = load %struct.ubi_volume*, %struct.ubi_volume** %12, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @ubi_eba_atomic_leb_change(%struct.ubi_device* %111, %struct.ubi_volume* %112, i32 %113, i8* %114, i32 %115, i32 %116)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %110, %109, %103, %95, %80, %51, %36
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_eba_atomic_leb_change(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
