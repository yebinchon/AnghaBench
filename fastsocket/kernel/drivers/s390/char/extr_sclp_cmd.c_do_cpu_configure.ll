; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_do_cpu_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_do_cpu_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_configure_sccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCLP_HAS_CPU_RECONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"configure cpu failed (cmd=0x%08x, response=0x%04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_cpu_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cpu_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_configure_sccb*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @SCLP_HAS_CPU_RECONFIG, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.cpu_configure_sccb* @kzalloc(i32 8, i32 %14)
  store %struct.cpu_configure_sccb* %15, %struct.cpu_configure_sccb** %4, align 8
  %16 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %17 = icmp ne %struct.cpu_configure_sccb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %11
  %22 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %23 = getelementptr inbounds %struct.cpu_configure_sccb, %struct.cpu_configure_sccb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 8, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %27 = call i32 @do_sync_request(i32 %25, %struct.cpu_configure_sccb* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %47

31:                                               ; preds = %21
  %32 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %33 = getelementptr inbounds %struct.cpu_configure_sccb, %struct.cpu_configure_sccb* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %37 [
    i32 32, label %36
    i32 288, label %36
  ]

36:                                               ; preds = %31, %31
  br label %46

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %40 = getelementptr inbounds %struct.cpu_configure_sccb, %struct.cpu_configure_sccb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %37, %36
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.cpu_configure_sccb*, %struct.cpu_configure_sccb** %4, align 8
  %49 = call i32 @kfree(%struct.cpu_configure_sccb* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %18, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.cpu_configure_sccb* @kzalloc(i32, i32) #1

declare dso_local i32 @do_sync_request(i32, %struct.cpu_configure_sccb*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cpu_configure_sccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
