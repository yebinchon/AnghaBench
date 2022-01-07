; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_kick_outbound_q.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_kick_outbound_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"siga-w:%1d\00", align 1
@siga_write = common dso_local global i32 0, align 4
@QDIO_BUSY_BIT_RETRIES = common dso_local global i32 0, align 4
@QDIO_BUSY_BIT_RETRY_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%4x cc2 BBC:%1d\00", align 1
@QDIO_ERROR_SIGA_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"siga-w cc2:%1d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%4x SIGA-W:%1d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%4x cc2 BB2:%1d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"count:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i64)* @qdio_kick_outbound_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_kick_outbound_q(%struct.qdio_q* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %10 = call i32 @need_siga_out(%struct.qdio_q* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

13:                                               ; preds = %2
  %14 = load i32, i32* @DBF_INFO, align 4
  %15 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %16 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %19 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DBF_DEV_EVENT(i32 %14, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %40, %13
  %23 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %24 = load i32, i32* @siga_write, align 4
  %25 = call i32 @qperf_inc(%struct.qdio_q* %23, i32 %24)
  %26 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @qdio_siga_output(%struct.qdio_q* %26, i32* %8, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %68 [
    i32 0, label %30
    i32 2, label %31
    i32 1, label %63
    i32 3, label %63
  ]

30:                                               ; preds = %22
  br label %68

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @QDIO_BUSY_BIT_RETRIES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @QDIO_BUSY_BIT_RETRY_DELAY, align 4
  %42 = call i32 @mdelay(i32 %41)
  br label %22

43:                                               ; preds = %35
  %44 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %45 = call i32 @SCH_NO(%struct.qdio_q* %44)
  %46 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %47 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* @QDIO_ERROR_SIGA_BUSY, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %62

53:                                               ; preds = %31
  %54 = load i32, i32* @DBF_INFO, align 4
  %55 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %56 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DBF_DEV_EVENT(i32 %54, i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %53, %43
  br label %68

63:                                               ; preds = %22, %22
  %64 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %65 = call i32 @SCH_NO(%struct.qdio_q* %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %22, %63, %62, %30
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %73 = call i32 @SCH_NO(%struct.qdio_q* %72)
  %74 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %75 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i8*, i32, ...) @DBF_ERROR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %71, %68
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @need_siga_out(%struct.qdio_q*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @qdio_siga_output(%struct.qdio_q*, i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DBF_ERROR(i8*, i32, ...) #1

declare dso_local i32 @SCH_NO(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
