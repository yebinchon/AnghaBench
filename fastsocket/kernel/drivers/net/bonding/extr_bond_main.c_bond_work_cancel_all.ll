; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_work_cancel_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_main.c_bond_work_cancel_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@BOND_MODE_ALB = common dso_local global i64 0, align 8
@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*)* @bond_work_cancel_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_work_cancel_all(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  %3 = load %struct.bonding*, %struct.bonding** %2, align 8
  %4 = getelementptr inbounds %struct.bonding, %struct.bonding* %3, i32 0, i32 7
  %5 = call i32 @write_lock_bh(i32* %4)
  %6 = load %struct.bonding*, %struct.bonding** %2, align 8
  %7 = getelementptr inbounds %struct.bonding, %struct.bonding* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.bonding*, %struct.bonding** %2, align 8
  %9 = getelementptr inbounds %struct.bonding, %struct.bonding* %8, i32 0, i32 7
  %10 = call i32 @write_unlock_bh(i32* %9)
  %11 = load %struct.bonding*, %struct.bonding** %2, align 8
  %12 = getelementptr inbounds %struct.bonding, %struct.bonding* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.bonding*, %struct.bonding** %2, align 8
  %18 = getelementptr inbounds %struct.bonding, %struct.bonding* %17, i32 0, i32 6
  %19 = call i64 @delayed_work_pending(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.bonding*, %struct.bonding** %2, align 8
  %23 = getelementptr inbounds %struct.bonding, %struct.bonding* %22, i32 0, i32 6
  %24 = call i32 @cancel_delayed_work(i32* %23)
  br label %25

25:                                               ; preds = %21, %16, %1
  %26 = load %struct.bonding*, %struct.bonding** %2, align 8
  %27 = getelementptr inbounds %struct.bonding, %struct.bonding* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.bonding*, %struct.bonding** %2, align 8
  %33 = getelementptr inbounds %struct.bonding, %struct.bonding* %32, i32 0, i32 5
  %34 = call i64 @delayed_work_pending(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.bonding*, %struct.bonding** %2, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 5
  %39 = call i32 @cancel_delayed_work(i32* %38)
  br label %40

40:                                               ; preds = %36, %31, %25
  %41 = load %struct.bonding*, %struct.bonding** %2, align 8
  %42 = getelementptr inbounds %struct.bonding, %struct.bonding* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BOND_MODE_ALB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.bonding*, %struct.bonding** %2, align 8
  %49 = getelementptr inbounds %struct.bonding, %struct.bonding* %48, i32 0, i32 4
  %50 = call i64 @delayed_work_pending(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.bonding*, %struct.bonding** %2, align 8
  %54 = getelementptr inbounds %struct.bonding, %struct.bonding* %53, i32 0, i32 4
  %55 = call i32 @cancel_delayed_work(i32* %54)
  br label %56

56:                                               ; preds = %52, %47, %40
  %57 = load %struct.bonding*, %struct.bonding** %2, align 8
  %58 = getelementptr inbounds %struct.bonding, %struct.bonding* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BOND_MODE_8023AD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.bonding*, %struct.bonding** %2, align 8
  %65 = getelementptr inbounds %struct.bonding, %struct.bonding* %64, i32 0, i32 2
  %66 = call i64 @delayed_work_pending(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.bonding*, %struct.bonding** %2, align 8
  %70 = getelementptr inbounds %struct.bonding, %struct.bonding* %69, i32 0, i32 2
  %71 = call i32 @cancel_delayed_work(i32* %70)
  br label %72

72:                                               ; preds = %68, %63, %56
  %73 = load %struct.bonding*, %struct.bonding** %2, align 8
  %74 = getelementptr inbounds %struct.bonding, %struct.bonding* %73, i32 0, i32 1
  %75 = call i64 @delayed_work_pending(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.bonding*, %struct.bonding** %2, align 8
  %79 = getelementptr inbounds %struct.bonding, %struct.bonding* %78, i32 0, i32 1
  %80 = call i32 @cancel_delayed_work(i32* %79)
  br label %81

81:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i64 @delayed_work_pending(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
