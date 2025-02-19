; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_about_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_about_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i64, i32 }
%struct.mbox_params = type { i32, i32, i64*, i32* }

@MB_CMD_ABOUT_FW = common dso_local global i32 0, align 4
@MB_CMD_STS_GOOD = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed about firmware command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_mb_about_fw(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.mbox_params, align 8
  %5 = alloca %struct.mbox_params*, align 8
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.mbox_params* %4, %struct.mbox_params** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %8 = call i32 @memset(%struct.mbox_params* %7, i32 0, i32 24)
  %9 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %10 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %12 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %11, i32 0, i32 1
  store i32 3, i32* %12, align 4
  %13 = load i32, i32* @MB_CMD_ABOUT_FW, align 4
  %14 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %15 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %19 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %20 = call i32 @ql_mailbox_command(%struct.ql_adapter* %18, %struct.mbox_params* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %27 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MB_CMD_STS_GOOD, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %35 = load i32, i32* @drv, align 4
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_err(%struct.ql_adapter* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %33, %25
  %43 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %44 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %23
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.mbox_params*, i32, i32) #1

declare dso_local i32 @ql_mailbox_command(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
