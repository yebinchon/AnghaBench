; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_fifo_icap.c_fifo_icap_set_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_fifo_icap.c_fifo_icap_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwicap_drvdata = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"fifo_set_configuration\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@XHI_MAX_RETRIES = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"done fifo_set_configuration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_icap_set_configuration(%struct.hwicap_drvdata* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwicap_drvdata*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hwicap_drvdata* %0, %struct.hwicap_drvdata** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %12 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %16 = call i64 @fifo_icap_busy(%struct.hwicap_drvdata* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %89

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %62, %21
  %24 = load i64, i64* %10, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %32 = call i64 @fifo_icap_write_fifo_vacancy(%struct.hwicap_drvdata* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @XHI_MAX_RETRIES, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %89

41:                                               ; preds = %30
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %51, %42
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %10, align 8
  %48 = icmp sgt i64 %47, 0
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  br i1 %50, label %51, label %62

51:                                               ; preds = %49
  %52 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @fifo_icap_fifo_write(%struct.hwicap_drvdata* %52, i64 %54)
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %8, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %6, align 8
  br label %43

62:                                               ; preds = %49
  %63 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %64 = call i32 @fifo_icap_start_config(%struct.hwicap_drvdata* %63)
  br label %23

65:                                               ; preds = %23
  br label %66

66:                                               ; preds = %77, %65
  %67 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %68 = call i64 @fifo_icap_busy(%struct.hwicap_drvdata* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @XHI_MAX_RETRIES, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %78

77:                                               ; preds = %70
  br label %66

78:                                               ; preds = %76, %66
  %79 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %80 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %89

88:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %85, %38, %18
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @fifo_icap_busy(%struct.hwicap_drvdata*) #1

declare dso_local i64 @fifo_icap_write_fifo_vacancy(%struct.hwicap_drvdata*) #1

declare dso_local i32 @fifo_icap_fifo_write(%struct.hwicap_drvdata*, i64) #1

declare dso_local i32 @fifo_icap_start_config(%struct.hwicap_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
