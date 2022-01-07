; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_rdvgaowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_rdvgaowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@NV_50 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"rdvgaowner after nv4x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv_rdvgaowner(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.TYPE_2__* @nv_device(i8* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NV_50, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call %struct.TYPE_2__* @nv_device(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 17
  br i1 %20, label %21, label %64

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @nv_rd32(i8* %22, i32 4228)
  %24 = and i32 %23, 268435456
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %21
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @nv_rdvgac(i8* %29, i32 0, i32 40)
  %31 = and i32 %30, 128
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @nv_rdvgac(i8* %32, i32 0, i32 51)
  %34 = and i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @nv_rdvgac(i8* %35, i32 1, i32 40)
  %37 = and i32 %36, 128
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @nv_rdvgac(i8* %38, i32 1, i32 51)
  %40 = and i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %70

47:                                               ; preds = %43, %28
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 3, i32* %2, align 4
  br label %70

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 3, i32* %2, align 4
  br label %70

62:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %70

63:                                               ; preds = %21
  store i32 4, i32* %2, align 4
  br label %70

64:                                               ; preds = %15
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @nv_rdvgac(i8* %65, i32 0, i32 68)
  store i32 %66, i32* %2, align 4
  br label %70

67:                                               ; preds = %1
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @nv_error(i8* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %64, %63, %62, %61, %57, %53, %46
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @nv_device(i8*) #1

declare dso_local i32 @nv_rd32(i8*, i32) #1

declare dso_local i32 @nv_rdvgac(i8*, i32, i32) #1

declare dso_local i32 @nv_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
