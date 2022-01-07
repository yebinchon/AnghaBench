; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_suggest_transfer_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_suggest_transfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32 }

@DMA_BUF_SIZE = common dso_local global i32 0, align 4
@suggest_transfer_size.sample_size = internal constant i32 2, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_cmd*)* @suggest_transfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suggest_transfer_size(%struct.comedi_cmd* %0) #0 {
  %2 = alloca %struct.comedi_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_cmd* %0, %struct.comedi_cmd** %2, align 8
  %6 = load i32, i32* @DMA_BUF_SIZE, align 4
  store i32 %6, i32* %3, align 4
  store i32 300000000, i32* %4, align 4
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %34 [
    i32 129, label %10
    i32 128, label %23
  ]

10:                                               ; preds = %1
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = udiv i32 %16, %19
  %21 = mul i32 %20, 2
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %10
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = mul i32 %27, %30
  %32 = udiv i32 %24, %31
  %33 = mul i32 %32, 2
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @DMA_BUF_SIZE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %23, %22
  %37 = load i32, i32* @DMA_BUF_SIZE, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TRIG_COUNT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = mul i32 %46, %49
  %51 = mul i32 %50, 2
  %52 = load i32, i32* %5, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %2, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = mul i32 %57, %60
  %62 = mul i32 %61, 2
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %54, %43, %36
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* %3, align 4
  %71 = icmp ult i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 2, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
