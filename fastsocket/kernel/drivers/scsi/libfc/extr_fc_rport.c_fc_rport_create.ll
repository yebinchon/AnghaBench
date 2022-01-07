; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_rport.c_fc_rport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fc_lport*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.fc_lport = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, {}* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@RPORT_ST_INIT = common dso_local global i32 0, align 4
@RPORT_EV_NONE = common dso_local global i32 0, align 4
@FC_RP_FLAGS_REC_SUPPORTED = common dso_local global i32 0, align 4
@FC_MIN_MAX_PAYLOAD = common dso_local global i32 0, align 4
@fc_rport_timeout = common dso_local global i32 0, align 4
@fc_rport_work = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_rport_priv* (%struct.fc_lport*, i32)* @fc_rport_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_rport_priv* @fc_rport_create(%struct.fc_lport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_rport_priv*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_rport_priv*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = bitcast {}** %9 to %struct.fc_rport_priv* (%struct.fc_lport*, i32)**
  %11 = load %struct.fc_rport_priv* (%struct.fc_lport*, i32)*, %struct.fc_rport_priv* (%struct.fc_lport*, i32)** %10, align 8
  %12 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.fc_rport_priv* %11(%struct.fc_lport* %12, i32 %13)
  store %struct.fc_rport_priv* %14, %struct.fc_rport_priv** %6, align 8
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %16 = icmp ne %struct.fc_rport_priv* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  store %struct.fc_rport_priv* %18, %struct.fc_rport_priv** %3, align 8
  br label %101

19:                                               ; preds = %2
  %20 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %21 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = add i64 72, %22
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.fc_rport_priv* @kzalloc(i64 %23, i32 %24)
  store %struct.fc_rport_priv* %25, %struct.fc_rport_priv** %6, align 8
  %26 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %27 = icmp ne %struct.fc_rport_priv* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store %struct.fc_rport_priv* null, %struct.fc_rport_priv** %3, align 8
  br label %101

29:                                               ; preds = %19
  %30 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %31 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %34 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 -1, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %38 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  %41 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %42 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %45 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %44, i32 0, i32 12
  %46 = call i32 @kref_init(i32* %45)
  %47 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %48 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %47, i32 0, i32 11
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %51 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %52 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %51, i32 0, i32 10
  store %struct.fc_lport* %50, %struct.fc_lport** %52, align 8
  %53 = load i32, i32* @RPORT_ST_INIT, align 4
  %54 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %55 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @RPORT_EV_NONE, align 4
  %57 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %58 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @FC_RP_FLAGS_REC_SUPPORTED, align 4
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %61 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %63 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %66 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %68 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %71 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @FC_MIN_MAX_PAYLOAD, align 4
  %73 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %74 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %76 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %75, i32 0, i32 3
  %77 = load i32, i32* @fc_rport_timeout, align 4
  %78 = call i32 @INIT_DELAYED_WORK(i32* %76, i32 %77)
  %79 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %80 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %79, i32 0, i32 2
  %81 = load i32, i32* @fc_rport_work, align 4
  %82 = call i32 @INIT_WORK(i32* %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %29
  %87 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %88 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %92 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %94 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %93, i32 0, i32 0
  %95 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %96 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @list_add_rcu(i32* %94, i32* %97)
  br label %99

99:                                               ; preds = %86, %29
  %100 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  store %struct.fc_rport_priv* %100, %struct.fc_rport_priv** %3, align 8
  br label %101

101:                                              ; preds = %99, %28, %17
  %102 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %3, align 8
  ret %struct.fc_rport_priv* %102
}

declare dso_local %struct.fc_rport_priv* @kzalloc(i64, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
