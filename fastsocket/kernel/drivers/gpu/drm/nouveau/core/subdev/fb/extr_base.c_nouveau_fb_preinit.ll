; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_base.c_nouveau_fb_preinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_base.c_nouveau_fb_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_fb.0*)*, i32, i64 }
%struct.nouveau_fb.0 = type opaque

@nouveau_fb_preinit.name = internal global [139 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"stolen system memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SGRAM\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SDRAM\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"GDDR5\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"GDDR4\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"GDDR3\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"GDDR2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"DDR3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DDR2\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"DDR1\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"error detecting memory configuration!!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"RAM type: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"RAM size: %d MiB\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"   ZCOMP: %d tags\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fb_preinit(%struct.nouveau_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_fb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %3, align 8
  %6 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.nouveau_fb.0*)*, i32 (%struct.nouveau_fb.0*)** %8, align 8
  %10 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %11 = bitcast %struct.nouveau_fb* %10 to %struct.nouveau_fb.0*
  %12 = call i32 %9(%struct.nouveau_fb.0* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %23 = call i32 @nv_fatal(%struct.nouveau_fb* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  store i32 %32, i32* %2, align 4
  br label %93

33:                                               ; preds = %15
  %34 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %35 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %34, i32 0, i32 2
  %36 = call i32 @nouveau_mm_initialised(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %40 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %39, i32 0, i32 2
  %41 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %42 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 12
  %46 = call i32 @nouveau_mm_init(i32* %40, i32 0, i32 %45, i32 1)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %93

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %54 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %53, i32 0, i32 1
  %55 = call i32 @nouveau_mm_initialised(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %52
  %58 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %59 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %58, i32 0, i32 1
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 0, %65 ]
  %68 = call i32 @nouveau_mm_init(i32* %59, i32 0, i32 %67, i32 1)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %93

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %76 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %77 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds [139 x i8*], [139 x i8*]* @nouveau_fb_preinit.name, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (%struct.nouveau_fb*, i8*, ...) @nv_info(%struct.nouveau_fb* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %81)
  %83 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %84 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %85 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = ashr i32 %87, 20
  %89 = call i32 (%struct.nouveau_fb*, i8*, ...) @nv_info(%struct.nouveau_fb* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %88)
  %90 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (%struct.nouveau_fb*, i8*, ...) @nv_info(%struct.nouveau_fb* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %74, %71, %49, %31
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @nv_fatal(%struct.nouveau_fb*, i8*) #1

declare dso_local i32 @nouveau_mm_initialised(i32*) #1

declare dso_local i32 @nouveau_mm_init(i32*, i32, i32, i32) #1

declare dso_local i32 @nv_info(%struct.nouveau_fb*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
