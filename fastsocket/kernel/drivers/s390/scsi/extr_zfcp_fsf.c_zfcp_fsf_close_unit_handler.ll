; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_unit_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_close_unit_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_9__*, %struct.zfcp_unit* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.zfcp_unit = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fscuh_1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fscuh_2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fscuh_3\00", align 1
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_close_unit_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_close_unit_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_unit*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %4 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %4, i32 0, i32 2
  %6 = load %struct.zfcp_unit*, %struct.zfcp_unit** %5, align 8
  store %struct.zfcp_unit* %6, %struct.zfcp_unit** %3, align 8
  %7 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %83 [
    i32 130, label %21
    i32 132, label %34
    i32 131, label %45
    i32 134, label %56
    i32 133, label %78
  ]

21:                                               ; preds = %14
  %22 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %28 = call i32 @zfcp_erp_adapter_reopen(i32 %26, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %27)
  %29 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %30 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %31 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %83

34:                                               ; preds = %14
  %35 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %36 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %39 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_10__* %37, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %38)
  %40 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %42 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %83

45:                                               ; preds = %14
  %46 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %47 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %50 = call i32 @zfcp_erp_port_boxed(%struct.TYPE_10__* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.zfcp_fsf_req* %49)
  %51 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %83

56:                                               ; preds = %14
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %77 [
    i32 129, label %66
    i32 128, label %71
  ]

66:                                               ; preds = %56
  %67 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %68 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = call i32 @zfcp_fc_test_link(%struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %56, %66
  %72 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %56, %71
  br label %83

78:                                               ; preds = %14
  %79 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %80 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %81 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %80, i32 0, i32 0
  %82 = call i32 @atomic_clear_mask(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %13, %14, %78, %77, %45, %34, %21
  ret void
}

declare dso_local i32 @zfcp_erp_adapter_reopen(i32, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.TYPE_10__*, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_port_boxed(%struct.TYPE_10__*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.TYPE_10__*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
