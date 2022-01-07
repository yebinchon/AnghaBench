; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_erp_bug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_erp_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tape_request = type { i64 }
%struct.irb = type { i32 }

@TO_ASSIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"An unexpected condition %d occurred in tape error recovery\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32)* @tape_34xx_erp_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_erp_bug(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2, i32 %3) #0 {
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  %8 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %10 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TO_ASSIGN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %16 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %22 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %23 = load %struct.irb*, %struct.irb** %7, align 8
  %24 = call i32 @tape_dump_sense_dbf(%struct.tape_device* %21, %struct.tape_request* %22, %struct.irb* %23)
  br label %25

25:                                               ; preds = %14, %4
  %26 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %26, i32 %28)
  ret i32 %29
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tape_dump_sense_dbf(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_34xx_erp_failed(%struct.tape_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
