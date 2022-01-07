; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_backlight.c___pmac_backlight_set_legacy_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_backlight.c___pmac_backlight_set_legacy_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.backlight_properties }
%struct.backlight_properties = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@pmac_backlight_mutex = common dso_local global i32 0, align 4
@pmac_backlight = common dso_local global %struct.TYPE_3__* null, align 8
@OLD_BACKLIGHT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__pmac_backlight_set_legacy_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pmac_backlight_set_legacy_brightness(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.backlight_properties*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @ENXIO, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = call i32 @mutex_lock(i32* @pmac_backlight_mutex)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmac_backlight, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmac_backlight, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.backlight_properties* %12, %struct.backlight_properties** %4, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %15 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = mul nsw i32 %13, %17
  %19 = load i32, i32* @OLD_BACKLIGHT_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = sdiv i32 %18, %20
  %22 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %23 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %25 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %28 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %10
  %32 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %33 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %36 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %46

37:                                               ; preds = %10
  %38 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %39 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %44 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmac_backlight, align 8
  %48 = call i32 @backlight_update_status(%struct.TYPE_3__* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %1
  %50 = call i32 @mutex_unlock(i32* @pmac_backlight_mutex)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
