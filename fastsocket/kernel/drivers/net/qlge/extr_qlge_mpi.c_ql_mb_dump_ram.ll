; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_dump_ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_dump_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.mbox_params = type { i32, i32, i64*, i8** }

@MB_CMD_DUMP_RISC_RAM = common dso_local global i8* null, align 8
@MB_CMD_STS_GOOD = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to dump risc RAM.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_mb_dump_ram(%struct.ql_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbox_params, align 8
  %12 = alloca %struct.mbox_params*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.mbox_params* %11, %struct.mbox_params** %12, align 8
  %13 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %14 = call i32 @memset(%struct.mbox_params* %13, i32 0, i32 24)
  %15 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %16 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %15, i32 0, i32 0
  store i32 9, i32* %16, align 8
  %17 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %18 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i8*, i8** @MB_CMD_DUMP_RISC_RAM, align 8
  %20 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %21 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %20, i32 0, i32 3
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %19, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @LSW(i32 %24)
  %26 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %27 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @MSW(i32 %30)
  %32 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %33 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %32, i32 0, i32 3
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @LSW(i32 %36)
  %38 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %39 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 3
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i8* @MSW(i32 %42)
  %44 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %45 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %44, i32 0, i32 3
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 4
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @LSW(i32 %48)
  %50 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %51 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 5
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @MSD(i32 %54)
  %56 = call i8* @MSW(i32 %55)
  %57 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %58 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %57, i32 0, i32 3
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 6
  store i8* %56, i8** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @MSD(i32 %61)
  %63 = call i8* @LSW(i32 %62)
  %64 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %65 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %64, i32 0, i32 3
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 7
  store i8* %63, i8** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @MSW(i32 %68)
  %70 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %71 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %70, i32 0, i32 3
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 8
  store i8* %69, i8** %73, align 8
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %75 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %76 = call i32 @ql_mailbox_command(%struct.ql_adapter* %74, %struct.mbox_params* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %4
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %100

81:                                               ; preds = %4
  %82 = load %struct.mbox_params*, %struct.mbox_params** %12, align 8
  %83 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MB_CMD_STS_GOOD, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %91 = load i32, i32* @drv, align 4
  %92 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @netif_err(%struct.ql_adapter* %90, i32 %91, i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %89, %81
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %79
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.mbox_params*, i32, i32) #1

declare dso_local i8* @LSW(i32) #1

declare dso_local i8* @MSW(i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @ql_mailbox_command(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
