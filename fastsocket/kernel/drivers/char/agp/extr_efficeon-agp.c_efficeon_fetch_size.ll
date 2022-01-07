; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_efficeon-agp.c_efficeon_fetch_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_efficeon-agp.c_efficeon_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aper_size_info_lvl2 = type { i64, i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@INTEL_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @efficeon_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efficeon_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.aper_size_info_lvl2*, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @INTEL_APSIZE, align 4
  %9 = call i32 @pci_read_config_word(i32 %7, i32 %8, i64* %3)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.aper_size_info_lvl2* @A_SIZE_LVL2(i32 %14)
  store %struct.aper_size_info_lvl2* %15, %struct.aper_size_info_lvl2** %4, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %53, %0
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %4, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %26, i64 %28
  %30 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %25, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %24
  %34 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %4, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %34, i64 %36
  %38 = bitcast %struct.aper_size_info_lvl2* %37 to i8*
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i8* %38, i8** %42, align 8
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.aper_size_info_lvl2*, %struct.aper_size_info_lvl2** %4, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %46, i64 %48
  %50 = getelementptr inbounds %struct.aper_size_info_lvl2, %struct.aper_size_info_lvl2* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %1, align 4
  br label %57

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %16

56:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @pci_read_config_word(i32, i32, i64*) #1

declare dso_local %struct.aper_size_info_lvl2* @A_SIZE_LVL2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
