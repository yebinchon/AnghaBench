; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }
%struct.fcoe_ctlr = type { i32 }

@LPORT_ST_RESET = common dso_local global i64 0, align 8
@LPORT_ST_DISABLED = common dso_local global i64 0, align 8
@FIP_MODE_VN2VN = common dso_local global i32 0, align 4
@fcoe_ctlr_disc_recv = common dso_local global i32* null, align 8
@fcoe_ctlr_disc_start = common dso_local global i32* null, align 8
@fcoe_ctlr_disc_stop = common dso_local global i32* null, align 8
@fcoe_ctlr_disc_stop_final = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_ctlr_mode_set(%struct.fc_lport* %0, %struct.fcoe_ctlr* %1, i32 %2) #0 {
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fcoe_ctlr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fcoe_ctlr* %1, %struct.fcoe_ctlr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %9 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPORT_ST_RESET, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %15 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LPORT_ST_DISABLED, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ false, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FIP_MODE_VN2VN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %28 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %27, i32 0, i32 1
  store i32 4, i32* %28, align 8
  %29 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %30 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load i32*, i32** @fcoe_ctlr_disc_recv, align 8
  %32 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32* %31, i32** %34, align 8
  %35 = load i32*, i32** @fcoe_ctlr_disc_start, align 8
  %36 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %37 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32* %35, i32** %38, align 8
  %39 = load i32*, i32** @fcoe_ctlr_disc_stop, align 8
  %40 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %41 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32* %39, i32** %42, align 8
  %43 = load i32*, i32** @fcoe_ctlr_disc_stop_final, align 8
  %44 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %45 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %5, align 8
  %48 = bitcast %struct.fcoe_ctlr* %47 to i8*
  store i8* %48, i8** %7, align 8
  br label %68

49:                                               ; preds = %19
  %50 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %51 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %53 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %55 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %58 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %61 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %64 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %67 = bitcast %struct.fc_lport* %66 to i8*
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %49, %26
  %69 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @fc_disc_config(%struct.fc_lport* %69, i8* %70)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fc_disc_config(%struct.fc_lport*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
