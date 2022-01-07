; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i64, i32, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32 }

@WBSD_FSR = common dso_local global i64 0, align 8
@WBSD_FIFO_FULL = common dso_local global i32 0, align 4
@WBSD_FIFO_EMPTY = common dso_local global i32 0, align 4
@WBSD_FIFO_EMTHRE = common dso_local global i32 0, align 4
@WBSD_DFR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*)* @wbsd_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_fill_fifo(%struct.wbsd_host* %0) #0 {
  %2 = alloca %struct.wbsd_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %2, align 8
  %8 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %9 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  store %struct.mmc_data* %14, %struct.mmc_data** %3, align 8
  %15 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %16 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %102

20:                                               ; preds = %1
  %21 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %22 = call i8* @wbsd_sg_to_buffer(%struct.wbsd_host* %21)
  %23 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %24 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %97, %20
  %29 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %30 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WBSD_FSR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @WBSD_FIFO_FULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %98

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @WBSD_FIFO_EMPTY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @WBSD_FIFO_EMTHRE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 8, i32* %7, align 4
  br label %52

51:                                               ; preds = %45
  store i32 15, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %44
  store i32 16, i32* %5, align 4
  br label %54

54:                                               ; preds = %94, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %62 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WBSD_DFR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i8 signext %60, i64 %65)
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  %69 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %70 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %74 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %82 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %58
  %86 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %87 = call i32 @wbsd_next_sg(%struct.wbsd_host* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %102

90:                                               ; preds = %85
  %91 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %92 = call i8* @wbsd_sg_to_buffer(%struct.wbsd_host* %91)
  store i8* %92, i8** %4, align 8
  br label %93

93:                                               ; preds = %90, %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %5, align 4
  br label %54

97:                                               ; preds = %54
  br label %28

98:                                               ; preds = %28
  %99 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %100 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %99, i32 0, i32 3
  %101 = call i32 @tasklet_schedule(i32* %100)
  br label %102

102:                                              ; preds = %98, %89, %19
  ret void
}

declare dso_local i8* @wbsd_sg_to_buffer(%struct.wbsd_host*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i8 signext, i64) #1

declare dso_local i32 @wbsd_next_sg(%struct.wbsd_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
