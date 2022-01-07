; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mxm = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"checksum invalid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxms_checksum(%struct.nouveau_mxm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_mxm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.nouveau_mxm* %0, %struct.nouveau_mxm** %3, align 8
  %7 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %8 = call i64 @mxms_headerlen(%struct.nouveau_mxm* %7)
  %9 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %10 = call i64 @mxms_structlen(%struct.nouveau_mxm* %9)
  %11 = add nsw i64 %8, %10
  store i64 %11, i64* %4, align 8
  %12 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %13 = call i64* @mxms_data(%struct.nouveau_mxm* %12)
  store i64* %13, i64** %5, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %18, %1
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %4, align 8
  %17 = icmp ne i64 %15, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %5, align 8
  %21 = load i64, i64* %19, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %3, align 8
  %29 = call i32 @nv_debug(%struct.nouveau_mxm* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @mxms_headerlen(%struct.nouveau_mxm*) #1

declare dso_local i64 @mxms_structlen(%struct.nouveau_mxm*) #1

declare dso_local i64* @mxms_data(%struct.nouveau_mxm*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_mxm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
