; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_blk_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_blk_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@QIB_TWSI_NO_DEV = common dso_local global i32 0, align 4
@WRITE_CMD = common dso_local global i32 0, align 4
@QIB_TWSI_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to write interface write addr %02X\0A\00", align 1
@READ_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_twsi_blk_wr(%struct.qib_devdata* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  store i32 1, i32* %15, align 4
  br label %18

18:                                               ; preds = %100, %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %103

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @QIB_TWSI_NO_DEV, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 1
  %29 = load i32, i32* @WRITE_CMD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @QIB_TWSI_START, align 4
  %32 = call i32 @qib_twsi_wr(%struct.qib_devdata* %26, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %104

35:                                               ; preds = %25
  br label %56

36:                                               ; preds = %21
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @WRITE_CMD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @QIB_TWSI_START, align 4
  %42 = call i32 @qib_twsi_wr(%struct.qib_devdata* %37, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %104

45:                                               ; preds = %36
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @qib_twsi_wr(%struct.qib_devdata* %46, i32 %47, i32 0)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @qib_dev_err(%struct.qib_devdata* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %104

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @min(i32 %57, i32 4)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %78, %56
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %71, align 4
  %74 = call i32 @qib_twsi_wr(%struct.qib_devdata* %70, i32 %73, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %104

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %83 = call i32 @stop_cmd(%struct.qib_devdata* %82)
  store i32 100, i32* %13, align 4
  br label %84

84:                                               ; preds = %99, %81
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @READ_CMD, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @QIB_TWSI_START, align 4
  %90 = call i32 @qib_twsi_wr(%struct.qib_devdata* %85, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %94 = call i32 @stop_cmd(%struct.qib_devdata* %93)
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %104

99:                                               ; preds = %92
  br label %84

100:                                              ; preds = %84
  %101 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %102 = call i32 @rd_byte(%struct.qib_devdata* %101, i32 1)
  br label %18

103:                                              ; preds = %18
  store i32 0, i32* %15, align 4
  br label %107

104:                                              ; preds = %98, %76, %51, %44, %34
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %106 = call i32 @stop_cmd(%struct.qib_devdata* %105)
  store i32 1, i32* %15, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load i32, i32* %15, align 4
  ret i32 %108
}

declare dso_local i32 @qib_twsi_wr(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @stop_cmd(%struct.qib_devdata*) #1

declare dso_local i32 @rd_byte(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
