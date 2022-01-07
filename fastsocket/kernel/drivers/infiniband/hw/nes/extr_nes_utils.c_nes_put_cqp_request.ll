; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_put_cqp_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_put_cqp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32 }
%struct.nes_cqp_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_put_cqp_request(%struct.nes_device* %0, %struct.nes_cqp_request* %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_cqp_request*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store %struct.nes_cqp_request* %1, %struct.nes_cqp_request** %4, align 8
  %5 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %6 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %5, i32 0, i32 0
  %7 = call i64 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %11 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %12 = call i32 @nes_free_cqp_request(%struct.nes_device* %10, %struct.nes_cqp_request* %11)
  br label %13

13:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @nes_free_cqp_request(%struct.nes_device*, %struct.nes_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
