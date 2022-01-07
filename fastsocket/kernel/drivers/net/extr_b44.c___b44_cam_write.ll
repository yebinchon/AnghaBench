; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_cam_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c___b44_cam_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32 }

@B44_CAM_DATA_LO = common dso_local global i32 0, align 4
@CAM_DATA_HI_VALID = common dso_local global i32 0, align 4
@B44_CAM_DATA_HI = common dso_local global i32 0, align 4
@B44_CAM_CTRL = common dso_local global i32 0, align 4
@CAM_CTRL_WRITE = common dso_local global i32 0, align 4
@CAM_CTRL_INDEX_SHIFT = common dso_local global i32 0, align 4
@CAM_CTRL_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*, i8*, i32)* @__b44_cam_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__b44_cam_write(%struct.b44* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.b44*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 24
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 0
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.b44*, %struct.b44** %4, align 8
  %35 = load i32, i32* @B44_CAM_DATA_LO, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bw32(%struct.b44* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @CAM_DATA_HI_VALID, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 8
  %44 = or i32 %38, %43
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 0
  %50 = or i32 %44, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.b44*, %struct.b44** %4, align 8
  %52 = load i32, i32* @B44_CAM_DATA_HI, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bw32(%struct.b44* %51, i32 %52, i32 %53)
  %55 = load %struct.b44*, %struct.b44** %4, align 8
  %56 = load i32, i32* @B44_CAM_CTRL, align 4
  %57 = load i32, i32* @CAM_CTRL_WRITE, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CAM_CTRL_INDEX_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %57, %60
  %62 = call i32 @bw32(%struct.b44* %55, i32 %56, i32 %61)
  %63 = load %struct.b44*, %struct.b44** %4, align 8
  %64 = load i32, i32* @B44_CAM_CTRL, align 4
  %65 = load i32, i32* @CAM_CTRL_BUSY, align 4
  %66 = call i32 @b44_wait_bit(%struct.b44* %63, i32 %64, i32 %65, i32 100, i32 1)
  ret void
}

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_wait_bit(%struct.b44*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
