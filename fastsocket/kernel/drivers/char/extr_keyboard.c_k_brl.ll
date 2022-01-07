; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_brl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_k_brl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vc_data = type { i32 }

@k_brl.pressed = internal global i32 0, align 4
@k_brl.committing = internal global i32 0, align 4
@k_brl.releasestart = internal global i64 0, align 8
@kbd = common dso_local global %struct.TYPE_2__* null, align 8
@VC_UNICODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"keyboard mode must be unicode for braille patterns\0A\00", align 1
@BRL_UC_ROW = common dso_local global i32 0, align 4
@brl_timeout = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8, i8)* @k_brl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_brl(%struct.vc_data* %0, i8 zeroext %1, i8 signext %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbd, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VC_UNICODE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i8, i8* %6, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  br label %98

18:                                               ; preds = %3
  %19 = load i8, i8* %5, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %23 = load i32, i32* @BRL_UC_ROW, align 4
  %24 = load i8, i8* %6, align 1
  %25 = call i32 @k_unicode(%struct.vc_data* %22, i32 %23, i8 signext %24)
  br label %98

26:                                               ; preds = %18
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sgt i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %98

31:                                               ; preds = %26
  %32 = load i8, i8* %6, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = load i64, i64* @brl_timeout, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load i32, i32* @k_brl.committing, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* @k_brl.releasestart, align 8
  %43 = load i64, i64* @brl_timeout, align 8
  %44 = call i64 @msecs_to_jiffies(i64 %43)
  %45 = add i64 %42, %44
  %46 = call i64 @time_after(i64 %41, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %37
  %49 = load i32, i32* @k_brl.pressed, align 4
  store i32 %49, i32* @k_brl.committing, align 4
  %50 = load i64, i64* @jiffies, align 8
  store i64 %50, i64* @k_brl.releasestart, align 8
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 1
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @k_brl.pressed, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @k_brl.pressed, align 4
  %59 = load i32, i32* @k_brl.pressed, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @k_brl.committing, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %66 = load i32, i32* @k_brl.committing, align 4
  %67 = call i32 @k_brlcommit(%struct.vc_data* %65, i32 %66, i32 0)
  store i32 0, i32* @k_brl.committing, align 4
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %51
  br label %85

70:                                               ; preds = %34
  %71 = load i32, i32* @k_brl.committing, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %75 = load i32, i32* @k_brl.committing, align 4
  %76 = call i32 @k_brlcommit(%struct.vc_data* %74, i32 %75, i32 0)
  store i32 0, i32* @k_brl.committing, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i8, i8* %5, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 1, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @k_brl.pressed, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @k_brl.pressed, align 4
  br label %85

85:                                               ; preds = %77, %69
  br label %98

86:                                               ; preds = %31
  %87 = load i8, i8* %5, align 1
  %88 = zext i8 %87 to i32
  %89 = sub nsw i32 %88, 1
  %90 = shl i32 1, %89
  %91 = load i32, i32* @k_brl.pressed, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* @k_brl.pressed, align 4
  %93 = load i64, i64* @brl_timeout, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* @k_brl.pressed, align 4
  store i32 %96, i32* @k_brl.committing, align 4
  br label %97

97:                                               ; preds = %95, %86
  br label %98

98:                                               ; preds = %17, %21, %30, %97, %85
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @k_unicode(%struct.vc_data*, i32, i8 signext) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @k_brlcommit(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
