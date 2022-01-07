; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_basic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_erp_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i32 }
%struct.irb = type { i64 }
%struct.tape_3590_sense = type { i32 }

@TAPE_IO_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32)* @tape_3590_erp_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_erp_basic(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_device*, align 8
  %7 = alloca %struct.tape_request*, align 8
  %8 = alloca %struct.irb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tape_3590_sense*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %6, align 8
  store %struct.tape_request* %1, %struct.tape_request** %7, align 8
  store %struct.irb* %2, %struct.irb** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.irb*, %struct.irb** %8, align 8
  %12 = getelementptr inbounds %struct.irb, %struct.irb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tape_3590_sense*
  store %struct.tape_3590_sense* %14, %struct.tape_3590_sense** %10, align 8
  %15 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %10, align 8
  %16 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %39 [
    i32 129, label %18
    i32 131, label %24
    i32 128, label %28
    i32 130, label %33
  ]

18:                                               ; preds = %4
  %19 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %20 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %21 = load %struct.irb*, %struct.irb** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @tape_3590_erp_failed(%struct.tape_device* %19, %struct.tape_request* %20, %struct.irb* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %42

24:                                               ; preds = %4
  %25 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %26 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %27 = call i32 @tape_3590_erp_succeded(%struct.tape_device* %25, %struct.tape_request* %26)
  store i32 %27, i32* %5, align 4
  br label %42

28:                                               ; preds = %4
  %29 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %30 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %31 = load %struct.irb*, %struct.irb** %8, align 8
  %32 = call i32 @tape_3590_erp_retry(%struct.tape_device* %29, %struct.tape_request* %30, %struct.irb* %31)
  store i32 %32, i32* %5, align 4
  br label %42

33:                                               ; preds = %4
  %34 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %35 = load %struct.tape_request*, %struct.tape_request** %7, align 8
  %36 = load %struct.irb*, %struct.irb** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @tape_3590_erp_failed(%struct.tape_device* %34, %struct.tape_request* %35, %struct.irb* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %42

39:                                               ; preds = %4
  %40 = call i32 (...) @BUG()
  %41 = load i32, i32* @TAPE_IO_STOP, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %33, %28, %24, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @tape_3590_erp_failed(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

declare dso_local i32 @tape_3590_erp_succeded(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_3590_erp_retry(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
