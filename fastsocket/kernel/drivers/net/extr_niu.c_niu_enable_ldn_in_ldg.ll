; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_enable_ldn_in_ldg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_enable_ldn_in_ldg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.niu_parent* }
%struct.niu_parent = type { i64* }
%struct.niu_ldg = type { i64 }

@LDN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.niu_ldg*, i32)* @niu_enable_ldn_in_ldg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_enable_ldn_in_ldg(%struct.niu* %0, %struct.niu_ldg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.niu*, align 8
  %6 = alloca %struct.niu_ldg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.niu_parent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %5, align 8
  store %struct.niu_ldg* %1, %struct.niu_ldg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.niu*, %struct.niu** %5, align 8
  %12 = getelementptr inbounds %struct.niu, %struct.niu* %11, i32 0, i32 0
  %13 = load %struct.niu_parent*, %struct.niu_parent** %12, align 8
  store %struct.niu_parent* %13, %struct.niu_parent** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @LDN_MAX, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.niu_parent*, %struct.niu_parent** %8, align 8
  %20 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.niu_ldg*, %struct.niu_ldg** %6, align 8
  %27 = getelementptr inbounds %struct.niu_ldg, %struct.niu_ldg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %41

31:                                               ; preds = %18
  %32 = load %struct.niu*, %struct.niu** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @niu_ldn_irq_enable(%struct.niu* %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %14

44:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @niu_ldn_irq_enable(%struct.niu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
