; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32 }
%struct.nouveau_cli = type { i32 }
%struct.nouveau_channel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.nve0_channel_ind_class = type { i32, i32, i64, i32 }

@nouveau_channel_ind.oclasses = internal constant [5 x i64] [i64 128, i64 129, i64 130, i64 131, i64 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, %struct.nouveau_cli*, i32, i32, i32, %struct.nouveau_channel**)* @nouveau_channel_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_channel_ind(%struct.nouveau_drm* %0, %struct.nouveau_cli* %1, i32 %2, i32 %3, i32 %4, %struct.nouveau_channel** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nouveau_cli*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_channel**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.nve0_channel_ind_class, align 8
  %16 = alloca %struct.nouveau_channel*, align 8
  %17 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %8, align 8
  store %struct.nouveau_cli* %1, %struct.nouveau_cli** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_channel** %5, %struct.nouveau_channel*** %13, align 8
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @nouveau_channel_ind.oclasses, i64 0, i64 0), i64** %14, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %19 = load %struct.nouveau_cli*, %struct.nouveau_cli** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @nouveau_channel_prep(%struct.nouveau_drm* %18, %struct.nouveau_cli* %19, i32 %20, i32 %21, i32 73728, %struct.nouveau_channel** %16)
  store i32 %22, i32* %17, align 4
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %16, align 8
  %24 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %13, align 8
  store %struct.nouveau_channel* %23, %struct.nouveau_channel** %24, align 8
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %7, align 4
  br label %70

29:                                               ; preds = %6
  %30 = load %struct.nouveau_channel*, %struct.nouveau_channel** %16, align 8
  %31 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %15, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load %struct.nouveau_channel*, %struct.nouveau_channel** %16, align 8
  %36 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 65536, %39
  %41 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %15, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %15, i32 0, i32 0
  store i32 8192, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.nve0_channel_ind_class, %struct.nve0_channel_ind_class* %15, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %62, %29
  %46 = load %struct.nouveau_cli*, %struct.nouveau_cli** %9, align 8
  %47 = call i32 @nv_object(%struct.nouveau_cli* %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i64*, i64** %14, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %14, align 8
  %52 = load i64, i64* %50, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.nouveau_channel*, %struct.nouveau_channel** %16, align 8
  %55 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %54, i32 0, i32 0
  %56 = call i32 @nouveau_object_new(i32 %47, i32 %48, i32 %49, i32 %53, %struct.nve0_channel_ind_class* %15, i32 24, i32* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %7, align 4
  br label %70

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61
  %63 = load i64*, i64** %14, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %45, label %66

66:                                               ; preds = %62
  %67 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %13, align 8
  %68 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %67)
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %59, %27
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @nouveau_channel_prep(%struct.nouveau_drm*, %struct.nouveau_cli*, i32, i32, i32, %struct.nouveau_channel**) #1

declare dso_local i32 @nouveau_object_new(i32, i32, i32, i32, %struct.nve0_channel_ind_class*, i32, i32*) #1

declare dso_local i32 @nv_object(%struct.nouveau_cli*) #1

declare dso_local i32 @nouveau_channel_del(%struct.nouveau_channel**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
