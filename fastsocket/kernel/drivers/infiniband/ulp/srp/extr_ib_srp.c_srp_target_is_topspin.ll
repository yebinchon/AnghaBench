; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_target_is_topspin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_target_is_topspin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i32 }

@srp_target_is_topspin.topspin_oui = internal constant [3 x i32] [i32 0, i32 5, i32 173], align 4
@srp_target_is_topspin.cisco_oui = internal constant [3 x i32] [i32 0, i32 27, i32 13], align 4
@topspin_workarounds = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*)* @srp_target_is_topspin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_target_is_topspin(%struct.srp_target_port* %0) #0 {
  %2 = alloca %struct.srp_target_port*, align 8
  store %struct.srp_target_port* %0, %struct.srp_target_port** %2, align 8
  %3 = load i64, i64* @topspin_workarounds, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %7 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %6, i32 0, i32 0
  %8 = call i32 @memcmp(i32* %7, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @srp_target_is_topspin.topspin_oui, i64 0, i64 0), i32 12)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %12 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %11, i32 0, i32 0
  %13 = call i32 @memcmp(i32* %12, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @srp_target_is_topspin.cisco_oui, i64 0, i64 0), i32 12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i1 [ true, %5 ], [ %15, %10 ]
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i1 [ false, %1 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
