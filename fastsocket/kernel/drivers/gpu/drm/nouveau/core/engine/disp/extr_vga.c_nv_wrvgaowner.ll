; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_wrvgaowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_wrvgaowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@NV_50 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"wrvgaowner after nv4x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv_wrvgaowner(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.TYPE_2__* @nv_device(i8* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NV_50, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 3, %15 ], [ %17, %16 ]
  store i32 %19, i32* %5, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call %struct.TYPE_2__* @nv_device(i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 17
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @nv_rdvgac(i8* %26, i32 0, i32 31)
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @nv_rdvgac(i8* %28, i32 1, i32 31)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nv_wrvgac(i8* %31, i32 0, i32 68, i32 %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call %struct.TYPE_2__* @nv_device(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 17
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @nv_wrvgac(i8* %40, i32 0, i32 46, i32 %41)
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @nv_wrvgac(i8* %43, i32 0, i32 46, i32 %44)
  br label %46

46:                                               ; preds = %39, %30
  br label %50

47:                                               ; preds = %2
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @nv_error(i8* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %46
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_device(i8*) #1

declare dso_local i32 @nv_rdvgac(i8*, i32, i32) #1

declare dso_local i32 @nv_wrvgac(i8*, i32, i32, i32) #1

declare dso_local i32 @nv_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
