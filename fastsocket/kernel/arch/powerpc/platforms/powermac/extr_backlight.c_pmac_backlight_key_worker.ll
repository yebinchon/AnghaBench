; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_backlight.c_pmac_backlight_key_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_backlight.c_pmac_backlight_key_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.backlight_properties }
%struct.backlight_properties = type { i32, i32 }
%struct.work_struct = type { i32 }

@kernel_backlight_disabled = common dso_local global i32 0, align 4
@pmac_backlight_mutex = common dso_local global i32 0, align 4
@pmac_backlight = common dso_local global %struct.TYPE_3__* null, align 8
@pmac_backlight_key_queued = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @pmac_backlight_key_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmac_backlight_key_worker(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.backlight_properties*, align 8
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = call i64 @atomic_read(i32* @kernel_backlight_disabled)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %50

8:                                                ; preds = %1
  %9 = call i32 @mutex_lock(i32* @pmac_backlight_mutex)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmac_backlight, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmac_backlight, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.backlight_properties* %14, %struct.backlight_properties** %3, align 8
  %15 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %16 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @pmac_backlight_key_queued, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 -1, i32 1
  %22 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %23 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 15
  %26 = mul nsw i32 %21, %25
  %27 = add nsw i32 %17, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %42

31:                                               ; preds = %12
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %34 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %39 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.backlight_properties*, %struct.backlight_properties** %3, align 8
  %45 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmac_backlight, align 8
  %47 = call i32 @backlight_update_status(%struct.TYPE_3__* %46)
  br label %48

48:                                               ; preds = %42, %8
  %49 = call i32 @mutex_unlock(i32* @pmac_backlight_mutex)
  br label %50

50:                                               ; preds = %48, %7
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
