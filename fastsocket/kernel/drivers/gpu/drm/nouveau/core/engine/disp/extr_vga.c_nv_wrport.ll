; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_wrport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_wrport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@NV_40 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"unknown vga port 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv_wrport(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_device*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.nouveau_device* @nv_device(i8* %10)
  store %struct.nouveau_device* %11, %struct.nouveau_device** %9, align 8
  %12 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %13 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NV_50, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 6295552, %19
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @nv_wr08(i8* %18, i32 %20, i32 %21)
  br label %90

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 960
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 961
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 962
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 986
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 980
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 981
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %35, %32, %29, %26, %23
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 8192
  %45 = add nsw i32 6295552, %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @nv_wr08(i8* %42, i32 %47, i32 %48)
  br label %89

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 962
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 972
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 964
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 965
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 974
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 975
  br i1 %67, label %68, label %84

68:                                               ; preds = %65, %62, %59, %56, %53, %50
  %69 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %70 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NV_40, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 %77, 8192
  %79 = add nsw i32 786432, %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @nv_wr08(i8* %76, i32 %81, i32 %82)
  br label %88

84:                                               ; preds = %65
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @nv_error(i8* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %75
  br label %89

89:                                               ; preds = %88, %41
  br label %90

90:                                               ; preds = %89, %17
  ret void
}

declare dso_local %struct.nouveau_device* @nv_device(i8*) #1

declare dso_local i32 @nv_wr08(i8*, i32, i32) #1

declare dso_local i32 @nv_error(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
