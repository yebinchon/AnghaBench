; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_verify_mkvol_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_cdev.c_verify_mkvol_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32, i32 }
%struct.ubi_mkvol_req = type { i64, i32, i64, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UBI_VOL_NUM_AUTO = common dso_local global i64 0, align 8
@UBI_DYNAMIC_VOLUME = common dso_local global i64 0, align 8
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@UBI_VOL_NAME_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bad volume creation request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_mkvol_req*)* @verify_mkvol_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_mkvol_req(%struct.ubi_device* %0, %struct.ubi_mkvol_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_mkvol_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_mkvol_req* %1, %struct.ubi_mkvol_req** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %11 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %16 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %21 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %26 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %14, %2
  br label %126

30:                                               ; preds = %24
  %31 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %37 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35, %30
  %44 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %45 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UBI_VOL_NUM_AUTO, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %126

50:                                               ; preds = %43, %35
  %51 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %52 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %126

56:                                               ; preds = %50
  %57 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %58 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %126

62:                                               ; preds = %56
  %63 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %64 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @UBI_DYNAMIC_VOLUME, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %70 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %126

75:                                               ; preds = %68, %62
  %76 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %77 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %80 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %126

84:                                               ; preds = %75
  %85 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %86 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %89 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = and i32 %87, %91
  store i32 %92, i32* %6, align 4
  %93 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %94 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %126

101:                                              ; preds = %97, %84
  %102 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %103 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENAMETOOLONG, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %126

110:                                              ; preds = %101
  %111 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %112 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %115 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  %118 = call i32 @strnlen(i32 %113, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %121 = getelementptr inbounds %struct.ubi_mkvol_req, %struct.ubi_mkvol_req* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %126

125:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %131

126:                                              ; preds = %124, %107, %100, %83, %74, %61, %55, %49, %29
  %127 = call i32 @dbg_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.ubi_mkvol_req*, %struct.ubi_mkvol_req** %5, align 8
  %129 = call i32 @ubi_dbg_dump_mkvol_req(%struct.ubi_mkvol_req* %128)
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %126, %125
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @dbg_err(i8*) #1

declare dso_local i32 @ubi_dbg_dump_mkvol_req(%struct.ubi_mkvol_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
