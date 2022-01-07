; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_h_mspro_block_wait_for_ced.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_h_mspro_block_wait_for_ced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32 }
%struct.memstick_request = type { i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wait for ced: value %x\0A\00", align 1
@MEMSTICK_INT_CMDNAK = common dso_local global i32 0, align 4
@MEMSTICK_INT_ERR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MEMSTICK_INT_CED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, %struct.memstick_request**)* @h_mspro_block_wait_for_ced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_mspro_block_wait_for_ced(%struct.memstick_dev* %0, %struct.memstick_request** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca %struct.memstick_request**, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store %struct.memstick_request** %1, %struct.memstick_request*** %5, align 8
  %6 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %7 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %6, i32 0, i32 0
  %8 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %9 = load %struct.memstick_request*, %struct.memstick_request** %8, align 8
  %10 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %16 = load %struct.memstick_request*, %struct.memstick_request** %15, align 8
  %17 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %2
  %21 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %22 = load %struct.memstick_request*, %struct.memstick_request** %21, align 8
  %23 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MEMSTICK_INT_CMDNAK, align 4
  %28 = load i32, i32* @MEMSTICK_INT_ERR, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %36 = load %struct.memstick_request*, %struct.memstick_request** %35, align 8
  %37 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  br label %50

38:                                               ; preds = %20
  %39 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %40 = load %struct.memstick_request*, %struct.memstick_request** %39, align 8
  %41 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MEMSTICK_INT_CED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %58

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %53 = load %struct.memstick_request**, %struct.memstick_request*** %5, align 8
  %54 = load %struct.memstick_request*, %struct.memstick_request** %53, align 8
  %55 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mspro_block_complete_req(%struct.memstick_dev* %52, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mspro_block_complete_req(%struct.memstick_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
