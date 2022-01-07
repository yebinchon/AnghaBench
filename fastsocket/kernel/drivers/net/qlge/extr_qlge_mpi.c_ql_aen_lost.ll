; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_aen_lost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_aen_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.mbox_params = type { i32, i32* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Lost AEN broken!\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Lost AEN detected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"mbox_out[%d] = 0x%.08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.mbox_params*)* @ql_aen_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_aen_lost(%struct.ql_adapter* %0, %struct.mbox_params* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.mbox_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.mbox_params* %1, %struct.mbox_params** %4, align 8
  %7 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %8 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %7, i32 0, i32 0
  store i32 6, i32* %8, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %10 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %11 = call i32 @ql_get_mb_sts(%struct.ql_adapter* %9, %struct.mbox_params* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %16 = load i32, i32* @drv, align 4
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %23 = load i32, i32* @drv, align 4
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %49, %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %31 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %36 = load i32, i32* @drv, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mbox_params*, %struct.mbox_params** %4, align 8
  %42 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %28

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %14
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ql_get_mb_sts(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
