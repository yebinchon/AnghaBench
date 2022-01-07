; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_capture_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, i32 }
%struct.pcb_config = type { i32 }

@ENABLE_EP4 = common dso_local global i64 0, align 8
@ENABLE_EP3 = common dso_local global i64 0, align 8
@ENABLE_EP5 = common dso_local global i64 0, align 8
@ENABLE_EP6 = common dso_local global i64 0, align 8
@ENABLE_EP1 = common dso_local global i64 0, align 8
@ENABLE_EP2 = common dso_local global i64 0, align 8
@CX231XX_ANALOG_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_capture_start(%struct.cx231xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcb_config*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i64 -1, i64* %9, align 8
  %11 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %12 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %11, i32 0, i32 1
  %13 = bitcast i32* %12 to %struct.pcb_config*
  store %struct.pcb_config* %13, %struct.pcb_config** %10, align 8
  %14 = load %struct.pcb_config*, %struct.pcb_config** %10, align 8
  %15 = getelementptr inbounds %struct.pcb_config, %struct.pcb_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %32 [
    i32 0, label %20
    i32 1, label %22
    i32 2, label %24
    i32 3, label %26
    i32 4, label %28
    i32 6, label %28
    i32 5, label %30
  ]

20:                                               ; preds = %18
  %21 = load i64, i64* @ENABLE_EP4, align 8
  store i64 %21, i64* %9, align 8
  br label %32

22:                                               ; preds = %18
  %23 = load i64, i64* @ENABLE_EP3, align 8
  store i64 %23, i64* %9, align 8
  br label %32

24:                                               ; preds = %18
  %25 = load i64, i64* @ENABLE_EP5, align 8
  store i64 %25, i64* %9, align 8
  br label %32

26:                                               ; preds = %18
  %27 = load i64, i64* @ENABLE_EP6, align 8
  store i64 %27, i64* %9, align 8
  br label %32

28:                                               ; preds = %18, %18
  %29 = load i64, i64* @ENABLE_EP1, align 8
  store i64 %29, i64* %9, align 8
  br label %32

30:                                               ; preds = %18
  %31 = load i64, i64* @ENABLE_EP2, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %18, %30, %28, %26, %24, %22, %20
  br label %54

33:                                               ; preds = %3
  %34 = load %struct.pcb_config*, %struct.pcb_config** %10, align 8
  %35 = getelementptr inbounds %struct.pcb_config, %struct.pcb_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %52 [
    i32 0, label %40
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
    i32 4, label %48
    i32 6, label %48
    i32 5, label %50
  ]

40:                                               ; preds = %38
  %41 = load i64, i64* @ENABLE_EP4, align 8
  store i64 %41, i64* %9, align 8
  br label %52

42:                                               ; preds = %38
  %43 = load i64, i64* @ENABLE_EP3, align 8
  store i64 %43, i64* %9, align 8
  br label %52

44:                                               ; preds = %38
  %45 = load i64, i64* @ENABLE_EP5, align 8
  store i64 %45, i64* %9, align 8
  br label %52

46:                                               ; preds = %38
  %47 = load i64, i64* @ENABLE_EP6, align 8
  store i64 %47, i64* %9, align 8
  br label %52

48:                                               ; preds = %38, %38
  %49 = load i64, i64* @ENABLE_EP1, align 8
  store i64 %49, i64* %9, align 8
  br label %52

50:                                               ; preds = %38
  %51 = load i64, i64* @ENABLE_EP2, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %38, %50, %48, %46, %44, %42, %40
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @cx231xx_initialize_stream_xfer(%struct.cx231xx* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %91

65:                                               ; preds = %57
  %66 = load i64, i64* %9, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @cx231xx_start_stream(%struct.cx231xx* %69, i64 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %65
  br label %81

73:                                               ; preds = %54
  %74 = load i64, i64* %9, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @cx231xx_stop_stream(%struct.cx231xx* %77, i64 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %72
  %82 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %83 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CX231XX_ANALOG_MODE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %89

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %63
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @cx231xx_initialize_stream_xfer(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_start_stream(%struct.cx231xx*, i64) #1

declare dso_local i32 @cx231xx_stop_stream(%struct.cx231xx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
