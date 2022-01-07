; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_get_u32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_get_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.wmi_interface = type { i32 }

@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.wmi_interface*)* @AMW0_get_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AMW0_get_u32(i32* %0, i32 %1, %struct.wmi_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wmi_interface* %2, %struct.wmi_interface** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %95 [
    i32 129, label %11
    i32 128, label %27
    i32 131, label %65
    i32 130, label %81
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %15 [
  ]

15:                                               ; preds = %11
  %16 = call i32 @ec_read(i32 10, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @AE_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %97

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = ashr i32 %22, 7
  %24 = and i32 %23, 1
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @AE_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %97

27:                                               ; preds = %3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %53 [
    i32 1, label %31
    i32 2, label %42
  ]

31:                                               ; preds = %27
  %32 = call i32 @ec_read(i32 123, i32* %9)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @AE_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %97

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 1
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %27
  %43 = call i32 @ec_read(i32 113, i32* %9)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @AE_ERROR, align 4
  store i32 %47, i32* %4, align 4
  br label %97

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 1
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @AE_OK, align 4
  store i32 %52, i32* %4, align 4
  br label %97

53:                                               ; preds = %27
  %54 = call i32 @ec_read(i32 10, i32* %9)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @AE_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %97

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 2
  %62 = and i32 %61, 1
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @AE_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %97

65:                                               ; preds = %3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %69 [
  ]

69:                                               ; preds = %65
  %70 = call i32 @ec_read(i32 10, i32* %9)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @AE_ERROR, align 4
  store i32 %74, i32* %4, align 4
  br label %97

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 1
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @AE_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %97

81:                                               ; preds = %3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %85 [
  ]

85:                                               ; preds = %81
  %86 = call i32 @ec_read(i32 131, i32* %9)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @AE_ERROR, align 4
  store i32 %90, i32* %4, align 4
  br label %97

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @AE_OK, align 4
  store i32 %94, i32* %4, align 4
  br label %97

95:                                               ; preds = %3
  %96 = load i32, i32* @AE_ERROR, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %91, %89, %75, %73, %59, %57, %48, %46, %37, %35, %21, %19
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ec_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
