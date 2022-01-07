; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm3386_reset() #0 {
  %1 = alloca [3 x [6 x i32]], align 16
  %2 = alloca i32, align 4
  %3 = call i32 (...) @pm3386_secondary_present()
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %1, i64 0, i64 0
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %6 = call i32 @pm3386_get_mac(i32 0, i32* %5)
  %7 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %1, i64 0, i64 1
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %9 = call i32 @pm3386_get_mac(i32 1, i32* %8)
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %1, i64 0, i64 2
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %15 = call i32 @pm3386_get_mac(i32 2, i32* %14)
  br label %16

16:                                               ; preds = %12, %0
  %17 = call i32 @pm3386_reg_write(i32 0, i32 2, i32 96)
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @pm3386_reg_write(i32 1, i32 2, i32 96)
  br label %22

22:                                               ; preds = %20, %16
  %23 = call i32 @mdelay(i32 1)
  %24 = call i32 @pm3386_reg_write(i32 0, i32 2, i32 98)
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pm3386_reg_write(i32 1, i32 2, i32 98)
  br label %29

29:                                               ; preds = %27, %22
  %30 = call i32 @mdelay(i32 10)
  %31 = call i32 @pm3386_reg_write(i32 0, i32 2, i32 99)
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @pm3386_reg_write(i32 1, i32 2, i32 99)
  br label %36

36:                                               ; preds = %34, %29
  %37 = call i32 @mdelay(i32 10)
  %38 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %1, i64 0, i64 0
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %38, i64 0, i64 0
  %40 = call i32 @pm3386_set_mac(i32 0, i32* %39)
  %41 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %1, i64 0, i64 1
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %41, i64 0, i64 0
  %43 = call i32 @pm3386_set_mac(i32 1, i32* %42)
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %1, i64 0, i64 2
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %47, i64 0, i64 0
  %49 = call i32 @pm3386_set_mac(i32 2, i32* %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = call i32 @pm3386_set_carrier(i32 0, i32 0)
  %52 = call i32 @pm3386_set_carrier(i32 1, i32 0)
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @pm3386_set_carrier(i32 2, i32 0)
  br label %57

57:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @pm3386_secondary_present(...) #1

declare dso_local i32 @pm3386_get_mac(i32, i32*) #1

declare dso_local i32 @pm3386_reg_write(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pm3386_set_mac(i32, i32*) #1

declare dso_local i32 @pm3386_set_carrier(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
