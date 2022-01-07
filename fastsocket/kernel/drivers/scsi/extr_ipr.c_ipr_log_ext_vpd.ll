; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_log_ext_vpd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_log_ext_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ext_vpd = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"    WWN: %08X%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ext_vpd*)* @ipr_log_ext_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_log_ext_vpd(%struct.ipr_ext_vpd* %0) #0 {
  %2 = alloca %struct.ipr_ext_vpd*, align 8
  store %struct.ipr_ext_vpd* %0, %struct.ipr_ext_vpd** %2, align 8
  %3 = load %struct.ipr_ext_vpd*, %struct.ipr_ext_vpd** %2, align 8
  %4 = getelementptr inbounds %struct.ipr_ext_vpd, %struct.ipr_ext_vpd* %3, i32 0, i32 1
  %5 = call i32 @ipr_log_vpd(i32* %4)
  %6 = load %struct.ipr_ext_vpd*, %struct.ipr_ext_vpd** %2, align 8
  %7 = getelementptr inbounds %struct.ipr_ext_vpd, %struct.ipr_ext_vpd* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @be32_to_cpu(i32 %10)
  %12 = load %struct.ipr_ext_vpd*, %struct.ipr_ext_vpd** %2, align 8
  %13 = getelementptr inbounds %struct.ipr_ext_vpd, %struct.ipr_ext_vpd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  %18 = call i32 @ipr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %17)
  ret void
}

declare dso_local i32 @ipr_log_vpd(i32*) #1

declare dso_local i32 @ipr_err(i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
