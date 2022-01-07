; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MT9M111_RMB_MIRROR_COLS = common dso_local global i32 0, align 4
@MT9M111_RMB_MIRROR_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9m111_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_restore_state(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.mt9m111*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %4)
  store %struct.mt9m111* %5, %struct.mt9m111** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %8 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @mt9m111_set_context(%struct.i2c_client* %6, i32 %9)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %13 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %12, i32 0, i32 6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mt9m111_set_pixfmt(%struct.i2c_client* %11, i32 %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %20 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %19, i32 0, i32 5
  %21 = call i32 @mt9m111_setup_rect(%struct.i2c_client* %18, i32* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %24 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MT9M111_RMB_MIRROR_COLS, align 4
  %27 = call i32 @mt9m111_set_flip(%struct.i2c_client* %22, i32 %25, i32 %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %30 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MT9M111_RMB_MIRROR_ROWS, align 4
  %33 = call i32 @mt9m111_set_flip(%struct.i2c_client* %28, i32 %31, i32 %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %36 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mt9m111_set_global_gain(%struct.i2c_client* %34, i32 %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %41 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mt9m111_set_autoexposure(%struct.i2c_client* %39, i32 %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = load %struct.mt9m111*, %struct.mt9m111** %3, align 8
  %46 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mt9m111_set_autowhitebalance(%struct.i2c_client* %44, i32 %47)
  ret i32 0
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_set_context(%struct.i2c_client*, i32) #1

declare dso_local i32 @mt9m111_set_pixfmt(%struct.i2c_client*, i32) #1

declare dso_local i32 @mt9m111_setup_rect(%struct.i2c_client*, i32*) #1

declare dso_local i32 @mt9m111_set_flip(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mt9m111_set_global_gain(%struct.i2c_client*, i32) #1

declare dso_local i32 @mt9m111_set_autoexposure(%struct.i2c_client*, i32) #1

declare dso_local i32 @mt9m111_set_autowhitebalance(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
