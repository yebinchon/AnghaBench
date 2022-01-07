; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_erp_read_opposite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_erp_read_opposite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i64 }

@TO_RFO = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*)* @tape_34xx_erp_read_opposite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_erp_read_opposite(%struct.tape_device* %0, %struct.tape_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_request*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_request* %1, %struct.tape_request** %5, align 8
  %6 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %7 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TO_RFO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %13 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %14 = call i32 @tape_std_read_backward(%struct.tape_device* %12, %struct.tape_request* %13)
  %15 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %16 = call i32 @tape_34xx_erp_retry(%struct.tape_request* %15)
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %18, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @tape_std_read_backward(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_34xx_erp_retry(%struct.tape_request*) #1

declare dso_local i32 @tape_34xx_erp_failed(%struct.tape_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
