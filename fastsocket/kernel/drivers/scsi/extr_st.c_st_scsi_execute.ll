; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_scsi_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_scsi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_request = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.rq_map_data }
%struct.rq_map_data = type { i32 }
%struct.request = type { i32, i32, i32, %struct.st_request*, i64, i32, i32, i32, i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRIVER_ERROR = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_QUIET = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@st_scsi_execute_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_request*, i8*, i32, i8*, i32, i32, i32)* @st_scsi_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_scsi_execute(%struct.st_request* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_request*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.request*, align 8
  %17 = alloca %struct.rq_map_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.st_request* %0, %struct.st_request** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.st_request*, %struct.st_request** %9, align 8
  %21 = getelementptr inbounds %struct.st_request, %struct.st_request* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.rq_map_data* %25, %struct.rq_map_data** %17, align 8
  store i32 0, i32* %18, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %19, align 4
  %30 = load %struct.st_request*, %struct.st_request** %9, align 8
  %31 = getelementptr inbounds %struct.st_request, %struct.st_request* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.request* @blk_get_request(i32 %36, i32 %37, i32 %38)
  store %struct.request* %39, %struct.request** %16, align 8
  %40 = load %struct.request*, %struct.request** %16, align 8
  %41 = icmp ne %struct.request* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %7
  %43 = load i32, i32* @DRIVER_ERROR, align 4
  %44 = shl i32 %43, 24
  store i32 %44, i32* %8, align 4
  br label %122

45:                                               ; preds = %7
  %46 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %47 = load %struct.request*, %struct.request** %16, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @REQ_QUIET, align 4
  %50 = load %struct.request*, %struct.request** %16, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.rq_map_data*, %struct.rq_map_data** %17, align 8
  %55 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %45
  %59 = load %struct.request*, %struct.request** %16, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.request*, %struct.request** %16, align 8
  %63 = load %struct.rq_map_data*, %struct.rq_map_data** %17, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @blk_rq_map_user(i32 %61, %struct.request* %62, %struct.rq_map_data* %63, i32* null, i32 %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.request*, %struct.request** %16, align 8
  %71 = call i32 @blk_put_request(%struct.request* %70)
  %72 = load i32, i32* @DRIVER_ERROR, align 4
  %73 = shl i32 %72, 24
  store i32 %73, i32* %8, align 4
  br label %122

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.request*, %struct.request** %16, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.st_request*, %struct.st_request** %9, align 8
  %80 = getelementptr inbounds %struct.st_request, %struct.st_request* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @COMMAND_SIZE(i8 zeroext %83)
  %85 = load %struct.request*, %struct.request** %16, align 8
  %86 = getelementptr inbounds %struct.request, %struct.request* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load %struct.request*, %struct.request** %16, align 8
  %88 = getelementptr inbounds %struct.request, %struct.request* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BLK_MAX_CDB, align 4
  %91 = call i32 @memset(i32 %89, i32 0, i32 %90)
  %92 = load %struct.request*, %struct.request** %16, align 8
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.request*, %struct.request** %16, align 8
  %97 = getelementptr inbounds %struct.request, %struct.request* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32 %94, i8* %95, i32 %98)
  %100 = load %struct.st_request*, %struct.st_request** %9, align 8
  %101 = getelementptr inbounds %struct.st_request, %struct.st_request* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.request*, %struct.request** %16, align 8
  %104 = getelementptr inbounds %struct.request, %struct.request* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.request*, %struct.request** %16, align 8
  %106 = getelementptr inbounds %struct.request, %struct.request* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.request*, %struct.request** %16, align 8
  %109 = getelementptr inbounds %struct.request, %struct.request* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.request*, %struct.request** %16, align 8
  %112 = getelementptr inbounds %struct.request, %struct.request* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.st_request*, %struct.st_request** %9, align 8
  %114 = load %struct.request*, %struct.request** %16, align 8
  %115 = getelementptr inbounds %struct.request, %struct.request* %114, i32 0, i32 3
  store %struct.st_request* %113, %struct.st_request** %115, align 8
  %116 = load %struct.request*, %struct.request** %16, align 8
  %117 = getelementptr inbounds %struct.request, %struct.request* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.request*, %struct.request** %16, align 8
  %120 = load i32, i32* @st_scsi_execute_end, align 4
  %121 = call i32 @blk_execute_rq_nowait(i32 %118, i32* null, %struct.request* %119, i32 1, i32 %120)
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %75, %69, %42
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_user(i32, %struct.request*, %struct.rq_map_data*, i32*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @COMMAND_SIZE(i8 zeroext) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
