; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_context_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_context_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32 }

@CONTEXT_RUN = common dso_local global i32 0, align 4
@CONTEXT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error: DMA context still active (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @context_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_stop(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.context*, %struct.context** %2, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @CONTROL_CLEAR(i32 %10)
  %12 = load i32, i32* @CONTEXT_RUN, align 4
  %13 = call i32 @reg_write(i32 %7, i32 %11, i32 %12)
  %14 = load %struct.context*, %struct.context** %2, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @flush_writes(i32 %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %37, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.context*, %struct.context** %2, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.context*, %struct.context** %2, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CONTROL_SET(i32 %27)
  %29 = call i32 @reg_read(i32 %24, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @CONTEXT_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %43

35:                                               ; preds = %21
  %36 = call i32 @mdelay(i32 1)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @fw_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @CONTROL_CLEAR(i32) #1

declare dso_local i32 @flush_writes(i32) #1

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @CONTROL_SET(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @fw_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
