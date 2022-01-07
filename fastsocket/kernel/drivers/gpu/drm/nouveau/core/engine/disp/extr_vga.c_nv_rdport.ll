; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_rdport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_vga.c_nv_rdport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@NV_40 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"unknown vga port 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv_rdport(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_device*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.nouveau_device* @nv_device(i8* %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %8, align 8
  %11 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %12 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NV_50, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 6295552, %18
  %20 = call i32 @nv_rd08(i8* %17, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 960
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 961
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 962
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 986
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 980
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 981
  br i1 %38, label %39, label %47

39:                                               ; preds = %36, %33, %30, %27, %24, %21
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 8192
  %43 = add nsw i32 6295552, %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @nv_rd08(i8* %40, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %84

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 962
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 972
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 964
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 965
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 974
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 975
  br i1 %64, label %65, label %80

65:                                               ; preds = %62, %59, %56, %53, %50, %47
  %66 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %67 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NV_40, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %74, 8192
  %76 = add nsw i32 786432, %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @nv_rd08(i8* %73, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %62
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @nv_error(i8* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %72, %39, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.nouveau_device* @nv_device(i8*) #1

declare dso_local i32 @nv_rd08(i8*, i32) #1

declare dso_local i32 @nv_error(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
