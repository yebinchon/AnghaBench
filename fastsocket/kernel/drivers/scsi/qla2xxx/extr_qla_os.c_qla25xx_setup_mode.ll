; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla25xx_setup_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla25xx_setup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i32*, i32*, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BIT_6 = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Firmware is not multi-queue capable.\0A\00", align 1
@ql2xmultique_tag = common dso_local global i64 0, align 8
@BIT_7 = common dso_local global i32 0, align 4
@QLA_DEFAULT_QUE_QOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to create request queue.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"qla2xxx_wq\00", align 1
@BIT_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to create response queue.\0A\00", align 1
@ql_dbg_multiq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"CPU affinity mode enalbed, no. of response queues:%d no. of request queues:%d.\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla25xx_setup_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla25xx_setup_mode(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 1
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %8, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BIT_6, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ql_log_warn, align 4
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %21 = call i32 @ql_log(i32 %19, %struct.scsi_qla_host* %20, i32 216, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %115

22:                                               ; preds = %1
  %23 = load i64, i64* @ql2xmultique_tag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %22
  %26 = load i32, i32* @BIT_7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @QLA_DEFAULT_QUE_QOS, align 4
  %32 = call i32 @qla25xx_create_req_que(%struct.qla_hw_data* %29, i32 %30, i32 0, i32 0, i32 -1, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ql_log_warn, align 4
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = call i32 @ql_log(i32 %36, %struct.scsi_qla_host* %37, i32 224, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %115

39:                                               ; preds = %25
  %40 = call i32* @create_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @BIT_1, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %73, %39
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @qla25xx_create_rsp_que(%struct.qla_hw_data* %62, i32 %63, i32 0, i32 0, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @ql_log_warn, align 4
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %71 = call i32 @ql_log(i32 %69, %struct.scsi_qla_host* %70, i32 232, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %99

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* @ql_dbg_multiq, align 4
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ql_dbg(i32 %80, %struct.scsi_qla_host* %81, i32 49159, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i32, i32* @ql_dbg_init, align 4
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ql_dbg(i32 %89, %struct.scsi_qla_host* %90, i32 233, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %76, %22
  store i32 0, i32* %2, align 4
  br label %130

99:                                               ; preds = %68
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %101 = call i32 @qla25xx_delete_queues(%struct.scsi_qla_host* %100)
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @destroy_workqueue(i32* %104)
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 6
  store i32* null, i32** %107, align 8
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %99, %35, %18
  %116 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %117 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  %118 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %119 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @kfree(i32* %120)
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @kfree(i32* %124)
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 2
  store i32 1, i32* %129, align 8
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %115, %98
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*) #1

declare dso_local i32 @qla25xx_create_req_que(%struct.qla_hw_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @create_workqueue(i8*) #1

declare dso_local i32 @qla25xx_create_rsp_que(%struct.qla_hw_data*, i32, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32) #1

declare dso_local i32 @qla25xx_delete_queues(%struct.scsi_qla_host*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
