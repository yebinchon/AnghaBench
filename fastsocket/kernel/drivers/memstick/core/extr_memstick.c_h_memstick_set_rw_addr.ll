; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_h_memstick_set_rw_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_h_memstick_set_rw_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32, %struct.memstick_request, i32 }
%struct.memstick_request = type { i32 }

@MS_TPC_SET_RW_REG_ADRS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, %struct.memstick_request**)* @h_memstick_set_rw_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_memstick_set_rw_addr(%struct.memstick_dev* %0, %struct.memstick_request** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca %struct.memstick_request**, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store %struct.memstick_request** %1, %struct.memstick_request*** %5, align 8
  %6 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %7 = load %struct.memstick_request*, %struct.memstick_request** %6, align 8
  %8 = icmp ne %struct.memstick_request* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %11 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %10, i32 0, i32 1
  %12 = load i32, i32* @MS_TPC_SET_RW_REG_ADRS, align 4
  %13 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %14 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %13, i32 0, i32 2
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @memstick_init_req(%struct.memstick_request* %11, i32 %12, i8* %15, i32 4)
  %17 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %18 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %17, i32 0, i32 1
  %19 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  store %struct.memstick_request* %18, %struct.memstick_request** %19, align 8
  store i32 0, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %22 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %21, i32 0, i32 0
  %23 = call i32 @complete(i32* %22)
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @memstick_init_req(%struct.memstick_request*, i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
