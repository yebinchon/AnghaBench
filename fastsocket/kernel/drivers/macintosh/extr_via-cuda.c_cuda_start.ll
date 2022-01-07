; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-cuda.c_cuda_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-cuda.c_cuda_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32* }

@current_req = common dso_local global %struct.adb_request* null, align 8
@via = common dso_local global i32* null, align 8
@B = common dso_local global i64 0, align 8
@TREQ = common dso_local global i32 0, align 4
@ACR = common dso_local global i64 0, align 8
@SR_OUT = common dso_local global i32 0, align 4
@SR = common dso_local global i64 0, align 8
@TIP = common dso_local global i32 0, align 4
@sent_first_byte = common dso_local global i32 0, align 4
@cuda_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cuda_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_start() #0 {
  %1 = alloca %struct.adb_request*, align 8
  %2 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %2, %struct.adb_request** %1, align 8
  %3 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %4 = icmp eq %struct.adb_request* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %47

6:                                                ; preds = %0
  %7 = load i32*, i32** @via, align 8
  %8 = load i64, i64* @B, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = call i32 @in_8(i32* %9)
  %11 = load i32, i32* @TREQ, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  br label %47

15:                                               ; preds = %6
  %16 = load i32*, i32** @via, align 8
  %17 = load i64, i64* @ACR, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32*, i32** @via, align 8
  %20 = load i64, i64* @ACR, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @in_8(i32* %21)
  %23 = load i32, i32* @SR_OUT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @out_8(i32* %18, i32 %24)
  %26 = load i32*, i32** @via, align 8
  %27 = load i64, i64* @SR, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %30 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @out_8(i32* %28, i32 %33)
  %35 = load i32*, i32** @via, align 8
  %36 = load i64, i64* @B, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32*, i32** @via, align 8
  %39 = load i64, i64* @B, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @in_8(i32* %40)
  %42 = load i32, i32* @TIP, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @out_8(i32* %37, i32 %44)
  %46 = load i32, i32* @sent_first_byte, align 4
  store i32 %46, i32* @cuda_state, align 4
  br label %47

47:                                               ; preds = %15, %14, %5
  ret void
}

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
