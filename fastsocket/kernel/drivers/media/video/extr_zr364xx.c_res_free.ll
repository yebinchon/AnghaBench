; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_zr364xx.c_res_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_zr364xx.c_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr364xx_camera = type { i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"res: put\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zr364xx_camera*)* @res_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_free(%struct.zr364xx_camera* %0) #0 {
  %2 = alloca %struct.zr364xx_camera*, align 8
  store %struct.zr364xx_camera* %0, %struct.zr364xx_camera** %2, align 8
  %3 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %4 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %7 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %2, align 8
  %9 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %8, i32 0, i32 0
  %10 = call i32 @mutex_unlock(i32* %9)
  %11 = call i32 @_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
