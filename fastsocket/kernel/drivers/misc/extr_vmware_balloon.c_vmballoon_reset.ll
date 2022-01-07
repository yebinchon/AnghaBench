; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_vmware_balloon.c_vmballoon_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_vmware_balloon.c_vmballoon_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to send guest ID to the host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmballoon*)* @vmballoon_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmballoon_reset(%struct.vmballoon* %0) #0 {
  %2 = alloca %struct.vmballoon*, align 8
  store %struct.vmballoon* %0, %struct.vmballoon** %2, align 8
  %3 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %4 = call i32 @vmballoon_pop(%struct.vmballoon* %3)
  %5 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %6 = call i64 @vmballoon_send_start(%struct.vmballoon* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %10 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %12 = call i32 @vmballoon_send_guest_id(%struct.vmballoon* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %8
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @vmballoon_pop(%struct.vmballoon*) #1

declare dso_local i64 @vmballoon_send_start(%struct.vmballoon*) #1

declare dso_local i32 @vmballoon_send_guest_id(%struct.vmballoon*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
