; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_write_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32*, i32 }

@FX2CMD_REG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_write_register(%struct.pvr2_hdw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %9 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @LOCK_TAKE(i32 %10)
  %12 = load i32, i32* @FX2CMD_REG_WRITE, align 4
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %18 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @PVR2_DECOMPOSE_LE(i32* %19, i32 1, i32 %20)
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %23 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 255
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %36 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  store i32 %34, i32* %38, align 4
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %44 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @pvr2_send_request(%struct.pvr2_hdw* %39, i32* %42, i32 8, i32* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %48 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @LOCK_GIVE(i32 %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @PVR2_DECOMPOSE_LE(i32*, i32, i32) #1

declare dso_local i32 @pvr2_send_request(%struct.pvr2_hdw*, i32*, i32, i32*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
