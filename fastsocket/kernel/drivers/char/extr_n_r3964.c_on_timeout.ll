; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_on_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_on_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"TX_REQUEST - timeout\00", align 1
@NAK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"WAIT_FOR_TX_ACK - timeout\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"WAIT_FOR_RX_BUF - timeout\00", align 1
@R3964_IDLE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"RECEIVING - timeout after %d chars\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"WAIT_FOR_RX_REPEAT - timeout\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"WAIT_FOR_BCC - timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @on_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.r3964_info*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.r3964_info*
  store %struct.r3964_info* %6, %struct.r3964_info** %3, align 8
  %7 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %8 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %68 [
    i32 133, label %10
    i32 128, label %14
    i32 129, label %22
    i32 131, label %26
    i32 134, label %37
    i32 130, label %51
    i32 132, label %57
  ]

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %13 = call i32 @retry_transmit(%struct.r3964_info* %12)
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %16 = load i32, i32* @NAK, align 4
  %17 = call i32 @put_char(%struct.r3964_info* %15, i32 %16)
  %18 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %19 = call i32 @flush(%struct.r3964_info* %18)
  %20 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %21 = call i32 @retry_transmit(%struct.r3964_info* %20)
  br label %68

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %25 = call i32 @retry_transmit(%struct.r3964_info* %24)
  br label %68

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %29 = load i32, i32* @NAK, align 4
  %30 = call i32 @put_char(%struct.r3964_info* %28, i32 %29)
  %31 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %32 = call i32 @flush(%struct.r3964_info* %31)
  %33 = load i8*, i8** @R3964_IDLE, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %36 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %68

37:                                               ; preds = %1
  %38 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %39 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %43 = load i32, i32* @NAK, align 4
  %44 = call i32 @put_char(%struct.r3964_info* %42, i32 %43)
  %45 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %46 = call i32 @flush(%struct.r3964_info* %45)
  %47 = load i8*, i8** @R3964_IDLE, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %50 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %68

51:                                               ; preds = %1
  %52 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i8*, i8** @R3964_IDLE, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %56 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %68

57:                                               ; preds = %1
  %58 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %60 = load i32, i32* @NAK, align 4
  %61 = call i32 @put_char(%struct.r3964_info* %59, i32 %60)
  %62 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %63 = call i32 @flush(%struct.r3964_info* %62)
  %64 = load i8*, i8** @R3964_IDLE, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %67 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %1, %57, %51, %37, %26, %22, %14, %10
  ret void
}

declare dso_local i32 @TRACE_PE(i8*, ...) #1

declare dso_local i32 @retry_transmit(%struct.r3964_info*) #1

declare dso_local i32 @put_char(%struct.r3964_info*, i32) #1

declare dso_local i32 @flush(%struct.r3964_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
