; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_qm_init_cid_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_qm_init_cid_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@QM_REG_CONNNUM_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_qm_init_cid_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_qm_init_cid_count(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = call i32 @BP_PORT(%struct.bnx2x* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @QM_INIT(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %26 [
    i32 129, label %15
    i32 128, label %15
    i32 130, label %25
  ]

15:                                               ; preds = %13, %13
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load i32, i32* @QM_REG_CONNNUM_0, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 %17, %19
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 16
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @REG_WR(%struct.bnx2x* %16, i32 %20, i32 %23)
  br label %26

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %13, %25, %15
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @QM_INIT(i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
