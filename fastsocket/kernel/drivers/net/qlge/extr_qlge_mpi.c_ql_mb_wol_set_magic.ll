; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_wol_set_magic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_mpi.c_ql_mb_wol_set_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.mbox_params = type { i32, i32, i32*, i64* }

@MB_CMD_SET_WOL_MAGIC = common dso_local global i32 0, align 4
@MB_CMD_STS_GOOD = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to set WOL mode.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_mb_wol_set_magic(%struct.ql_adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbox_params, align 8
  %7 = alloca %struct.mbox_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.mbox_params* %6, %struct.mbox_params** %7, align 8
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %9, align 8
  %15 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %16 = call i32 @memset(%struct.mbox_params* %15, i32 0, i32 24)
  %17 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %18 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %17, i32 0, i32 0
  store i32 8, i32* %18, align 8
  %19 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %20 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @MB_CMD_SET_WOL_MAGIC, align 4
  %22 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %23 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %87

28:                                               ; preds = %2
  %29 = load i64*, i64** %9, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %35 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load i64*, i64** %9, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %44 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load i64*, i64** %9, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %53 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %51, i32* %55, align 4
  %56 = load i64*, i64** %9, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %62 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %60, i32* %64, align 4
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 4
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %71 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  store i32 %69, i32* %73, align 4
  %74 = load i64*, i64** %9, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 5
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %80 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  store i32 %78, i32* %82, align 4
  %83 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %84 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 7
  store i32 0, i32* %86, align 4
  br label %116

87:                                               ; preds = %2
  %88 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %89 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %93 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 1, i32* %95, align 4
  %96 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %97 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 1, i32* %99, align 4
  %100 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %101 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32 1, i32* %103, align 4
  %104 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %105 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  store i32 1, i32* %107, align 4
  %108 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %109 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 6
  store i32 1, i32* %111, align 4
  %112 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %113 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 7
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %87, %28
  %117 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %118 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %119 = call i32 @ql_mailbox_command(%struct.ql_adapter* %117, %struct.mbox_params* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %143

124:                                              ; preds = %116
  %125 = load %struct.mbox_params*, %struct.mbox_params** %7, align 8
  %126 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MB_CMD_STS_GOOD, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %124
  %133 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %134 = load i32, i32* @drv, align 4
  %135 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = call i32 @netif_err(%struct.ql_adapter* %133, i32 %134, %struct.TYPE_2__* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %132, %124
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %122
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @memset(%struct.mbox_params*, i32, i32) #1

declare dso_local i32 @ql_mailbox_command(%struct.ql_adapter*, %struct.mbox_params*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
