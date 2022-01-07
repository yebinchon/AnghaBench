; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_4__*, %struct.fc_fcp_internal*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.fc_fcp_internal = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@fc_fcp_cmd_send = common dso_local global i64 0, align 8
@fc_fcp_cleanup = common dso_local global i64 0, align 8
@fc_fcp_abort_io = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scsi_pkt_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_fcp_init(%struct.fc_lport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_fcp_internal*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @fc_fcp_cmd_send, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i64 %12, i64* %15, align 8
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @fc_fcp_cleanup, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @fc_fcp_abort_io, align 8
  %35 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.fc_fcp_internal* @kzalloc(i32 16, i32 %39)
  store %struct.fc_fcp_internal* %40, %struct.fc_fcp_internal** %5, align 8
  %41 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %42 = icmp ne %struct.fc_fcp_internal* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %38
  %47 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %48 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %49 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %48, i32 0, i32 1
  store %struct.fc_fcp_internal* %47, %struct.fc_fcp_internal** %49, align 8
  %50 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %51 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %56 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %58 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %57, i32 0, i32 2
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %61 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %60, i32 0, i32 1
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load i32, i32* @scsi_pkt_cachep, align 4
  %64 = call i32 @mempool_create_slab_pool(i32 2, i32 %63)
  %65 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %66 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %68 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %46
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %79

75:                                               ; preds = %71
  %76 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %5, align 8
  %77 = call i32 @kfree(%struct.fc_fcp_internal* %76)
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %74, %43
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.fc_fcp_internal* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mempool_create_slab_pool(i32, i32) #1

declare dso_local i32 @kfree(%struct.fc_fcp_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
