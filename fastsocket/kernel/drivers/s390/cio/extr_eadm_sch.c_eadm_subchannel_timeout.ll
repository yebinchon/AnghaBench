; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_eadm_sch.c_eadm_subchannel_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"clear failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @eadm_subchannel_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eadm_subchannel_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.subchannel*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.subchannel*
  store %struct.subchannel* %5, %struct.subchannel** %3, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @spin_lock_irq(i32 %8)
  %10 = call i32 @EADM_LOG(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %12 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %11, i32 0, i32 1
  %13 = call i32 @EADM_LOG_HEX(i32 1, i32* %12, i32 4)
  %14 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %15 = call i64 @eadm_subchannel_clear(%struct.subchannel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @EADM_LOG(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spin_unlock_irq(i32 %22)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @EADM_LOG(i32, i8*) #1

declare dso_local i32 @EADM_LOG_HEX(i32, i32*, i32) #1

declare dso_local i64 @eadm_subchannel_clear(%struct.subchannel*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
