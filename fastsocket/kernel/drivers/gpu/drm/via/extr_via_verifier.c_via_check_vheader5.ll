; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_check_vheader5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_check_vheader5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"Illegal termination of video header5 command\0A\00", align 1
@state_error = common dso_local global i32 0, align 4
@VIA_VIDEOMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Illegal header5 header data\0A\00", align 1
@state_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @via_check_vheader5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_check_vheader5(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = ptrtoint i32* %10 to i64
  %13 = ptrtoint i32* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = icmp slt i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @state_error, align 4
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* @VIA_VIDEOMASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @verify_mmio_address(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @state_error, align 4
  store i32 %31, i32* %3, align 4
  br label %75

32:                                               ; preds = %20
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  %38 = load i32, i32* %36, align 4
  %39 = icmp ne i32 %38, 16056320
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @state_error, align 4
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %32
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %44, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @state_error, align 4
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @eat_words(i32** %7, i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @state_error, align 4
  store i32 %57, i32* %3, align 4
  br label %75

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 3
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 3
  %66 = sub nsw i32 4, %65
  %67 = call i64 @verify_video_tail(i32** %7, i32* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @state_error, align 4
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %62, %58
  %72 = load i32*, i32** %7, align 8
  %73 = load i32**, i32*** %4, align 8
  store i32* %72, i32** %73, align 8
  %74 = load i32, i32* @state_command, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %69, %56, %48, %40, %30, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @verify_mmio_address(i32) #1

declare dso_local i64 @eat_words(i32**, i32*, i32) #1

declare dso_local i64 @verify_video_tail(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
