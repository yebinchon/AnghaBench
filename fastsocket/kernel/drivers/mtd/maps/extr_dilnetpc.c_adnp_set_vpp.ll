; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_dilnetpc.c_adnp_set_vpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_dilnetpc.c_adnp_set_vpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }

@dnpc_spin = common dso_local global i32 0, align 4
@vpp_counter = common dso_local global i32 0, align 4
@CSC_RBWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32)* @adnp_set_vpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adnp_set_vpp(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @spin_lock_irq(i32* @dnpc_spin)
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i32, i32* @vpp_counter, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @vpp_counter, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @CSC_RBWR, align 4
  %14 = load i32, i32* @CSC_RBWR, align 4
  %15 = call i32 @getcsc(i32 %14)
  %16 = and i32 %15, -9
  %17 = call i32 @setcsc(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %8
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* @vpp_counter, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @vpp_counter, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @CSC_RBWR, align 4
  %25 = load i32, i32* @CSC_RBWR, align 4
  %26 = call i32 @getcsc(i32 %25)
  %27 = or i32 %26, 8
  %28 = call i32 @setcsc(i32 %24, i32 %27)
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @vpp_counter, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  br label %35

35:                                               ; preds = %34, %18
  %36 = call i32 @spin_unlock_irq(i32* @dnpc_spin)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @setcsc(i32, i32) #1

declare dso_local i32 @getcsc(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
