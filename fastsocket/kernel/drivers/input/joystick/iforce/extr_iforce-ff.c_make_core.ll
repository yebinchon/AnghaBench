; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_make_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-ff.c_make_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FF_CMD_EFFECT = common dso_local global i32 0, align 4
@FF_CORE_SHOULD_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iforce*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @make_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_core(%struct.iforce* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) #0 {
  %12 = alloca %struct.iforce*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [14 x i8], align 1
  store %struct.iforce* %0, %struct.iforce** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 %10, i64* %22, align 8
  %24 = load i64, i64* %18, align 8
  %25 = call i64 @TIME_SCALE(i64 %24)
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %19, align 8
  %27 = call i64 @TIME_SCALE(i64 %26)
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %21, align 8
  %29 = call i64 @TIME_SCALE(i64 %28)
  store i64 %29, i64* %21, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call zeroext i8 @LO(i64 %30)
  %32 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = load i64, i64* %16, align 8
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 1
  store i8 %34, i8* %35, align 1
  %36 = load i64, i64* %17, align 8
  %37 = call zeroext i8 @LO(i64 %36)
  %38 = zext i8 %37 to i32
  %39 = load %struct.iforce*, %struct.iforce** %12, align 8
  %40 = load i64, i64* %20, align 8
  %41 = call zeroext i8 @find_button(%struct.iforce* %39, i64 %40)
  %42 = zext i8 %41 to i32
  %43 = or i32 %38, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 2
  store i8 %44, i8* %45, align 1
  %46 = load i64, i64* %18, align 8
  %47 = call zeroext i8 @LO(i64 %46)
  %48 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 3
  store i8 %47, i8* %48, align 1
  %49 = load i64, i64* %18, align 8
  %50 = call zeroext i8 @HI(i64 %49)
  %51 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 4
  store i8 %50, i8* %51, align 1
  %52 = load i64, i64* %22, align 8
  %53 = call zeroext i8 @HI(i64 %52)
  %54 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 5
  store i8 %53, i8* %54, align 1
  %55 = load i64, i64* %21, align 8
  %56 = call zeroext i8 @LO(i64 %55)
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 6
  store i8 %56, i8* %57, align 1
  %58 = load i64, i64* %21, align 8
  %59 = call zeroext i8 @HI(i64 %58)
  %60 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 7
  store i8 %59, i8* %60, align 1
  %61 = load i64, i64* %14, align 8
  %62 = call zeroext i8 @LO(i64 %61)
  %63 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 8
  store i8 %62, i8* %63, align 1
  %64 = load i64, i64* %14, align 8
  %65 = call zeroext i8 @HI(i64 %64)
  %66 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 9
  store i8 %65, i8* %66, align 1
  %67 = load i64, i64* %15, align 8
  %68 = call zeroext i8 @LO(i64 %67)
  %69 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 10
  store i8 %68, i8* %69, align 1
  %70 = load i64, i64* %15, align 8
  %71 = call zeroext i8 @HI(i64 %70)
  %72 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 11
  store i8 %71, i8* %72, align 1
  %73 = load i64, i64* %19, align 8
  %74 = call zeroext i8 @LO(i64 %73)
  %75 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 12
  store i8 %74, i8* %75, align 1
  %76 = load i64, i64* %19, align 8
  %77 = call zeroext i8 @HI(i64 %76)
  %78 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 13
  store i8 %77, i8* %78, align 1
  %79 = load %struct.iforce*, %struct.iforce** %12, align 8
  %80 = load i32, i32* @FF_CMD_EFFECT, align 4
  %81 = getelementptr inbounds [14 x i8], [14 x i8]* %23, i64 0, i64 0
  %82 = call i32 @iforce_send_packet(%struct.iforce* %79, i32 %80, i8* %81)
  %83 = load i32, i32* @FF_CORE_SHOULD_PLAY, align 4
  %84 = load %struct.iforce*, %struct.iforce** %12, align 8
  %85 = getelementptr inbounds %struct.iforce, %struct.iforce* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @test_bit(i32 %83, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %11
  %94 = load %struct.iforce*, %struct.iforce** %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @iforce_control_playback(%struct.iforce* %94, i64 %95, i32 1)
  br label %97

97:                                               ; preds = %93, %11
  ret i32 0
}

declare dso_local i64 @TIME_SCALE(i64) #1

declare dso_local zeroext i8 @LO(i64) #1

declare dso_local zeroext i8 @find_button(%struct.iforce*, i64) #1

declare dso_local zeroext i8 @HI(i64) #1

declare dso_local i32 @iforce_send_packet(%struct.iforce*, i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @iforce_control_playback(%struct.iforce*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
