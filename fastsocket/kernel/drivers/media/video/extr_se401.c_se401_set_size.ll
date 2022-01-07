; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_set_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32, i32, i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_se401*, i32, i32)* @se401_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_set_size(%struct.usb_se401* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_se401*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %10 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %13 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %19 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %87

24:                                               ; preds = %17, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24
  store i32 1, i32* %4, align 4
  br label %87

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i32 1, i32* %4, align 4
  br label %87

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %43 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %46 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %41, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %87

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %57 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %60 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %55, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %87

68:                                               ; preds = %54
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %73 = call i32 @se401_stop_stream(%struct.usb_se401* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %77 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %80 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.usb_se401*, %struct.usb_se401** %5, align 8
  %85 = call i32 @se401_start_stream(%struct.usb_se401* %84)
  br label %86

86:                                               ; preds = %83, %74
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %67, %53, %39, %30, %23
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @se401_stop_stream(%struct.usb_se401*) #1

declare dso_local i32 @se401_start_stream(%struct.usb_se401*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
