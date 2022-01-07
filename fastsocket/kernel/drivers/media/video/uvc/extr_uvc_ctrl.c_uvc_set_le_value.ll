; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_set_le_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_ctrl.c_uvc_set_le_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_control_mapping = type { i32, i32, i64 }

@V4L2_CTRL_TYPE_BUTTON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_control_mapping*, i32, i32*)* @uvc_set_le_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_set_le_value(%struct.uvc_control_mapping* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.uvc_control_mapping*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uvc_control_mapping* %0, %struct.uvc_control_mapping** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %4, align 8
  %11 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %4, align 8
  %14 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %4, align 8
  %17 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_CTRL_TYPE_BUTTON, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 8
  %25 = load i32*, i32** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 7
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %67, %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = sub nsw i64 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %46, %51
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = load i32, i32* %8, align 4
  br label %59

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 8, %58 ]
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 8, %63
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  br label %30

70:                                               ; preds = %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
