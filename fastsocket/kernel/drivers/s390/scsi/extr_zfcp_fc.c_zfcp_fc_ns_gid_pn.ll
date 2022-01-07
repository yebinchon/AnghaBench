; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_gid_pn_data = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_port*)* @zfcp_fc_ns_gid_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_ns_gid_pn(%struct.zfcp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_gid_pn_data*, align 8
  %6 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  %7 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %8 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %7, i32 0, i32 0
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %8, align 8
  store %struct.zfcp_adapter* %9, %struct.zfcp_adapter** %6, align 8
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.zfcp_gid_pn_data* @mempool_alloc(i32 %13, i32 %14)
  store %struct.zfcp_gid_pn_data* %15, %struct.zfcp_gid_pn_data** %5, align 8
  %16 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %5, align 8
  %17 = icmp ne %struct.zfcp_gid_pn_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %5, align 8
  %23 = call i32 @memset(%struct.zfcp_gid_pn_data* %22, i32 0, i32 4)
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @zfcp_fc_wka_port_get(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %41

32:                                               ; preds = %21
  %33 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %34 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %5, align 8
  %35 = call i32 @zfcp_fc_ns_gid_pn_request(%struct.zfcp_port* %33, %struct.zfcp_gid_pn_data* %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @zfcp_fc_wka_port_put(i32* %39)
  br label %41

41:                                               ; preds = %32, %31
  %42 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %5, align 8
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mempool_free(%struct.zfcp_gid_pn_data* %42, i32 %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.zfcp_gid_pn_data* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.zfcp_gid_pn_data*, i32, i32) #1

declare dso_local i32 @zfcp_fc_wka_port_get(i32*) #1

declare dso_local i32 @zfcp_fc_ns_gid_pn_request(%struct.zfcp_port*, %struct.zfcp_gid_pn_data*) #1

declare dso_local i32 @zfcp_fc_wka_port_put(i32*) #1

declare dso_local i32 @mempool_free(%struct.zfcp_gid_pn_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
