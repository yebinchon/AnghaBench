; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov9655.c_ov9655_init_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860-ov9655.c_ov9655_init_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@ov9655_camera_settings = common dso_local global i32 0, align 4
@ov9655_init_at_startup = common dso_local global i32 0, align 4
@ov9655_configure_alt = common dso_local global i32 0, align 4
@ov9655_init_pre_alt = common dso_local global i32 0, align 4
@ov9655_post_unset_alt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ov9655_init_settings(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 128, i32* %11, align 8
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.sd*, %struct.sd** %3, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 10
  store i64 0, i64* %32, align 8
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 255, i32* %35, align 8
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 6
  store i64 1, i64* %47, align 8
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.sd*, %struct.sd** %3, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @ov9655_camera_settings, align 4
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ov9655_init_at_startup, align 4
  %67 = load %struct.sd*, %struct.sd** %3, align 8
  %68 = getelementptr inbounds %struct.sd, %struct.sd* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ov9655_configure_alt, align 4
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @ov9655_init_pre_alt, align 4
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ov9655_post_unset_alt, align 4
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
