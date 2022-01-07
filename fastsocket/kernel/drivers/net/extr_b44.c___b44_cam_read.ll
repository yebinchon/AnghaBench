; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_cam_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_cam_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32 }

@B44_CAM_CTRL = common dso_local global i32 0, align 4
@CAM_CTRL_READ = common dso_local global i32 0, align 4
@CAM_CTRL_INDEX_SHIFT = common dso_local global i32 0, align 4
@CAM_CTRL_BUSY = common dso_local global i32 0, align 4
@B44_CAM_DATA_LO = common dso_local global i32 0, align 4
@B44_CAM_DATA_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*, i8*, i32)* @__b44_cam_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__b44_cam_read(%struct.b44* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.b44*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.b44*, %struct.b44** %4, align 8
  %9 = load i32, i32* @B44_CAM_CTRL, align 4
  %10 = load i32, i32* @CAM_CTRL_READ, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CAM_CTRL_INDEX_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %10, %13
  %15 = call i32 @bw32(%struct.b44* %8, i32 %9, i32 %14)
  %16 = load %struct.b44*, %struct.b44** %4, align 8
  %17 = load i32, i32* @B44_CAM_CTRL, align 4
  %18 = load i32, i32* @CAM_CTRL_BUSY, align 4
  %19 = call i32 @b44_wait_bit(%struct.b44* %16, i32 %17, i32 %18, i32 100, i32 1)
  %20 = load %struct.b44*, %struct.b44** %4, align 8
  %21 = load i32, i32* @B44_CAM_DATA_LO, align 4
  %22 = call i32 @br32(%struct.b44* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 0
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  store i8 %44, i8* %46, align 1
  %47 = load %struct.b44*, %struct.b44** %4, align 8
  %48 = load i32, i32* @B44_CAM_DATA_HI, align 4
  %49 = call i32 @br32(%struct.b44* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 0
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 %59, i8* %61, align 1
  ret void
}

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_wait_bit(%struct.b44*, i32, i32, i32, i32) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
