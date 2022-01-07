; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.vc_data = type { i32 }

@shift_state = common dso_local global i32 0, align 4
@rep = common dso_local global i64 0, align 8
@K_CAPSSHIFT = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i32 0, align 4
@kbd = common dso_local global %struct.TYPE_3__* null, align 8
@VC_CAPSLOCK = common dso_local global i32 0, align 4
@shift_down = common dso_local global i64* null, align 8
@npadch = common dso_local global i32 0, align 4
@VC_UNICODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8, i8)* @k_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_shift(%struct.vc_data* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i32, i32* @shift_state, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* @rep, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %101

12:                                               ; preds = %3
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load i32, i32* @K_CAPSSHIFT, align 4
  %16 = call zeroext i8 @KVAL(i32 %15)
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load i32, i32* @K_SHIFT, align 4
  %21 = call zeroext i8 @KVAL(i32 %20)
  store i8 %21, i8* %5, align 1
  %22 = load i8, i8* %6, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kbd, align 8
  %26 = load i32, i32* @VC_CAPSLOCK, align 4
  %27 = call i32 @clr_vc_kbd_led(%struct.TYPE_3__* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i8, i8* %6, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i64*, i64** @shift_down, align 8
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i64*, i64** @shift_down, align 8
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %39, %32
  br label %54

47:                                               ; preds = %29
  %48 = load i64*, i64** @shift_down, align 8
  %49 = load i8, i8* %5, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %47, %46
  %55 = load i64*, i64** @shift_down, align 8
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 1, %63
  %65 = load i32, i32* @shift_state, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @shift_state, align 4
  br label %74

67:                                               ; preds = %54
  %68 = load i8, i8* %5, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* @shift_state, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* @shift_state, align 4
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load i32, i32* @shift_state, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i32, i32* @npadch, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kbd, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VC_UNICODE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %93 = load i32, i32* @npadch, align 4
  %94 = call i32 @to_utf8(%struct.vc_data* %92, i32 %93)
  br label %100

95:                                               ; preds = %85
  %96 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %97 = load i32, i32* @npadch, align 4
  %98 = and i32 %97, 255
  %99 = call i32 @put_queue(%struct.vc_data* %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %91
  store i32 -1, i32* @npadch, align 4
  br label %101

101:                                              ; preds = %11, %100, %82, %78, %74
  ret void
}

declare dso_local zeroext i8 @KVAL(i32) #1

declare dso_local i32 @clr_vc_kbd_led(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @to_utf8(%struct.vc_data*, i32) #1

declare dso_local i32 @put_queue(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
