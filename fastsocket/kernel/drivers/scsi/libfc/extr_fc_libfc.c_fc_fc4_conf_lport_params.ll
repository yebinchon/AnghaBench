; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_fc4_conf_lport_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_libfc.c_fc_fc4_conf_lport_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc4_prov = type { i64 }
%struct.fc_lport = type { i32 }

@FC_FC4_PROV_SIZE = common dso_local global i32 0, align 4
@fc_passive_prov = common dso_local global %struct.fc4_prov** null, align 8
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@FCP_SPPF_TARG_FCN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_fc4_conf_lport_params(%struct.fc_lport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc4_prov*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FC_FC4_PROV_SIZE, align 4
  %8 = icmp uge i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %12 = icmp ne %struct.fc_lport* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.fc4_prov**, %struct.fc4_prov*** @fc_passive_prov, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.fc4_prov*, %struct.fc4_prov** %16, i64 %18
  %20 = load %struct.fc4_prov*, %struct.fc4_prov** %19, align 8
  store %struct.fc4_prov* %20, %struct.fc4_prov** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FC_TYPE_FCP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.fc4_prov*, %struct.fc4_prov** %5, align 8
  %26 = icmp ne %struct.fc4_prov* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.fc4_prov*, %struct.fc4_prov** %5, align 8
  %29 = getelementptr inbounds %struct.fc4_prov, %struct.fc4_prov* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @FCP_SPPF_TARG_FCN, align 4
  %34 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %35 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %27, %24
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
