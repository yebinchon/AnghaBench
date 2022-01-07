; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_host = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.srp_target_port = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.srp_rport_identifiers = type { i32, i64 }
%struct.srp_rport = type { %struct.srp_target_port* }

@.str = private unnamed_addr constant [16 x i8] c"SRP.T10:%016llX\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SRP_RPORT_ROLE_TARGET = common dso_local global i32 0, align 4
@SRP_TARGET_LIVE = common dso_local global i32 0, align 4
@SCAN_WILD_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_host*, %struct.srp_target_port*)* @srp_add_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_add_target(%struct.srp_host* %0, %struct.srp_target_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.srp_host*, align 8
  %5 = alloca %struct.srp_target_port*, align 8
  %6 = alloca %struct.srp_rport_identifiers, align 8
  %7 = alloca %struct.srp_rport*, align 8
  store %struct.srp_host* %0, %struct.srp_host** %4, align 8
  store %struct.srp_target_port* %1, %struct.srp_target_port** %5, align 8
  %8 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %9 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %12 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @be64_to_cpu(i32 %13)
  %15 = call i32 @sprintf(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %17 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.srp_host*, %struct.srp_host** %4, align 8
  %20 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @scsi_add_host(%struct.TYPE_8__* %18, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %86

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %35 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %34, i32 0, i32 5
  %36 = call i32 @memcpy(i64 %33, i32* %35, i32 8)
  %37 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %6, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 8
  %40 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %41 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %40, i32 0, i32 4
  %42 = call i32 @memcpy(i64 %39, i32* %41, i32 8)
  %43 = load i32, i32* @SRP_RPORT_ROLE_TARGET, align 4
  %44 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %46 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call %struct.srp_rport* @srp_rport_add(%struct.TYPE_8__* %47, %struct.srp_rport_identifiers* %6)
  store %struct.srp_rport* %48, %struct.srp_rport** %7, align 8
  %49 = load %struct.srp_rport*, %struct.srp_rport** %7, align 8
  %50 = call i64 @IS_ERR(%struct.srp_rport* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %31
  %53 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %54 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32 @scsi_remove_host(%struct.TYPE_8__* %55)
  %57 = load %struct.srp_rport*, %struct.srp_rport** %7, align 8
  %58 = call i32 @PTR_ERR(%struct.srp_rport* %57)
  store i32 %58, i32* %3, align 4
  br label %86

59:                                               ; preds = %31
  %60 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %61 = load %struct.srp_rport*, %struct.srp_rport** %7, align 8
  %62 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %61, i32 0, i32 0
  store %struct.srp_target_port* %60, %struct.srp_target_port** %62, align 8
  %63 = load %struct.srp_host*, %struct.srp_host** %4, align 8
  %64 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %67 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %66, i32 0, i32 3
  %68 = load %struct.srp_host*, %struct.srp_host** %4, align 8
  %69 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %68, i32 0, i32 1
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  %71 = load %struct.srp_host*, %struct.srp_host** %4, align 8
  %72 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* @SRP_TARGET_LIVE, align 4
  %75 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %76 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %78 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %82 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SCAN_WILD_CARD, align 4
  %85 = call i32 @scsi_scan_target(i32* %80, i32 0, i32 %83, i32 %84, i32 0)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %59, %52, %28
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @sprintf(i32, i8*, i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @scsi_add_host(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local %struct.srp_rport* @srp_rport_add(%struct.TYPE_8__*, %struct.srp_rport_identifiers*) #1

declare dso_local i64 @IS_ERR(%struct.srp_rport*) #1

declare dso_local i32 @scsi_remove_host(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.srp_rport*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scsi_scan_target(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
