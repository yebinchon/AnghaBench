; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_sp_compl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_sp_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SP reference-count to ZERO -- sp=%p cmd=%p.\0A\00", align 1
@ql2xextended_error_logging = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_sp_compl(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.qla_hw_data*
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_7__* %14)
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load i32, i32* @ql_dbg_io, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_7__* %31)
  %33 = call i32 @ql_dbg(i32 %24, i32 %29, i32 12309, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %30, %struct.scsi_cmnd* %32)
  %34 = load i32, i32* @ql2xextended_error_logging, align 4
  %35 = load i32, i32* @ql_dbg_io, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %38, %23
  br label %56

41:                                               ; preds = %3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @atomic_dec_and_test(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %56

47:                                               ; preds = %41
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = call i32 @qla2x00_sp_free_dma(%struct.qla_hw_data* %48, %struct.TYPE_7__* %49)
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 1
  %53 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %52, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %55 = call i32 %53(%struct.scsi_cmnd* %54)
  br label %56

56:                                               ; preds = %47, %46, %40
  ret void
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_7__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ql_dbg(i32, i32, i32, i8*, %struct.TYPE_7__*, %struct.scsi_cmnd*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @qla2x00_sp_free_dma(%struct.qla_hw_data*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
