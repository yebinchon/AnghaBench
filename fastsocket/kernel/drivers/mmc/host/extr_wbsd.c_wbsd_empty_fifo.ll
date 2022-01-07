; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i64, i32, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@WBSD_FSR = common dso_local global i64 0, align 8
@WBSD_FIFO_EMPTY = common dso_local global i32 0, align 4
@WBSD_FIFO_FULL = common dso_local global i32 0, align 4
@WBSD_FIFO_FUTHRE = common dso_local global i32 0, align 4
@WBSD_DFR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*)* @wbsd_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_empty_fifo(%struct.wbsd_host* %0) #0 {
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
  br label %116

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

28:                                               ; preds = %98, %20
  %29 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %30 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WBSD_FSR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i8* @inb(i64 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @WBSD_FIFO_EMPTY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %99

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @WBSD_FIFO_FULL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 16, i32* %7, align 4
  br label %54

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @WBSD_FIFO_FUTHRE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 8, i32* %7, align 4
  br label %53

52:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %45
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %95, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %61 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @WBSD_DFR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i8* @inb(i64 %64)
  %66 = ptrtoint i8* %65 to i8
  %67 = load i8*, i8** %4, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %4, align 8
  %70 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %71 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %75 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %83 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %59
  %87 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %88 = call i32 @wbsd_next_sg(%struct.wbsd_host* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %116

91:                                               ; preds = %86
  %92 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %93 = call i8* @wbsd_sg_to_buffer(%struct.wbsd_host* %92)
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %91, %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %55

98:                                               ; preds = %55
  br label %28

99:                                               ; preds = %28
  %100 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %101 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %104 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %108 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %106, %109
  %111 = icmp slt i32 %110, 16
  br i1 %111, label %112, label %116

112:                                              ; preds = %99
  %113 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %114 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %113, i32 0, i32 3
  %115 = call i32 @tasklet_schedule(i32* %114)
  br label %116

116:                                              ; preds = %19, %90, %112, %99
  ret void
}

declare dso_local i8* @wbsd_sg_to_buffer(%struct.wbsd_host*) #1

declare dso_local i8* @inb(i64) #1

declare dso_local i32 @wbsd_next_sg(%struct.wbsd_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
