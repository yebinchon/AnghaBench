; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_check_tmf_restrictions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_check_tmf_restrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.iscsi_conn* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_conn = type { i64, %struct.TYPE_8__*, %struct.iscsi_tm }
%struct.TYPE_8__ = type { i32 }
%struct.iscsi_tm = type { i32, i32, i32 }

@TMF_INITIAL = common dso_local global i64 0, align 8
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@ISCSI_OP_SCSI_TMFUNC = common dso_local global i32 0, align 4
@ISCSI_OP_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"task [op %x/%x itt 0x%x/0x%x] rejected.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"task [op %x/%x itt 0x%x/0x%x] fast abort.\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Preventing task %x/%x from sending data-out due to abort task in progress\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32)* @iscsi_check_tmf_restrictions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_check_tmf_restrictions(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_tm*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %9, i32 0, i32 4
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %6, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 2
  store %struct.iscsi_tm* %13, %struct.iscsi_tm** %7, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TMF_INITIAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

20:                                               ; preds = %2
  %21 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %22 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @ISCSI_OP_SCSI_TMFUNC, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %122

29:                                               ; preds = %20
  %30 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %31 = call i32 @ISCSI_TM_FUNC_VALUE(%struct.iscsi_tm* %30)
  switch i32 %31, label %121 [
    i32 129, label %32
    i32 128, label %47
    i32 130, label %95
  ]

32:                                               ; preds = %29
  %33 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %34 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %33, i32 0, i32 2
  %35 = call i32 @scsilun_to_int(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %36, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %122

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %29, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ISCSI_OP_SCSI_DATA_OUT, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %55 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @iscsi_conn_printk(i32 %52, %struct.iscsi_conn* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* @EACCES, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %122

69:                                               ; preds = %47
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %79 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %80 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %89 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @iscsi_conn_printk(i32 %77, %struct.iscsi_conn* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84, i32 %87, i32 %90)
  %92 = load i32, i32* @EACCES, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %122

94:                                               ; preds = %69
  br label %121

95:                                               ; preds = %29
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @ISCSI_OP_SCSI_DATA_OUT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  %100 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %101 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %104 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %99
  %108 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %109 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %112 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %115 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ISCSI_DBG_SESSION(%struct.TYPE_8__* %110, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load i32, i32* @EACCES, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %99, %95
  br label %121

121:                                              ; preds = %29, %120, %94
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %107, %76, %51, %45, %28, %19
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @ISCSI_TM_FUNC_VALUE(%struct.iscsi_tm*) #1

declare dso_local i32 @scsilun_to_int(i32*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
