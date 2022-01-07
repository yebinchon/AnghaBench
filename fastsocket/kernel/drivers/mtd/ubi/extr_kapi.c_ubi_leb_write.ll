; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i64, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i64, i32, i32, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"write %d bytes to LEB %d:%d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_READONLY = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@UBI_LONGTERM = common dso_local global i32 0, align 4
@UBI_SHORTTERM = common dso_local global i32 0, align 4
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_write(%struct.ubi_volume_desc* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_volume_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubi_volume*, align 8
  %15 = alloca %struct.ubi_device*, align 8
  %16 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %18 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %17, i32 0, i32 1
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %18, align 8
  store %struct.ubi_volume* %19, %struct.ubi_volume** %14, align 8
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 5
  %22 = load %struct.ubi_device*, %struct.ubi_device** %21, align 8
  store %struct.ubi_device* %22, %struct.ubi_device** %15, align 8
  %23 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %24 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @dbg_gen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %6
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %135

42:                                               ; preds = %33
  %43 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %44 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UBI_READONLY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @EROFS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %135

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %96, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %63 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %96, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %77 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %83 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %81, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %91 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %89, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88, %80, %72, %69, %66, %60, %57
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %135

99:                                               ; preds = %88
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @UBI_LONGTERM, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @UBI_SHORTTERM, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @UBI_UNKNOWN, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %135

114:                                              ; preds = %107, %103, %99
  %115 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %116 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @EBADF, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %135

122:                                              ; preds = %114
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %135

126:                                              ; preds = %122
  %127 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %128 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @ubi_eba_write_leb(%struct.ubi_device* %127, %struct.ubi_volume* %128, i32 %129, i8* %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %126, %125, %119, %111, %96, %54, %39
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_eba_write_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
