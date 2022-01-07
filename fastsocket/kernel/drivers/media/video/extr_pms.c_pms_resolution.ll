; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_resolution.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@standard = common dso_local global i32 0, align 4
@MVVMEMORYWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16)* @pms_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pms_resolution(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = sext i16 %6 to i32
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 280
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 280, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @mvv_write(i32 24, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  %16 = call i32 @mvv_write(i32 25, i32 %15)
  %17 = load i32, i32* @standard, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = call i32 @mvv_write(i32 26, i32 252)
  %21 = call i32 @mvv_write(i32 27, i32 0)
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @pms_vertdeci(i32 240, i32 240)
  br label %31

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pms_vertdeci(i32 %29, i32 240)
  br label %31

31:                                               ; preds = %28, %26
  br label %43

32:                                               ; preds = %11
  %33 = call i32 @mvv_write(i32 26, i32 26)
  %34 = call i32 @mvv_write(i32 27, i32 1)
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 256
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @pms_vertdeci(i32 270, i32 270)
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pms_vertdeci(i32 %40, i32 270)
  br label %42

42:                                               ; preds = %39, %37
  br label %43

43:                                               ; preds = %42, %31
  %44 = call i32 @mvv_write(i32 18, i32 0)
  %45 = load i32, i32* @MVVMEMORYWIDTH, align 4
  %46 = call i32 @mvv_write(i32 19, i32 %45)
  %47 = call i32 @mvv_write(i32 66, i32 0)
  %48 = call i32 @mvv_write(i32 67, i32 0)
  %49 = load i32, i32* @MVVMEMORYWIDTH, align 4
  %50 = call i32 @mvv_write(i32 68, i32 %49)
  %51 = load i16, i16* %3, align 2
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, 8
  %54 = call i32 @mvv_write(i32 34, i32 %53)
  %55 = load i16, i16* %3, align 2
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, 8
  %58 = ashr i32 %57, 8
  %59 = call i32 @mvv_write(i32 35, i32 %58)
  %60 = load i32, i32* @standard, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = load i16, i16* %3, align 2
  %64 = call i32 @pms_horzdeci(i16 signext %63, i32 640)
  br label %71

65:                                               ; preds = %43
  %66 = load i16, i16* %3, align 2
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, 8
  %69 = trunc i32 %68 to i16
  %70 = call i32 @pms_horzdeci(i16 signext %69, i32 768)
  br label %71

71:                                               ; preds = %65, %62
  %72 = call i32 @mvv_read(i32 48)
  %73 = and i32 %72, 254
  %74 = call i32 @mvv_write(i32 48, i32 %73)
  %75 = call i32 @mvv_read(i32 8)
  %76 = or i32 %75, 1
  %77 = call i32 @mvv_write(i32 8, i32 %76)
  %78 = call i32 @mvv_read(i32 1)
  %79 = and i32 %78, 253
  %80 = call i32 @mvv_write(i32 1, i32 %79)
  %81 = call i32 @mvv_write(i32 50, i32 0)
  %82 = load i32, i32* @MVVMEMORYWIDTH, align 4
  %83 = call i32 @mvv_write(i32 51, i32 %82)
  ret void
}

declare dso_local i32 @mvv_write(i32, i32) #1

declare dso_local i32 @pms_vertdeci(i32, i32) #1

declare dso_local i32 @pms_horzdeci(i16 signext, i32) #1

declare dso_local i32 @mvv_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
