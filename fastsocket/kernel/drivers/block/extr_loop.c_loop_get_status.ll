; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i64, i32, %struct.file* }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.loop_info64 = type { i32, i64, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.kstat = type { i32, i32, i32 }

@Lo_bound = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@LO_NAME_SIZE = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.loop_info64*)* @loop_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_get_status(%struct.loop_device* %0, %struct.loop_info64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.loop_info64*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.kstat, align 4
  %8 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.loop_info64* %1, %struct.loop_info64** %5, align 8
  %9 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %10 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %9, i32 0, i32 11
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %6, align 8
  %12 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %13 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @Lo_bound, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %137

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vfs_getattr(i32 %24, i32 %28, %struct.kstat* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %137

34:                                               ; preds = %20
  %35 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %36 = call i32 @memset(%struct.loop_info64* %35, i32 0, i32 72)
  %37 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %38 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %41 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @huge_encode_dev(i32 %43)
  %45 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %46 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %50 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %52 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %61

58:                                               ; preds = %34
  %59 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %57, %55 ], [ %60, %58 ]
  %63 = call i8* @huge_encode_dev(i32 %62)
  %64 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %65 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %67 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %70 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %72 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %75 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %77 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %80 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %82 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %85 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* @LO_NAME_SIZE, align 8
  %88 = call i32 @memcpy(i32 %83, i32 %86, i64 %87)
  %89 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %90 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %93 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* @LO_NAME_SIZE, align 8
  %96 = call i32 @memcpy(i32 %91, i32 %94, i64 %95)
  %97 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %98 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %97, i32 0, i32 3
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = icmp ne %struct.TYPE_4__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %61
  %102 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %103 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  br label %108

107:                                              ; preds = %61
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i32 [ %106, %101 ], [ 0, %107 ]
  %110 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %111 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %113 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %108
  %117 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %118 = call i64 @capable(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %122 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %125 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %127 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %130 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %133 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @memcpy(i32 %128, i32 %131, i64 %134)
  br label %136

136:                                              ; preds = %120, %116, %108
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %32, %17
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @vfs_getattr(i32, i32, %struct.kstat*) #1

declare dso_local i32 @memset(%struct.loop_info64*, i32, i32) #1

declare dso_local i8* @huge_encode_dev(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
