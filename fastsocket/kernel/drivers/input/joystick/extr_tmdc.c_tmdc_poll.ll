; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_tmdc.c_tmdc_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_tmdc.c_tmdc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.tmdc = type { i8, i8, i32*, i32, i32 }

@TMDC_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @tmdc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmdc_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tmdc*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %9 = load i32, i32* @TMDC_MAX_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = mul nuw i64 2, %10
  %13 = alloca i8, i64 %12, align 16
  store i64 %10, i64* %4, align 8
  %14 = load %struct.gameport*, %struct.gameport** %2, align 8
  %15 = call %struct.tmdc* @gameport_get_drvdata(%struct.gameport* %14)
  store %struct.tmdc* %15, %struct.tmdc** %5, align 8
  store i8 0, i8* %7, align 1
  %16 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %17 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %21 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = bitcast i8* %13 to i8**
  %24 = call zeroext i8 @tmdc_read_packet(i32 %22, i8** %23)
  store i8 %24, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %27 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i8 1, i8* %7, align 1
  br label %69

32:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %65, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %43 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %36
  %49 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %50 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, %10
  %59 = getelementptr inbounds i8, i8* %13, i64 %58
  %60 = call i64 @tmdc_parse_packet(i32 %55, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  store i8 1, i8* %7, align 1
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %33

68:                                               ; preds = %33
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i8, i8* %7, align 1
  %71 = zext i8 %70 to i32
  %72 = load %struct.tmdc*, %struct.tmdc** %5, align 8
  %73 = getelementptr inbounds %struct.tmdc, %struct.tmdc* %72, i32 0, i32 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %75, %71
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  %78 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tmdc* @gameport_get_drvdata(%struct.gameport*) #2

declare dso_local zeroext i8 @tmdc_read_packet(i32, i8**) #2

declare dso_local i64 @tmdc_parse_packet(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
