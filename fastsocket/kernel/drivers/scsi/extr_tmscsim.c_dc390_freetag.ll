; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_freetag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_freetag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_dcb = type { i32 }
%struct.dc390_srb = type { i32 }

@SCSI_NO_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_dcb*, %struct.dc390_srb*)* @dc390_freetag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_freetag(%struct.dc390_dcb* %0, %struct.dc390_srb* %1) #0 {
  %3 = alloca %struct.dc390_dcb*, align 8
  %4 = alloca %struct.dc390_srb*, align 8
  store %struct.dc390_dcb* %0, %struct.dc390_dcb** %3, align 8
  store %struct.dc390_srb* %1, %struct.dc390_srb** %4, align 8
  %5 = load %struct.dc390_srb*, %struct.dc390_srb** %4, align 8
  %6 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SCSI_NO_TAG, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.dc390_srb*, %struct.dc390_srb** %4, align 8
  %12 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.dc390_dcb*, %struct.dc390_dcb** %3, align 8
  %17 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @SCSI_NO_TAG, align 4
  %21 = load %struct.dc390_srb*, %struct.dc390_srb** %4, align 8
  %22 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
