; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.c_vpif_set_vbi_display_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.c_vpif_set_vbi_display_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.vpif_vbi_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@vpifregs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpif_set_vbi_display_params(%struct.vpif_vbi_params* %0, i64 %1) #0 {
  %3 = alloca %struct.vpif_vbi_params*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vpif_vbi_params* %0, %struct.vpif_vbi_params** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %7 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 1016, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %11 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = and i32 67108863, %13
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regw(i32 %17, i32 %22)
  %24 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %25 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 1016, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %29 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = and i32 67108863, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regw(i32 %35, i32 %40)
  %42 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %43 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = and i32 1016, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %47 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = and i32 67108863, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @regw(i32 %53, i32 %58)
  %60 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %61 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = and i32 1016, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.vpif_vbi_params*, %struct.vpif_vbi_params** %3, align 8
  %65 = getelementptr inbounds %struct.vpif_vbi_params, %struct.vpif_vbi_params* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = and i32 67108863, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpifregs, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @regw(i32 %71, i32 %76)
  ret void
}

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
