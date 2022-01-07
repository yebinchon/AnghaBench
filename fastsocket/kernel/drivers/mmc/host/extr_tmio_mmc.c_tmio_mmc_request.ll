; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tmio_mmc_host = type { %struct.mmc_request* }

@.str = private unnamed_addr constant [18 x i8] c"request not null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @tmio_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.tmio_mmc_host* %8, %struct.tmio_mmc_host** %5, align 8
  %9 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %9, i32 0, i32 0
  %11 = load %struct.mmc_request*, %struct.mmc_request** %10, align 8
  %12 = icmp ne %struct.mmc_request* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %18 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %17, i32 0, i32 0
  store %struct.mmc_request* %16, %struct.mmc_request** %18, align 8
  %19 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @tmio_mmc_start_data(%struct.tmio_mmc_host* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %43

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @tmio_mmc_start_command(%struct.tmio_mmc_host* %34, %struct.TYPE_2__* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %52

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %51 = call i32 @mmc_request_done(%struct.mmc_host* %49, %struct.mmc_request* %50)
  br label %52

52:                                               ; preds = %43, %41
  ret void
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @tmio_mmc_start_data(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_start_command(%struct.tmio_mmc_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
