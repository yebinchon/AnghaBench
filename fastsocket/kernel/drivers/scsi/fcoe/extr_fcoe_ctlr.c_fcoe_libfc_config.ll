; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_libfc_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_libfc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fcoe_ctlr = type { i32 }
%struct.libfc_function_template = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcoe_libfc_config(%struct.fc_lport* %0, %struct.fcoe_ctlr* %1, %struct.libfc_function_template* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.fcoe_ctlr*, align 8
  %8 = alloca %struct.libfc_function_template*, align 8
  %9 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %6, align 8
  store %struct.fcoe_ctlr* %1, %struct.fcoe_ctlr** %7, align 8
  store %struct.libfc_function_template* %2, %struct.libfc_function_template** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %11 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %10, i32 0, i32 0
  %12 = load %struct.libfc_function_template*, %struct.libfc_function_template** %8, align 8
  %13 = call i32 @memcpy(i32* %11, %struct.libfc_function_template* %12, i32 4)
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %18 = call i64 @fc_fcp_init(%struct.fc_lport* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %40

23:                                               ; preds = %16, %4
  %24 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %25 = call i32 @fc_exch_init(%struct.fc_lport* %24)
  %26 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %27 = call i32 @fc_elsct_init(%struct.fc_lport* %26)
  %28 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %29 = call i32 @fc_lport_init(%struct.fc_lport* %28)
  %30 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %31 = call i32 @fc_rport_init(%struct.fc_lport* %30)
  %32 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %33 = call i32 @fc_disc_init(%struct.fc_lport* %32)
  %34 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %35 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %36 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %7, align 8
  %37 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fcoe_ctlr_mode_set(%struct.fc_lport* %34, %struct.fcoe_ctlr* %35, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %23, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @memcpy(i32*, %struct.libfc_function_template*, i32) #1

declare dso_local i64 @fc_fcp_init(%struct.fc_lport*) #1

declare dso_local i32 @fc_exch_init(%struct.fc_lport*) #1

declare dso_local i32 @fc_elsct_init(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_init(%struct.fc_lport*) #1

declare dso_local i32 @fc_rport_init(%struct.fc_lport*) #1

declare dso_local i32 @fc_disc_init(%struct.fc_lport*) #1

declare dso_local i32 @fcoe_ctlr_mode_set(%struct.fc_lport*, %struct.fcoe_ctlr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
