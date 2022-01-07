; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_match_scope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_match_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, i32 }
%struct.scsi_lun = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_tskim_s*, i32)* @bfa_tskim_match_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_tskim_match_scope(%struct.bfa_tskim_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_lun, align 4
  %5 = alloca %struct.bfa_tskim_s*, align 8
  %6 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %4, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %5, align 8
  %7 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %5, align 8
  %8 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 128, label %10
    i32 132, label %12
    i32 130, label %12
    i32 129, label %12
    i32 131, label %12
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @BFA_TRUE, align 4
  store i32 %11, i32* %3, align 4
  br label %23

12:                                               ; preds = %2, %2, %2, %2
  %13 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %13, i32 0, i32 1
  %15 = call i32 @memcmp(i32* %14, %struct.scsi_lun* %4, i32 4)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = call i32 @WARN_ON(i32 1)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* @BFA_FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %12, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @memcmp(i32*, %struct.scsi_lun*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
