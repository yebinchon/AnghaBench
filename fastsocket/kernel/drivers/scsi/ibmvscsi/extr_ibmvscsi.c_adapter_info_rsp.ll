; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_adapter_info_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_adapter_info_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_event_struct = type { %struct.TYPE_10__*, %struct.ibmvscsi_host_data* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ibmvscsi_host_data = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"error %d getting adapter info\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"host srp version: %s, host partition %s (%d), OS %d, max io %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"1.6a\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"host (Ver. %s) doesn't support large transfers\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"limiting scatterlists to %d\0A\00", align 1
@MAX_INDIRECT_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_event_struct*)* @adapter_info_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_info_rsp(%struct.srp_event_struct* %0) #0 {
  %2 = alloca %struct.srp_event_struct*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.srp_event_struct* %0, %struct.srp_event_struct** %2, align 8
  %4 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %5 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %4, i32 0, i32 1
  %6 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  store %struct.ibmvscsi_host_data* %6, %struct.ibmvscsi_host_data** %3, align 8
  %7 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %8 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.srp_event_struct*, %struct.srp_event_struct** %2, align 8
  %21 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %117

29:                                               ; preds = %1
  %30 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %38 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %42 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %46 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40, i32 %44, i32 %48, i32 %54)
  %56 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %57 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %29
  %64 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %65 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 9
  %71 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %72 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %63, %29
  %76 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %77 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %107

81:                                               ; preds = %75
  %82 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %83 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strcmp(i32 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %90 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %93 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %98 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @MAX_INDIRECT_BUFS, align 4
  %103 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %104 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %88, %81, %75
  %108 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %109 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %115 = call i32 @enable_fast_fail(%struct.ibmvscsi_host_data* %114)
  br label %120

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %16
  %118 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %119 = call i32 @send_srp_login(%struct.ibmvscsi_host_data* %118)
  br label %120

120:                                              ; preds = %117, %113
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @enable_fast_fail(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @send_srp_login(%struct.ibmvscsi_host_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
